#!/usr/bin/python3
from collections import deque
import random
import rospy
# from bd1_environment_interface.srv import SetAction, SetVectAction, GetStateAndReward, GetVectStateAndReward
from std_msgs.msg import Float64, Bool
import numpy as np
from gazebo_msgs.msg import ModelState

from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint

from control_msgs.msg import FollowJointTrajectoryAction, FollowJointTrajectoryGoal, JointTrajectoryControllerState
from std_srvs.srv import Empty
from gazebo_msgs.srv import SetModelState, GetModelState, SpawnModel, DeleteModel, SetModelConfiguration

from gazebo_msgs.msg import ModelStates
import torch
import matplotlib.pyplot as plt
import seaborn as sns

class QualityNN(torch.nn.Module):
    def __init__(self, observation_space, action_space):
        super(QualityNN, self).__init__()
        self.observation_space = observation_space
        self.action_space = action_space
        self.fc1 = torch.nn.Linear(observation_space, 512)
        self.fc2 = torch.nn.Linear(512, 1024)
        self.fc3 = torch.nn.Linear(1024, 512)
        self.fc4 = torch.nn.Linear(512, action_space)

        self.network_description = "input layer: {} neurons, hidden layer: 1024 neurons, output layer: {} neurons".format(observation_space, action_space)

    def forward(self, x):
        x = self.fc1(x)
        x = self.fc2(x)
        x = self.fc3(x)
        x = self.fc4(x)
        return x

class Memory(object):
    def __init__(self, max_size=100):
        self.memory = deque(maxlen=max_size)

    def push(self, element):
        self.memory.append(element)

    def get_batch(self, batch_size):
       if batch_size > len(self.memory):
            batch_size = len(self.memory)
       return random.sample(self.memory, batch_size)

    def __repr__(self):
        return f"Current elements in memory: {len(self.memory)}"

    def __len__(self):
        return len(self.memory)

class Agent(object):
        def __init__(self, environment):
            self.device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
            self.model = QualityNN(environment.observation_space, environment.action_space).to(self.device)
            self.optimizer = torch.optim.Adam(self.model.parameters(), lr=3e-3)
            self.env = environment
            self.decay = 0.99999
            self.randomness = 1.00
            self.min_randomness = 0.001

        def act(self, state):
            # move the state to a Torch Tensor

            #convert numpy array to torch tensor
            state = torch.tensor(state).float().to(self.device)

            # state = torch.from_numpy(state).to(self.device)

            # find the quality of both actions
            qualities = self.model(state).cpu()


            # sometimes take a random action
            if np.random.rand() <= self.randomness:
                action = self.env.random_action()
            else:
                # rospy.loginfo("qualities: {}".format(qualities))
                action = qualities.detach().numpy()

            # return that action
            return action  

        def run_inference(self, state):
            # move the state to a Torch Tensor
            state =  torch.tensor(state).float().to(self.device)

            # find the quality of both actions
            qualities = self.model(state).cpu()

            # return the action with the highest quality
            return  qualities.detach().numpy()

        def update(self, memory_batch):
            # unpack our batch and convert to tensors
            states, next_states, actions, rewards = self.unpack_batch(memory_batch)

            # compute what the output is (old expected qualities)
            # Q(S, A)
            old_targets = self.old_targets(states, actions)

            # compute what the output should be (new expected qualities)
            # reward + max_a Q(S', a)
            new_targets = self.new_targets(states, next_states, rewards, actions)

            # compute the difference between old and new estimates
            loss = torch.nn.functional.smooth_l1_loss(old_targets, new_targets)

            # apply difference to the neural network
            self.optimizer.zero_grad()
            loss.backward()
            self.optimizer.step()

            # for logging
            return loss.item()

        def old_targets(self, states, actions):
            # model[states][action]
            # rospy.loginfo("states: {}".format(states))
            # rospy.loginfo("next_states: {}".format(self.model(states)))


            return self.model(states)

        def new_targets(self, states, next_states, rewards, actions):
            # reward + max(model[next_state])
            return rewards + self.model(next_states)

        def unpack_batch(self, batch):
            states, next_states, actions, rewards = zip(*batch)

            states = torch.tensor(states).float().to(self.device)
            next_states = torch.tensor(next_states).float().to(self.device)

            # unsqueeze(1) makes 2d array. [1, 0, 1, ...] -> [[1], [0], [1], ...]
            # this is required because the first array is for the batch, and
            #   the inner arrays are for the elements
            # the states and next_states are already in this format so we don't
            #   need to do anything to them
            # .long() for the actions because we are using them as array indices
            actions = torch.tensor(actions).long().unsqueeze(1).to(self.device)
            rewards = torch.tensor(rewards).float().unsqueeze(1).to(self.device)

            return states, next_states, actions, rewards   

        def update_randomness(self):
            self.randomness *= self.decay
            self.randomness = max(self.randomness, self.min_randomness)

        def save(self, path):
            torch.save(self.model.state_dict(), path)

        def load(self, path):
            self.model.load_state_dict(torch.load(path))



