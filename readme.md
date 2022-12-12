# Forked from [https://github.com/petr-sorokoumov/BD1](https://github.com/petr-sorokoumov/BD1)

install ross neotic 
requires ubuntu 20

# set environment vaiable permanaently
nano .bashrc

source /opt/ros/noetic/setup.bash

source ~/personal-projects/bd1-2/devel/setup.bash

# Build project
catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3

# Start the gazebo environment
roslaunch bd1_config bd1_gazebo.launch


# run python file
python3 walk_train_nn_td_learning_joint_trajectory.py

# Other
 ## Link to video presentation 
 https://www.youtube.com/watch?v=cci-cr_Va7Q

