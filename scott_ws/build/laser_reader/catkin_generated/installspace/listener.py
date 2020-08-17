#!/usr/bin/env python2

import rospy
from std_msgs.msg import String
from sensor_msgs.msg import LaserScan

#IMPORT THE PYTHON MATH LIBRARY TO ALLOW THIS PROGRAMME TO USE 'SIN'

def callback(msg):
    min_angle = 90 * 3.142/180
    max_angle = 135 * 3.142/180 #set the angle range to pay attention to
    for x in range(0, 359):
        if msg.angle_increment*x < max_angle and msg.angle_increment*x > min_angle: #for every laserscan message, if data is between the specified angles, find its local X and Y coord relative to the LIDAR
            xcoord = msg.ranges[x]*sin(msg.angle_increment*x)
            ycoord = msg.ranges[x]*cos(msg.angle_increment*x) #these are in the same axes as the official documentation indicates for the A2 model
    print(xcoord + ' , ' + ycoord)

def lidar_listener():
    rospy.init_node('lidar_listener', anonymous=True)
    rospy.Subscriber('scan', LaserScan, callback)
    rospy.spin()

if __name__ == '__main__':
    lidar_listener()