class DummyAgent(object):
    def __init__(self,env):
        self.env = env
    def act(self,state):
        return self.env.random_action()


    def get_action(self, state):
        return self.env.get_state_and_reward(state)

    def step(self, state, action):
        return self.env.get_state_and_reward(state, action)

class DummyMemory(object):
    def __init__(self,max_size=100):
        pass
    def push(self,element):
        pass
    def get_batch(self,batch_size):
        pass



def main(env):
    # setup environment
    environment = env
    # setup agent
    # agent = Agent(env)
    # agent = DummyAgent(environment)
    # setup memory
    # memory = DummyMemory(max_size=1000)

    learning = []
    losses = []

    agent = Agent(environment)
    memory = Memory(max_size=1000)

    # setup logging
    # writer = SummaryWriter()

    # setup training loop
    logging_iteration = 10
    episodes = 10000
    batch_size = 32
    for episode in range(episodes):
        # reset environment
        state = environment.reset(rospy.get_rostime())

        # reset agent
        agent.update_randomness()

        # run episode
        done = False
        while not done:
            # environment.unpause_simulation()
            # rospy.loginfo("Unpaused")
            # get state

            
            action = agent.act(np.asarray(state, dtype=np.double))

            next_state, reward, done = environment.step(action, rospy.get_rostime())

            # rospy.loginfo("state: {}".format(state))
            # rospy.loginfo("next_state: {}".format(next_state))
            # rospy.loginfo("action: {}".format(action))
            # rospy.loginfo("reward: {}".format(reward))

            test_element =(np.asarray(state), np.asarray(next_state), np.asarray(action), reward)
            # rospy.loginfo("next_state: {}".format(test_element))
            memory.push(element =(np.asarray(state), np.asarray(next_state), np.asarray(action), reward))

            # pause phyiscs engine
            # environment.pause_simulation()
            # rospy.loginfo("Paused")

            # # update agent
            if len(memory) >= batch_size:
                loss = agent.update(memory.get_batch(batch_size))
                losses.append(loss)
                # writer.add_scalar("Loss", loss, episode)

        for _ in range(64):
            memory_batch = memory.get_batch(batch_size=64)
            loss = agent.update(memory_batch)
        losses.append(loss)
        agent.update_randomness()
            
            
        # print(f"Iteration: {episode}")


        learning.append(episode)
        if episode % logging_iteration == 0:
            print(f"Iteration: {episode}")
            print(f"  Moving-Average Steps: {np.mean(learning[-logging_iteration:]):.4f}")
            print(f"  Memory-Buffer Size: {len(memory.memory)}")
            print(f"  Agent Randomness: {agent.randomness:.3f}")
            print()
   
    x = np.arange(0, len(losses), logging_iteration)
    y = np.add.reduceat(losses, x) / logging_iteration

    plt.plot(x, y)
    plt.title("Loss During Training")
    plt.xlabel("Episodes")
    plt.ylabel("Loss")
    plt.savefig(f"loss/loss-min_z-{environment.minumum_z}-min-x-y-{environment.minumum_x_y_movement}-network-{agent.model.network_description}-decay{agent.decay}-{environment.reward_type}.png")
    plt.show()

    x = np.arange(0, len(learning), logging_iteration)
    y = np.add.reduceat(learning, x) / logging_iteration

    sns.lineplot(x=x, y=y)
    plt.title("BD1 Lifespan During Training")
    plt.xlabel("Episodes")
    plt.ylabel("Lifespan Steps")
    plt.savefig(f"lifespan/bd1_lifespan-min_z-{environment.minumum_z}-min-x-y-{environment.minumum_x_y_movement}-network-{agent.model.network_description}-decay{agent.decay}-{environment.reward_type}.png")
    plt.show()
    # close logging
    # writer.close()

    agent.save(f"bd1-min_z-{environment.minumum_z}-min-x-y-{environment.minumum_x_y_movement}-network-{agent.model.network_description}-decay{agent.decay}-reward-type-{environment.reward_type}.pth")

