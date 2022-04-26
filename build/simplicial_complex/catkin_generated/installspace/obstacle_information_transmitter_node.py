#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64MultiArray

import numpy as np

obstacles_array = np.zeros((1, 4))

def obstacle_information_callback(obstacle_information):
    obstacle_index = int(obstacle_information.data[0])
    obstacle_x = obstacle_information.data[1]
    obstacle_y = obstacle_information.data[2]
    obstacle_z = obstacle_information.data[3]
    obstacle_width = obstacle_information.data[4]

    global obstacles_array

    rospy.loginfo("Obstacle Index: %d", obstacle_index)
    rospy.loginfo("Obstacles Array Size Before Appending: %d", obstacles_array.shape[0])
    rospy.loginfo("Obstacle X: %f", obstacle_x)
    rospy.loginfo("Obstacle Y: %f", obstacle_y)
    rospy.loginfo("Obstacle Z: %f", obstacle_z)
    rospy.loginfo("Obstacle Wdith: %f", obstacle_width)

    # The second boolean condition is to sync with index and avoid duplication
    if obstacle_index == 0 and obstacle_index + 1 == obstacles_array.shape[0]:
        obstacles_array = np.array([[obstacle_x, obstacle_y, obstacle_z, obstacle_width]])
    elif obstacle_index > 0 and obstacle_index == obstacles_array.shape[0]:     
        current_obstacle = np.array([[obstacle_x, obstacle_y, obstacle_z, obstacle_width]])         
        obstacles_array = np.append(obstacles_array, current_obstacle, axis=0)
    rospy.loginfo("Obstacles Array Size After Appending: %d", obstacles_array.shape[0])
    


def obstacle_info_transmitter():
    rospy.init_node("obstacle_info_transmitter_node", anonymous=True)
    rospy.Subscriber("/random_forest/obstacle_information_topic", Float64MultiArray, obstacle_information_callback)
    
    rospy.spin()

if __name__ == '__main__':
    try:
        obstacle_info_transmitter()
    except rospy.ROSInternalException:
        pass