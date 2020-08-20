#!/usr/bin/env python

import rospy
import math
import numpy
from std_msgs.msg import String
from sensor_msgs.msg import LaserScan

def callback(msg):
    min_angle = float(0 * numpy.pi/180)
    max_angle = float(90 * numpy.pi/180) #set the angle range to pay attention to
    for i in range(0, 360):
        if abs(msg.angle_increment*i) <= abs(max_angle) and abs(msg.angle_increment*i) >= abs(min_angle): #for every laserscan message, if data is between the specified angles, find its local X and Y coord relative to the LIDAR
            if msg.ranges[i] != numpy.inf:
                xcoord = msg.ranges[i]*numpy.sin(msg.angle_increment*i)
                ycoord = msg.ranges[i]*numpy.cos(msg.angle_increment*i) #these are in the same axes as the official documentation indicates for the A2 model
                print(str(xcoord) + ' , ' + str(ycoord))
                #REPLACE THIS PRINT COMMAND WITH CODE TO CREATE THE IMAGE MATRIX

def lidar_listener():
    rospy.init_node('lidar_listener', anonymous=True)
    rospy.Subscriber('scan', LaserScan, callback)
    rospy.spin()

if __name__ == '__main__':
    lidar_listener()