def infer_model(environment):
    agent = Agent(environment)
    agent.load(f"bd1-min_z-{environment.minumum_z}-min-x-y-{environment.minumum_x_y_movement}-network-{agent.model.network_description}-decay{agent.decay}-reward-type-{environment.reward_type}.pth")
    agent.model.eval()
    state = environment.reset(rospy.get_rostime())
    done = False
    while not done:
        action = agent.run_inference(np.asarray(state, dtype=np.double))
        next_state, reward, done = environment.step(action, rospy.get_rostime())
        state = next_state
        print(f"action: {action}")
        print(f"reward: {reward}")
        print(f"done: {done}")
        print(f"state: {state}")
        print(f"next_state: {next_state}")
        print()



class MyEnvironment(object):
    def __init__(self):

        self.action_space = 15
        self.observation_space = 22

        self.minumum_z = 0.30
        self.minumum_x_y_movement = 0.5

        self.minumum_x_y_movement_twist = 0.1

        self.from_last_reward_x = 0
        self.from_last_reward_y = 0

        self.reward_type = "distance" #"distance" or "twist"
        
        
        self.left_leg_pub = rospy.Publisher("/left_leg_servo_states_controller/command", JointTrajectory, queue_size = 10)     
        self.right_leg_pub = rospy.Publisher("/right_leg_servo_states_controller/command", JointTrajectory, queue_size = 10)
        self.head_pub = rospy.Publisher("/head_servo_state_controller/command", JointTrajectory, queue_size = 10)
        # self.head_pub = rospy.Publisher("/neck_servo_velocity_controller/command", Float64, queue_size = 11)

        rospy.wait_for_service('gazebo/set_model_state')
        self.set_model_state_srv = rospy.ServiceProxy('gazebo/set_model_state', SetModelState)

        self.left_leg_servo_state = None
        self.right_leg_servo_state = None
        self.head_servo_state = None
        self.model_state = None
        self.stop_time = None    

        self.left_leg_sub_no_message = 0
        self.right_leg_sub_no_message = 0
        self.head_sub_no_message = 0

        self.left_leg_sub = rospy.Subscriber("/left_leg_servo_states_controller/state", JointTrajectoryControllerState
    , self.set_left_leg_state_cb)
        self.right_leg_sub = rospy.Subscriber("/right_leg_servo_states_controller/state", JointTrajectoryControllerState,self.set_right_leg_state_cb)
        self.head_pub_sub = rospy.Subscriber("/head_servo_state_controller/state", JointTrajectoryControllerState,self.set_head_state_cb)
        rospy.Subscriber("/gazebo/model_states", ModelStates, self.set_model_state_cb)


        rospy.wait_for_service('/gazebo/pause_physics')
        rospy.loginfo("pause physics service found")
        self.pause = rospy.ServiceProxy('/gazebo/pause_physics', Empty,persistent=True)

        rospy.wait_for_service('/gazebo/unpause_physics')
        rospy.loginfo("unpause physics service found")
        self.unpause =rospy.ServiceProxy('/gazebo/unpause_physics', Empty,persistent=True)
        
        self.start_subscribing()


    def reset(self,time):
        self.reset_to_standing_cb(time)
        rospy.sleep(1)
        return self.get_state()


    def get_state(self):
        
        if self.right_leg_servo_state is not None:
            right_positions = self.right_leg_servo_state.actual.positions
            right_velocities = self.right_leg_servo_state.actual.velocities
        if self.left_leg_servo_state is not None:
            left_positions = self.left_leg_servo_state.actual.positions
            left_velocities = self.left_leg_servo_state.actual.velocities
        if self.head_servo_state is not None:
            head_positions = self.head_servo_state.actual.positions
            head_velocities = self.head_servo_state.actual.velocities
        model_position = [self.model_state.pose[1].position.x,self.model_state.pose[1].position.y,self.model_state.pose[1].position.z]
        model_velocity = [self.model_state.twist[1].linear.x,self.model_state.twist[1].linear.y,self.model_state.twist[1].linear.z]
        state = [*right_positions, *right_velocities, *left_positions, *left_velocities, *head_positions, *head_velocities, *model_position, *model_velocity]

        return state


    def get_reward(self, state):
        if state[18] < self.minumum_z:
            return -1
        # Distance 
        if self.reward_type == "distance":
            if (self.from_last_reward_x + state[16]) < self.minumum_x_y_movement and (state[17] + self.from_last_reward_y) < self.minumum_x_y_movement:
                return -1
        
        # velocity
        if self.reward_type == "twist":
            if state[19] < self.minumum_x_y_movement_twist and state[20] < self.minumum_x_y_movement_twist:
                return -1
        self.from_last_reward_x = state[16]
        self.from_last_reward_y = state[17]
        return 1
    
    def is_done(self, state):
        if state[18] < self.minumum_z:
            return True
        return False

    def start_subscribing(self):
        pass
        # rospy.init_node('my_first_python_test')
        

    def set_right_leg_state_cb(self,msg):
        self.right_leg_servo_state = msg
    def set_left_leg_state_cb(self,msg):
        self.left_leg_servo_state = msg
    def set_head_state_cb(self,msg):
        self.head_servo_state = msg
    def set_model_state_cb(self,msg):
        self.model_state = msg

    def send_head_cmd(self, neck, head, velocity,start_time):
        head_pub = rospy.Publisher("/head_servo_state_controller/command", JointTrajectory, queue_size = 10)
        head_cmd = JointTrajectory()
        head_cmd.header.stamp = start_time
        
        head_cmd.joint_names = ['neck_j', 'head_j']
        p = JointTrajectoryPoint()
        p.positions.append(neck)
        p.positions.append(head)
        
        p.velocities.append(velocity)
        p.velocities.append(velocity)        
        
        p.time_from_start = rospy.Duration(1.0);
        head_cmd.points.append(p)        
                
        head_pub.publish(head_cmd)

        

    def send_right_leg_cmd(self, up_r, up_r_velocity, mid_r,mid_r_velocity, feet_r, feet_r_velocity, start_time):
        right_leg_pub = rospy.Publisher("/right_leg_servo_states_controller/command", JointTrajectory, queue_size = 10)
        right_leg = JointTrajectory()
        right_leg.header.stamp = start_time
        
        right_leg.joint_names = ['up_leg_r_j', 'mid_leg_r_j', 'feet_r_j']
        p = JointTrajectoryPoint()
        p.positions.append(up_r)
        p.velocities.append(up_r_velocity)      
        p.positions.append(mid_r)
        p.velocities.append(mid_r_velocity)      
        p.positions.append(feet_r)
        p.velocities.append(feet_r_velocity)            
        p.time_from_start = rospy.Duration(1.0);
        right_leg.points.append(p)        
        right_leg_pub.publish(right_leg)   

    def deploy_cb(self, req):
        self.send_leg_cmd(0.5, 0.5, -1, -1, 0.5, 0.5, 1)    
        self.send_head_cmd(-0.5, 0.5, 1)    
        return []

    def send_left_leg_cmd(self, up_l, up_l_velocity, mid_l,mid_l_velocity, feet_l, feet_l_velocity, start_time):    
        left_leg_pub = rospy.Publisher("/left_leg_servo_states_controller/command", JointTrajectory, queue_size = 10)     
        left_leg = JointTrajectory()
        left_leg.header.stamp = start_time
        left_leg.joint_names = ['up_leg_l_j', 'mid_leg_l_j', 'feet_l_j']
        p = JointTrajectoryPoint()
        p.positions.append(up_l)
        p.positions.append(mid_l)
        p.positions.append(feet_l)
        p.velocities.append(up_l_velocity)
        p.velocities.append(mid_l_velocity)        
        p.velocities.append(feet_l_velocity)        
        p.time_from_start = rospy.Duration(1.0);
        left_leg.points.append(p)   
        left_leg_pub.publish(left_leg)

    def reset_to_standing_cb(self,current_time):


        max_vel_servo = 1
        max_feet_p = 1.5#np.pi/2
        min_feet_p = -np.pi/2
        max_mid_p = 2
        min_mid_p = 3#-np.pi
        max_up_p = -1#np.pi/2
        min_up_p = -np.pi/2        
        max_head_p = 0#np.pi/2
        min_head_p = -1.5#-np.pi/2 


        ctr_left = False
        while not ctr_left:
            left_connections = self.left_leg_pub.get_num_connections()
            if left_connections > 0:
                self.send_left_leg_cmd(max_up_p, max_vel_servo, max_mid_p, max_vel_servo, -1, 1,current_time)
                ctr_left = True
            else:
                rospy.loginfo("no connections")

        ctr_right = False
        while not ctr_right:
            right_connections = self.right_leg_pub.get_num_connections()
            if right_connections > 0:
                self.send_right_leg_cmd(max_up_p, max_vel_servo, max_mid_p, max_vel_servo, -1, 1,current_time)
                ctr_right = True
            else:
                rospy.loginfo("no connections")
        
        ctr_head = False
        while not ctr_head:
            head_connections = self.head_pub.get_num_connections()
            if head_connections > 0:
                self.send_head_cmd(np.pi/2,-1.5, max_vel_servo,current_time)
                ctr_head = True
            else:
                rospy.loginfo("no connections")

        rospy.sleep(2.0)

        ms = ModelState()
        ms.model_name = "bd1"
        ms.pose.position.z = 0.4
        ms.pose.position.x = 0
        ms.pose.position.y = 0
        ms.pose.orientation.x = 0
        ms.pose.orientation.y = 0
        ms.pose.orientation.z = 0
        ms.pose.orientation.w = 1

        self.set_model_state_srv(ms)
        return []        


    def step(self, action,time):
        iteratinos = 1
        current =0
        
        # rospy.loginfo("action: %s", action.shape)

        left_leg_actions = action[0:6]       
        right_leg_actions = action[6:12]
        head_actions = action[12:15]

        while current < iteratinos:
            ctr_left = False
            while not ctr_left:
                left_connections = self.left_leg_pub.get_num_connections()
                if left_connections > 0:
                    self.send_left_leg_cmd(left_leg_actions[0],left_leg_actions[1],left_leg_actions[2],left_leg_actions[3],left_leg_actions[4],left_leg_actions[5],time)
                    ctr_left = True
                else:
                    rospy.loginfo("no connections")

            ctr_right = False
            while not ctr_right:
                right_connections = self.right_leg_pub.get_num_connections()
                if right_connections > 0:
                    self.send_right_leg_cmd(right_leg_actions[0],right_leg_actions[1],right_leg_actions[2],right_leg_actions[3],right_leg_actions[4],right_leg_actions[5],time)
                    ctr_right = True
                else:
                    rospy.loginfo("no connections")
            
            ctr_head = False
            while not ctr_head:
                head_connections = self.head_pub.get_num_connections()
                if head_connections > 0:
                    self.send_head_cmd(head_actions[0],head_actions[1],head_actions[2],time)
                    ctr_head = True
                else:
                    rospy.loginfo("no connections")
            current = current + 1
        rospy.sleep(1)
        state = self.get_state()
        return np.asarray(state,dtype=np.double), self.get_reward(state), self.is_done(state)


    def random_action(self):
        max_vel_servo = 1
        max_feet_p = 1.5#np.pi/2
        min_feet_p = -np.pi/2
        max_mid_p = 0
        min_mid_p = 3#-np.pi
        max_up_p = 1.5#np.pi/2
        min_up_p = -np.pi/2        
        max_head_p = 1.5#np.pi/2
        min_head_p = -1.5#-np.pi/2
        iteratinos = 1
        current =0

        action = [random.uniform(min_up_p, max_up_p), random.uniform(0, max_vel_servo), random.uniform(min_mid_p, max_mid_p), random.uniform(0, max_vel_servo), random.uniform(min_feet_p, max_feet_p), random.uniform(0, max_vel_servo),
        random.uniform(min_up_p, max_up_p), random.uniform(0, max_vel_servo), random.uniform(min_mid_p, max_mid_p), random.uniform(0, max_vel_servo), random.uniform(min_feet_p, max_feet_p), random.uniform(0, max_vel_servo),
        random.uniform(min_head_p, max_head_p), random.uniform(min_head_p, max_head_p), random.uniform(0, max_vel_servo)]
        return action


    def pause_simulation(self):
        self.pause()
       

    def unpause_simulation(self):
        self.unpause()

if __name__ == "__main__":
    rospy.init_node('basic_moves')   
    env = MyEnvironment()
    # main(env)
    infer_model(env)
    # env.reset_to_standing_cb(rospy.get_rostime()) # take a certain time to load the model and set the joints

    # rospy.sleep(1)

    # env.random_action(env,rospy.get_rostime())
    # env.get_state()
    # rospy.sleep(1)
    # env.reset_to_standing_cb(rospy.get_rostime()) # take a certain time to load the model and set the joints
