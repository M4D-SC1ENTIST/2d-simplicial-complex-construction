#!/usr/bin/env python3

import rospy

from std_msgs.msg import String

import obstacles_quadrotor_information

def simplicial_complex_publisher():
    pub = rospy.Publisher('simplicial_complex_topic', String, queue_size=10)
    rospy.init_node('simplicial_complex_construction_node', anonymous=True)
    rate = rospy.Rate(1)
    while not rospy.is_shutdown():
        msg = "Quad X Coordinates: %f \n Quad Y Coordinates: %f" % obstacles_quadrotor_information.quadrotor_x, obstacles_quadrotor_information.quadrotor_y
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        simplicial_complex_publisher()
    except rospy.ROSInterruptException:
        pass