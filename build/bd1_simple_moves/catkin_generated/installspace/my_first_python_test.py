import rospy
from std_msgs.msg import Float64
from gazebo_msgs.srv import GetModelState
from gazebo_msgs.msg import ModelState
from sensor_msgs.msg import JointState

from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint


def step():
    # rospy.init_node('my_first_python_test', anonymous=True)
    left_leg_pub = rospy.Publisher("/left_leg_servo_states_controller/command", JointTrajectory, queue_size = 1)
    rate = rospy.Rate(1) # 10hz
    left_leg = JointTrajectory()
    left_leg.header.stamp = rospy.Time.now()
        
    left_leg.joint_names = ['up_leg_l_j', 'mid_leg_l_j', 'feet_l_j']
    p = JointTrajectoryPoint()
    p.positions.append(1)
    p.positions.append(1)
    p.positions.append(1)
    p.velocities.append(1)
    p.velocities.append(1*2)        
    p.velocities.append(1)        
    p.time_from_start = rospy.Duration(1.0);
    left_leg.points.append(p) 
    ctr_c = False
    while not ctr_c:
        connections = left_leg_pub.get_num_connections()
        if connections > 0:
            left_leg_pub.publish(left_leg) 
            ctr_c = True
            print("message published")
        else:
            rate.sleep()
            print("waiting for connection")
    
    # sub = rospy.Publisher('head_servo_velocity_controller/command', Float64, queue_size = 1)
    # model_state = self.get_model_state_srv = rospy.ServiceProxy('gazebo/get_model_state', GetModelState)

    # move_leg_pub = rospy.Publisher('/left_leg_servo_states_controller/command', String, queue_size=10)
    # while not rospy.is_shutdown():
        # hello_str = "hello world %s" % rospy.get_time()
    position = 0.5
    rospy.loginfo(position)
    # pub.publish(position)
    rate.sleep()

def right_leg_state_cb(msg):
    rospy.loginfo("joints test")
    rospy.loginfo(msg)

def recieve():
    rospy.init_node('my_first_python_test')
    rospy.Subscriber("right_leg_servo_states_controller/state", JointTrajectory, right_leg_state_cb)

if __name__ == '__main__':
    try:
        recieve()
        step()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass