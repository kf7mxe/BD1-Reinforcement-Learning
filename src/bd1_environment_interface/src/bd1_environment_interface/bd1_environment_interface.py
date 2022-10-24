import rospy
from std_msgs.msg import Float64
from gazebo_msgs.msg import ModelState
import numpy as np
from sensor_msgs.msg import JointState



class environment():

    def __init__(self):
        self.name = "bd1_environment"
        self.target_x = 1

        self.max_vel_servo = 1
        self.max_feet_p = 1.5#np.pi/2
        self.min_feet_p = -np.pi/2
        self.max_mid_p = 0
        self.min_mid_p = 3#-np.pi
        self.max_up_p = 1.5#np.pi/2
        self.min_up_p = -np.pi/2        
        self.max_head_p = 1.5#np.pi/2
        self.min_head_p = -1.5#-np.pi/2

        # publishers
        self.head_publisher = rospy.Publisher('head_servo_velocity_controller/command', Float64, queue_size = 1)
        self.neck_pub = rospy.Publisher('neck_servo_velocity_controller/command', Float64, queue_size = 1)
        self.up_r_pub = rospy.Publisher('leg_up_r_servo_velocity_controller/command', Float64, queue_size = 1)
        self.mid_r_pub = rospy.Publisher('leg_mid_r_servo_velocity_controller/command', Float64, queue_size = 1)
        self.feet_r_pub = rospy.Publisher('feet_r_servo_velocity_controller/command', Float64, queue_size = 1)
        self.up_l_pub = rospy.Publisher('leg_up_l_servo_velocity_controller/command', Float64, queue_size = 1)
        self.mid_l_pub = rospy.Publisher('leg_mid_l_servo_velocity_controller/command', Float64, queue_size = 1)
        self.feet_l_pub = rospy.Publisher('feet_l_servo_velocity_controller/command', Float64, queue_size = 1)
        
        # Subscribers or listeners get the state
        self.last_joint_states = None
        rospy.Subscriber("joint_states", JointState, self.joint_states_cb)



        # gazebo
        rospy.wait_for_service('gazebo/set_model_state')
        self.set_model_state_srv = rospy.ServiceProxy('gazebo/set_model_state', SetModelState)
        rospy.wait_for_service('gazebo/get_model_state')
        self.get_model_state_srv = rospy.ServiceProxy('gazebo/get_model_state', GetModelState)
        rospy.wait_for_service('gazebo/reset_world')
        self.reset_world_srv = rospy.ServiceProxy('gazebo/reset_world', Empty)



    def joint_states_cb(self, msg):
        self.last_joint_states = msg
        


    def reset(self): # return state
        ms = ModelState()
        ms.model_name = "bd1"
        ms.pose.position.z = 30
        self.set_model_state_srv(ms)
        
        self.send_vel_cmd_left_leg(self.max_vel_servo, -self.max_vel_servo, self.max_vel_servo)
        self.send_vel_cmd_right_leg(self.max_vel_servo, -self.max_vel_servo, self.max_vel_servo)
        self.send_vel_cmd_head(-self.max_vel_servo, self.max_vel_servo)
        rospy.sleep(2.5)
            
        # replace robot 
        ms = ModelState()
        ms.model_name = "bd1"
        ms.pose.position.z = 0.15
        self.set_model_state_srv(ms)
        rospy.sleep(0.5)        
        return []

    def step(self, action): # return state, reward, done
        pass
