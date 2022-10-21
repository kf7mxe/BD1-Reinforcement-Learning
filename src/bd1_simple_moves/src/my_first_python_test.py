import rospy
from std_msgs.msg import Float64
from gazebo_msgs.srv import GetModelState

def step():
    rospy.init_node('my_first_python_test', anonymous=True)
    pub = rospy.Publisher('/neck_servo_velocity_controller/command', Float64, queue_size=10)
    rate = rospy.Rate(10) # 10hz

    
    # sub = rospy.Publisher('head_servo_velocity_controller/command', Float64, queue_size = 1)
    # model_state = self.get_model_state_srv = rospy.ServiceProxy('gazebo/get_model_state', GetModelState)

    # move_leg_pub = rospy.Publisher('/left_leg_servo_states_controller/command', String, queue_size=10)
    while not rospy.is_shutdown():
        # hello_str = "hello world %s" % rospy.get_time()
        position = 0.7
        rospy.loginfo(position)
        pub.publish(position)
        rate.sleep()

if __name__ == '__main__':
    try:
        step()
    except rospy.ROSInterruptException:
        pass