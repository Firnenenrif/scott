#!/usr/bin/env python

import rospy
import math
import numpy
from std_msgs.msg import String
from sensor_msgs.msg import LaserScan

def callback(msg):
    imgmat = numpy.zeros((120,120), int) #Basing max image size on the sensor's height from the ground, and height=width since this is a single quadrant of Scott's LIDAR's vision area.. 60cm by 60cm square? And set each pixel to be 0.5cm? So 120 by 120 resolution - low enough for a small microcontroller, and to process at same rate as LaserScans?
    for i in range(0, 359):
        if abs(msg.angle_increment*i) <= abs(max_angle) and abs(msg.angle_increment*i) >= abs(min_angle): #for every laserscan message, if data is between the specified angles, find its local X and Y coord relative to the LIDAR
            if msg.ranges[i] != numpy.inf: #only proceed if data is a non-infinite distance
                xcoord = msg.ranges[i]*numpy.sin(msg.angle_increment*i)
                ycoord = msg.ranges[i]*numpy.cos(msg.angle_increment*i) #these are in the same axes as the official documentation indicates for the A2 model
                if abs(xcoord) <= 0.6 and abs(ycoord) <= 0.6: #only proceed if data is within image resolution distance
                    xcoord = int(xcoord*200)
                    ycoord = int(ycoord*200) #Convert coordinates from metres to pixels based on image resolution
                    print(str(xcoord) + ' , ' + str(ycoord))

def lidar_listener():
    rospy.init_node('lidar_listener', anonymous=True)
    rospy.Subscriber('scan', LaserScan, callback)
    rospy.spin()

min_angle = float(0 * numpy.pi/180)
max_angle = float(90 * numpy.pi/180) #set the angle range to pay attention to
if __name__ == '__main__':
    lidar_listener()
