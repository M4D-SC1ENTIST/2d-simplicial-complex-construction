#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64MultiArray, Float64, ColorRGBA
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point

import math
import random
import gudhi
import numpy as np
from matplotlib import pyplot as plt

complex = gudhi.SimplexTree()
triangles = None

triangle_color_list = []

"""
obstacles_array[i, j]
i: the index of the obstacle
j: the obstacle parameter
    0: x coordinate
    1: y coordinate
    2: z coordinate
    3: width
"""
obstacles_array = np.zeros((1, 4))

obstacle_nums = 200

# Number of point generated on each obstacle
obstacle_point_resolution = 6

"""
obstacle_points_array[i, j, k]
i: the index of the obstacle
j: coordinates
    0: X coordinates
    1: Y coordinates
k: sampled points from the cylinder obstacle
"""
obstacle_points_array = np.zeros((1, 2, obstacle_point_resolution))

map_x_lower_limit = -20
map_x_upper_limit = 20

map_y_lower_limit = -20
map_y_upper_limit = 20

quadrotor_sensing_radius = 5

quadrotor_x = 0.0
quadrotor_y = 0.0

complete_obstacle_generation = False

simplicial_complex_publisher = rospy.Publisher('/simplicial_complex_publisher', Marker)

def obstacle_processing_callback(obstacle_information):
    obstacle_index = int(obstacle_information.data[0])
    obstacle_x = obstacle_information.data[1]
    obstacle_y = obstacle_information.data[2]
    obstacle_z = obstacle_information.data[3]
    obstacle_width = obstacle_information.data[4]

    global obstacles_array
    global obstacle_points_array
    global complete_obstacle_generation
    global obstacle_point_resolution

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

    # Set map lower and upper limit
    plt.gca().set_xlim([map_x_lower_limit, map_x_upper_limit])   
    plt.gca().set_ylim([map_y_lower_limit, map_y_upper_limit])

    plt.gca().set_title("Obstacle Generation")

    plt.draw()
    plt.pause(0.00000000001)

    if obstacle_index == obstacle_nums - 1:
        theta = np.linspace(0, 2 * np.pi, obstacle_point_resolution + 1)[:obstacle_point_resolution]
        for index in range(0, obstacles_array.shape[0]):
            current_point_array = np.array([[
                (obstacles_array[index, 3] / 2) * np.cos(theta) + obstacles_array[index, 0],
                (obstacles_array[index, 3] / 2) * np.sin(theta) + obstacles_array[index, 1]
                ]])
            
            if index == 0:
                obstacle_points_array = current_point_array
            else:
                obstacle_points_array = np.append(obstacle_points_array, current_point_array, axis=0)

        # print("Obstacles Array: ", obstacles_array)

        # print("Obstacle Points Array: ", obstacle_points_array)

        complete_obstacle_generation = True

"""
def obstacles_scan():
    global obstacles_array
    global obstacle_points_array
    global quadrotor_x
    global quadrotor_y
    global quadrotor_sensing_radius
    
    # Get the points within the sensing range
    distance_array = np.zeros((obstacle_points_array.shape[0], obstacle_points_array.shape[2]))

    for i in range(0, obstacle_points_array.shape[0]):
        quadrotor_point = np.array([quadrotor_x, quadrotor_y])
        circle_center = np.array([obstacles_array[i, 0], obstacles_array[i, 1]])
        distance_to_circle_center = np.linalg.norm(quadrotor_point - circle_center)

        

        for k in range(0, obstacle_points_array.shape[2]):
            current_point = np.array([obstacle_points_array[i, 0, k], obstacle_points_array[i, 1, k]])
            distance_to_current_point = np.linalg.norm(quadrotor_point - current_point)

            # Comparison between center of the circle and direct distance
            if distance_to_current_point < distance_to_circle_center:
                distance_array[i, k] = distance_to_current_point
            else:
                distance_array[i, k] = math.inf

    points_within_range_indices = np.where(np.logical_and(distance_array >= -quadrotor_sensing_radius, distance_array <= quadrotor_sensing_radius))
    points_within_range = obstacle_points_array[points_within_range_indices[0][:], :, points_within_range_indices[1][:]]
    # print(points_within_range)
    # print(points_within_range.shape)

    return points_within_range
"""

