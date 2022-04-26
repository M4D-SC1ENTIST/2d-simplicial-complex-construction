#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64, Float64MultiArray

def obstacle_information_callback(obstacle_information):
    rospy.loginfo("Obstacle Index: %d", int(obstacle_information.data[0]))
    rospy.loginfo("Obstacle X: %f", obstacle_information.data[1])
    rospy.loginfo("Obstacle Y: %f", obstacle_information.data[2])
    rospy.loginfo("Obstacle Z: %f", obstacle_information.data[3])
    rospy.loginfo("Obstacle Wdith: %f", obstacle_information.data[4])



def obstacle_info_subscriber():
    rospy.init_node("Obstacle_Info_Subscriber_Node", anonymous=True)
    rospy.Subscriber("/random_forest/obstacle_information_topic", Float64MultiArray, obstacle_information_callback)
    rospy.spin()

if __name__ == '__main__':
    try:
        obstacle_info_subscriber()
    except rospy.ROSInternalException:
        pass