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
# import torch

# class QualityNN(torch.nn.Module):
#     def __init__(self, observation_space, action_space):
#         super(QualityNN, self).__init__()
#         self.observation_space = observation_space
#         self.action_space = action_space
#         self.fc1 = torch.nn.Linear(observation_space, 128)
#         self.fc2 = torch.nn.Linear(128, 128)
#         self.fc3 = torch.nn.Linear(128, action_space)
#         self.relu = torch.nn.ReLU()

#     def forward(self, x):
#         x = self.relu(self.fc1(x))
#         x = self.relu(self.fc2(x))
#         x = self.fc3(x)
#         return x

# class Memory(object):
#     def __init__(self, max_size=100):
#         self.memory = deque(maxlen=max_size)

#     def push(self, element):
#         self.memory.append(element)

#     def get_batch(self, batch_size):
#         batch = []
#         for i in range(batch_size):
#             batch.append(self.memory[np.random.randint(len(self.memory))])
#         return batch

#     def __repr__(self):
#         return f"Current elements in memory: {len(self.memory)}"

#     def __len__(self):
#         return len(self.memory)

# class Agent(object):
#         def __init__(self, environment):
#             self.device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
#             self.model = QualityNN(environment.observation_space.shape[0], environment.action_space.n).to(self.device)
#             self.optimizer = torch.optim.Adam(self.model.parameters(), lr=3e-3)

#             self.decay = 0.995
#             self.randomness = 1.00
#             self.min_randomness = 0.001

#         def act(self, state):
#             # move the state to a Torch Tensor
#             state = torch.from_numpy(state).to(self.device)

#             # find the quality of both actions
#             qualities = self.model(state).cpu()

#             # sometimes take a random action
#             if np.random.rand() <= self.randomness:
#                 action = np.random.randint(low=0, high=qualities.size(dim=0))
#             else:
#                 action = torch.argmax(qualities).item()

#             # return that action
#             return action  

#         def update(self, memory_batch):
#             # unpack our batch and convert to tensors
#             states, next_states, actions, rewards = self.unpack_batch(memory_batch)

#             # compute what the output is (old expected qualities)
#             # Q(S, A)
#             old_targets = self.old_targets(states, actions)

#             # compute what the output should be (new expected qualities)
#             # reward + max_a Q(S', a)
#             new_targets = self.new_targets(states, next_states, rewards, actions)

#             # compute the difference between old and new estimates
#             loss = torch.nn.functional.smooth_l1_loss(old_targets, new_targets)

#             # apply difference to the neural network
#             self.optimizer.zero_grad()
#             loss.backward()
#             self.optimizer.step()

#             # for logging
#             return loss.item()

#         def old_targets(self, states, actions):
#             # model[states][action]
#             return self.model(states).gather(1, actions)

#         def new_targets(self, states, next_states, rewards, actions):
#             # reward + max(model[next_state])
#             return rewards + torch.amax(self.model(next_states), dim=1, keepdim=True)

#         def unpack_batch(self, batch):
#             states, next_states, actions, rewards = zip(*batch)

#             states = torch.tensor(states).float().to(self.device)
#             next_states = torch.tensor(next_states).float().to(self.device)

#             # unsqueeze(1) makes 2d array. [1, 0, 1, ...] -> [[1], [0], [1], ...]
#             # this is required because the first array is for the batch, and
#             #   the inner arrays are for the elements
#             # the states and next_states are already in this format so we don't
#             #   need to do anything to them
#             # .long() for the actions because we are using them as array indices
#             actions = torch.tensor(actions).long().unsqueeze(1).to(self.device)
#             rewards = torch.tensor(rewards).float().unsqueeze(1).to(self.device)

#             return states, next_states, actions, rewards   

#         def update_randomness(self):
#             self.randomness *= self.decay
#             self.randomness = max(self.randomness, self.min_randomness)



class DummyAgent(object):
    def __init__(self,env):
        self.env = env
    def act(self,state):
        return self.env.action_space.sample()

    def get_action(self, state):
        return self.env.get_state_and_reward(state)

    def step(self, state, action):
        return self.env.get_state_and_reward(state, action)

class DummyMemory(object):
    def __init__(self):
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
    agent = DummyAgent(environment)
    # setup memory
    memory = DummyMemory(max_size=1000)

    # setup logging
    # writer = SummaryWriter()

    # setup training loop
    episodes = 1000
    batch_size = 32
    for episode in range(episodes):
        # reset environment
        environment.reset()

        # reset agent
        # agent.update_randomness()

        # run episode
        done = False
        while not done:
            # get state
            state = environment.get_state()

            # get action
            action = agent.act(state)

            # take action
            next_state, reward, done = environment.step(action)

            # store transition
            memory.push((state, next_state, action, reward))

            # update agent
            if len(memory) >= batch_size:
                loss = agent.update(memory.get_batch(batch_size))
                # writer.add_scalar("Loss", loss, episode)

        # log episode
        # writer.add_scalar("Reward", reward, episode)

    # close logging
    # writer.close()




