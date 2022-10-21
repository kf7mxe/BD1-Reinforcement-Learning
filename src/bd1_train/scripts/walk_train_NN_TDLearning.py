from collections import deque
import rospy
from bd1_environment_interface.srv import SetAction, SetVectAction, GetStateAndReward, GetVectStateAndReward
from std_msgs.msg import Float64
import numpy as np
import torch

class QualityNN(torch.nn.Module):
    def __init__(self, observation_space, action_space):
        super(QualityNN, self).__init__()
        self.observation_space = observation_space
        self.action_space = action_space
        self.fc1 = torch.nn.Linear(observation_space, 128)
        self.fc2 = torch.nn.Linear(128, 128)
        self.fc3 = torch.nn.Linear(128, action_space)
        self.relu = torch.nn.ReLU()

    def forward(self, x):
        x = self.relu(self.fc1(x))
        x = self.relu(self.fc2(x))
        x = self.fc3(x)
        return x

class Memory(object):
    def __init__(self, max_size=100):
        self.memory = deque(maxlen=max_size)

    def push(self, element):
        self.memory.append(element)

    def get_batch(self, batch_size):
        batch = []
        for i in range(batch_size):
            batch.append(self.memory[np.random.randint(len(self.memory))])
        return batch

    def __repr__(self):
        return f"Current elements in memory: {len(self.memory)}"

    def __len__(self):
        return len(self.memory)

class Agent(object):
        def __init__(self, environment):
            self.device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
            self.model = QualityNN(environment.observation_space.shape[0], environment.action_space.n).to(self.device)
            self.optimizer = torch.optim.Adam(self.model.parameters(), lr=3e-3)

            self.decay = 0.995
            self.randomness = 1.00
            self.min_randomness = 0.001

        def act(self, state):
            # move the state to a Torch Tensor
            state = torch.from_numpy(state).to(self.device)

            # find the quality of both actions
            qualities = self.model(state).cpu()

            # sometimes take a random action
            if np.random.rand() <= self.randomness:
                action = np.random.randint(low=0, high=qualities.size(dim=0))
            else:
                action = torch.argmax(qualities).item()

            # return that action
            return action  

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
            return self.model(states).gather(1, actions)

        def new_targets(self, states, next_states, rewards, actions):
            # reward + max(model[next_state])
            return rewards + torch.amax(self.model(next_states), dim=1, keepdim=True)

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

class Environment(object):
    def __init__(self):
        self.observation_space = rospy.wait_for_message("/state", Float64)
        self.action_space = rospy.wait_for_message("/action", Float64)

    def reset(self):
        rospy.wait_for_service("/reset")
        try:
            reset = rospy.ServiceProxy("/reset", SetAction)
            reset(0)
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)

    def step(self, action):
        rospy.wait_for_service("/step")
        try:
            step = rospy.ServiceProxy("/step", SetVectAction)
            state, reward, done = step([action])
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)
        return state, reward, done

    def render(self):
        rospy.wait_for_service("/render")
        try:
            render = rospy.ServiceProxy("/render", SetAction)
            render(0)
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)



def main():
    # setup environment
    environment = Environment()

    # setup agent
    agent = Agent(environment)

    # setup memory
    memory = Memory(max_size=1000)

    # setup logging
    writer = SummaryWriter()

    # setup training loop
    episodes = 1000
    batch_size = 32
    for episode in range(episodes):
        # reset environment
        environment.reset()

        # reset agent
        agent.update_randomness()

        # run episode
        done = False
        while not done:
            # get state
            state = environment.observation_space.data

            # get action
            action = agent.act(state)

            # take action
            next_state, reward, done = environment.step(action)

            # store transition
            memory.push((state, next_state, action, reward))

            # update agent
            if len(memory) >= batch_size:
                loss = agent.update(memory.get_batch(batch_size))
                writer.add_scalar("Loss", loss, episode)

        # log episode
        writer.add_scalar("Reward", reward, episode)

    # close logging
    writer.close()





if __name__ == "__main__":
    main()