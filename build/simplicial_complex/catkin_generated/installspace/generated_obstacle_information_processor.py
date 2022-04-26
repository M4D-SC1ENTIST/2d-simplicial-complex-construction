#!/usr/bin/env python3

from cmath import pi
from turtle import color
import rospy
from std_msgs.msg import Float64MultiArray

import numpy as np
from matplotlib import pyplot as plt

"""
obstacles_array[i, j]
i: the index of the obstacle (0 is empty)
j: the obstacle parameter
    0: x coordinate
    1: y coordinate
    2: z coordinate
    3: width
"""
obstacles_array = np.zeros((1, 4))

map_x_lower_limit = -20
map_x_upper_limit = 20

map_y_lower_limit = -20
map_y_upper_limit = 20

def obstacle_processing_callback(obstacle_information):
    obstacle_index = int(obstacle_information.data[0])
    obstacle_x = obstacle_information.data[1]
    obstacle_y = obstacle_information.data[2]
    obstacle_z = obstacle_information.data[3]
    obstacle_width = obstacle_information.data[4]

    global obstacles_array

    # rospy.loginfo("Obstacle Index: %d", obstacle_index)
    # rospy.loginfo("Obstacles Array Size Before Appending: %d", obstacles_array.shape[0])
    # rospy.loginfo("Obstacle X: %f", obstacle_x)
    # rospy.loginfo("Obstacle Y: %f", obstacle_y)
    # rospy.loginfo("Obstacle Z: %f", obstacle_z)
    # rospy.loginfo("Obstacle Wdith: %f", obstacle_width)
    

    # The second boolean condition is to sync with index and avoid duplication
    if obstacle_index == 0 and obstacle_index + 1 == obstacles_array.shape[0]:
        obstacles_array = np.array([[obstacle_x, obstacle_y, obstacle_z, obstacle_width]])
    elif obstacle_index > 0 and obstacle_index == obstacles_array.shape[0]:     
        current_obstacle = np.array([[obstacle_x, obstacle_y, obstacle_z, obstacle_width]])         
        obstacles_array = np.append(obstacles_array, current_obstacle, axis=0)
    
    # rospy.loginfo("Obstacles Array Size After Appending: %d", obstacles_array.shape[0])

    # plt.plot(obstacles_array[:, 0], obstacles_array[:, 1], '*')
    circle = plt.Circle((obstacle_x, obstacle_y), obstacle_width/2, color='grey')
    plt.gca().add_patch(circle)
    plt.axis("equal")

    # Set map lower and upper limit
    plt.gca().set_xlim([map_x_lower_limit, map_x_upper_limit])   
    plt.gca().set_ylim([map_y_lower_limit, map_y_upper_limit])

    plt.draw()
    plt.pause(0.00000000001)
    

def obstacle_info_processor():
    rospy.init_node("generated_obstacle_info_processor_node", anonymous=True)
    rospy.Subscriber("/random_forest/obstacle_information_topic", Float64MultiArray, obstacle_processing_callback)
    
    plt.ion()
    
    plt.show()
    
    rospy.spin()

if __name__ == '__main__':
    try:
        obstacle_info_processor()
    except rospy.ROSInternalException:
        pass