class MyEnvironment(object):
    def __init__(self):
        
        
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

        rospy.loginfo("in the recieve function")
        self.left_leg_sub = rospy.Subscriber("/left_leg_servo_states_controller/state", JointTrajectoryControllerState
    , self.set_left_leg_state_cb)
        rospy.loginfo("in the recieve function 2")
        self.right_leg_sub = rospy.Subscriber("/right_leg_servo_states_controller/state", JointTrajectoryControllerState,self.set_right_leg_state_cb)
        rospy.loginfo("in the recieve function 3")
        self.head_pub_sub = rospy.Publisher("/head_servo_state_controller/state", JointTrajectoryControllerState,self.set_head_state_cb)
        rospy.loginfo("in the recieve function 4")
        rospy.Subscriber("/gazebo/model_states", ModelStates, self.set_model_state_cb)

        
        self.start_subscribing()


    def reset(self):
        self.reset_to_standing_cb()

    def get_state(self):
        rospy.loginfo("Getting state")
        rospy.loginfo(self.right_leg_servo_state)
        rospy.loginfo(self.left_leg_servo_state)
        rospy.loginfo(self.head_servo_state)
        rospy.loginfo(self.model_state)
        

    def start_subscribing(self):
        pass
        # rospy.init_node('my_first_python_test')
        

    def set_right_leg_state_cb(self,msg):
        rospy.loginfo("testing when state is blank")
        rospy.loginfo(msg)
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




        # pause physics

        # pause_physics()



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
                rospy.loginfo("testing random")
                rospy.loginfo(random.uniform(min_up_p, max_up_p))
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

        rospy.sleep(1.0)

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




def random_action(basic_moves, current_time):
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

    while current < iteratinos:
        ctr_left = False
        while not ctr_left:
            left_connections = basic_moves.left_leg_pub.get_num_connections()
            if left_connections > 0:
                basic_moves.send_left_leg_cmd(random.uniform(min_up_p, max_up_p), random.uniform(0, max_vel_servo), random.uniform(min_mid_p, max_mid_p), random.uniform(0, max_vel_servo), random.uniform(min_feet_p, max_feet_p), random.uniform(0, max_vel_servo),current_time)
                rospy.loginfo("testing random")
                rospy.loginfo(random.uniform(min_up_p, max_up_p))
                ctr_left = True
            else:
                rospy.loginfo("no connections")

        ctr_right = False
        while not ctr_right:
            right_connections = basic_moves.right_leg_pub.get_num_connections()
            if right_connections > 0:
                basic_moves.send_right_leg_cmd(random.uniform(min_up_p, max_up_p), random.uniform(0, max_vel_servo), random.uniform(min_mid_p, max_mid_p), random.uniform(0, max_vel_servo), random.uniform(min_feet_p, max_feet_p), random.uniform(0, max_vel_servo),current_time)
                ctr_right = True
            else:
                rospy.loginfo("no connections")
        
        ctr_head = False
        while not ctr_head:
            head_connections = basic_moves.head_pub.get_num_connections()
            if head_connections > 0:
                basic_moves.send_head_cmd(random.uniform(min_head_p, max_head_p), random.uniform(min_head_p, max_head_p), random.uniform(0, max_vel_servo),current_time)
                ctr_head = True
            else:
                rospy.loginfo("no connections")
        current = current + 1

        # rospy.loginfo("in random action"+random.uniform(min_up_p, max_up_p).__str__())

    # env.set_action_srv()



def test_get_state():
    pass





if __name__ == "__main__":
    rospy.init_node('basic_moves')   
    env = MyEnvironment()
    env.reset_to_standing_cb(rospy.get_rostime()) # take a certain time to load the model and set the joints

    rospy.sleep(1)

    # env.get_state()
    # rospy.sleep(4)
    random_action(env,rospy.get_rostime())
    rospy.sleep(1)
    env.reset_to_standing_cb(rospy.get_rostime()) # take a certain time to load the model and set the joints

    # env.reset_to_standing_cb()
    
    # rospy.wait_for_service('/gazebo/spawn_sdf_model')
    # spawnModelService = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)
    # rospy.wait_for_service('/gazebo/delete_model')
    # removeModelService = rospy.ServiceProxy('/gazebo/delete_model', DeleteModel)
    # removeModelService("bd1")
    # spawnModelService()
    # reset back to origin position




    # rospy.wait_for_service('/gazebo/reset_simulation')
    # reset_simulation = rospy.ServiceProxy('/gazebo/reset_simulation', Empty)
    # reset_simulation()


    # rospy.sleep(5)
    # env.reset_to_standing_cb()

    # recieve()
    # get_robots_xyz_state()
    # fall_detector()
    # random_action(None, interface)

    # rospy.init_node('reset_world')

    
    # servos_disconnected = False
    # while servos_disconnected == False:
    #     left_leg_servo_disconnected = env.left_leg_sub.get_num_connections() == 0
    #     right_leg_servo_disconnected = env.right_leg_sub.get_num_connections() == 0
    #     head_servo_disconnected = env.head_pub_sub.get_num_connections() == 0
    #     if left_leg_servo_disconnected and right_leg_servo_disconnected and head_servo_disconnected:
    #         servos_disconnected = True
    #     rospy.loginfo("waiting for left leg servo to disconnect")




    # rospy.wait_for_service('/gazebo/reset_world')
    # reset_world = rospy.ServiceProxy('/gazebo/reset_world', Empty)
    # reset_world()

    # rospy.wait_for_service('/gazebo/reset_simulation')
    # reset_simulation = rospy.ServiceProxy('/gazebo/reset_simulation', Empty)



    # # reset_world()

    # reset_simulation()
    # rospy.spin()
    # close the node
    # rospy.signal_shutdown("closing node")

    # main()