def obstacles_scan():
    global obstacles_array
    global obstacle_points_array
    global obstacle_nums
    global quadrotor_x
    global quadrotor_y
    global quadrotor_sensing_radius

    distance_array = np.zeros(obstacle_nums)

    for idx in range(0, obstacle_nums):
        obstacle_coordinate = np.array([obstacles_array[idx, 0], obstacles_array[idx, 1]])
        quadrotor_coordinate = np.array([quadrotor_x, quadrotor_y])
        distance_array[idx] = np.linalg.norm(quadrotor_coordinate - obstacle_coordinate) 

    obstacles_within_range_indices = np.where(np.logical_and(distance_array >= -quadrotor_sensing_radius, distance_array <= quadrotor_sensing_radius))
    obstacles_within_range_indices = obstacles_within_range_indices[0]
    # print(points_within_range_indices)

    return obstacles_within_range_indices
    

def publish_complex_marker():
    global triangles
    global obstacles_array
    global simplicial_complex_publisher
    global triangle_color_list

    complex_marker = Marker()
    complex_marker.header.frame_id = "simulator"
    complex_marker.header.stamp = rospy.get_rostime()
    complex_marker.ns = rospy.get_name()
    complex_marker.id = 0
    complex_marker.type = 11
    complex_marker.action = 0
    complex_marker.pose.position.x = 1
    complex_marker.pose.position.y = 1
    complex_marker.pose.position.z = 1
    complex_marker.pose.orientation.x = 0.0
    complex_marker.pose.orientation.y = 0.0
    complex_marker.pose.orientation.z = 0.0
    complex_marker.pose.orientation.w = 1.0
    complex_marker.scale.x = 1
    complex_marker.scale.y = 1
    complex_marker.scale.z = 1

    complex_marker.color.a = 0.8
    complex_marker.color.r = 0.0
    complex_marker.color.g = 1.0
    complex_marker.color.b = 0.0

    for i in range(0, len(triangles)):
        obstacle_idx0 = triangles[i][0]
        obstacle_idx1 = triangles[i][1]
        obstacle_idx2 = triangles[i][2]

        random_height = random.uniform(0,2)

        point0 = Point(obstacles_array[obstacle_idx0, 0], obstacles_array[obstacle_idx0, 1], random_height)
        point1 = Point(obstacles_array[obstacle_idx1, 0], obstacles_array[obstacle_idx1, 1], random_height)
        point2 = Point(obstacles_array[obstacle_idx2, 0], obstacles_array[obstacle_idx2, 1], random_height)

        complex_marker.points.append(point0)
        complex_marker.points.append(point1)
        complex_marker.points.append(point2)

        while len(complex_marker.points) > len(triangle_color_list):
            current_color = ColorRGBA()
            current_color.a = 0.8
            current_color.r = random.uniform(0,1)
            current_color.g = random.uniform(0,1)
            current_color.b = random.uniform(0,1)

            triangle_color_list.append(current_color)
    
    complex_marker.colors = triangle_color_list
    
    simplicial_complex_publisher.publish(complex_marker)



def quadrotor_processing_callback(quadrotor_information):
    global complex
    global triangles
    global quadrotor_x
    global quadrotor_y
    global complete_obstacle_generation

    quadrotor_x = quadrotor_information.pose.position.x
    quadrotor_y = quadrotor_information.pose.position.y

    # rospy.loginfo("Quadrotor X: %f", quadrotor_x)
    # rospy.loginfo("Quadrotor Y: %f", quadrotor_y)
    # rospy.loginfo("Quadrotor Z: %f", quadrotor_z)

    # plt.plot(quadrotor_x, quadrotor_y, '*', color='b')
    
    # msg = Float64()
    # msg.data = quadrotor_x
    # simplicial_complex_publisher.publish(msg)

    if complete_obstacle_generation is True:
        obstacles_within_range_indices = obstacles_scan()
        complex.insert(obstacles_within_range_indices)
        triangles = np.array([s[0] for s in complex.get_skeleton(2) if len(s[0])==3])
        
        # print(triangles)
        # print(len(triangles))
        publish_complex_marker()
        


if __name__ == '__main__':
    try:
        rospy.init_node("obstacles_quadrotor_information_node", anonymous=True)

        # Processing obstacles
        rospy.Subscriber("/random_forest/obstacle_information_topic", Float64MultiArray, obstacle_processing_callback)
        
        # Processing quadrotor
        rospy.Subscriber("/quadrotor/mesh_visualization/robot", Marker, quadrotor_processing_callback)

        plt.ion()
        plt.show()

        rospy.spin()

    except rospy.ROSInternalException:
        pass