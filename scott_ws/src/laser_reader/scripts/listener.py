#!/usr/bin/env python

import rospy
import math
import numpy
import cv2 as cv
import argparse
from PIL import Image
from std_msgs.msg import String
from std_msgs.msg import MultiArrayDimension
from std_msgs.msg import UInt8MultiArray
from sensor_msgs.msg import LaserScan

def callback(msg):
    
    #Initialise the lin array, for use in the upcoming for loop and line fitting
    lin = []
    
    #Basing max image size on the sensor's height from the ground, and height=width since this is a single quadrant of Scott's LIDAR's vision area. 60cm by 60cm square. Set each pixel to be 0.5cm. This gives a 120 by 120 resolution - low enough for a small microcontroller to process at LaserScan rate.
    
    imgmat = numpy.zeros((respixel,respixel)).astype(numpy.uint8)
    for i in range(0, 359):
        if abs(msg.angle_increment*i) <= abs(max_angle) and abs(msg.angle_increment*i) >= abs(min_angle) and msg.ranges[i] != numpy.inf:
            #for every laserscan message, only proceed if data is between the specified angles and is a non-infinite distance
            
            #find each relevant point's local X and Y coord relative to the LIDAR. These are in the same axes as the official documentation indicates for the A2 model
            xcoord = msg.ranges[i]*numpy.sin(msg.angle_increment*i)
            ycoord = msg.ranges[i]*numpy.cos(msg.angle_increment*i)
            if abs(xcoord) <= resmetre and abs(ycoord) <= resmetre:
                #only proceed if datum is within image resolution distance
                
                #Convert coordinates from metres to pixels based on image resolution
                xcoord = (xcoord*(respixel/resmetre)).astype(numpy.uint8)
                ycoord = (ycoord*(respixel/resmetre)).astype(numpy.uint8)
                
                #set the relevant pixel to 255
                imgmat[ycoord][xcoord] = 255
                
                #append each data point's X and Y coordinates to the lin array, for line fitting later on
                lin.append((xcoord, ycoord))
    
    #Process the image and set threshold
    imgmatblur = cv.blur(imgmat, (3,3))
    threshold = thresh
    
    #Detect edges using Canny
    canny_output = cv.Canny(imgmatblur, threshold, threshold * 2)
    
    #Find contours
    contours, hierarchy = cv.findContours(canny_output, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)[-2:]
    
    #Draw contours
    drawing = numpy.zeros((canny_output.shape[0], canny_output.shape[1], 3), dtype=numpy.uint8)
    for i in range(len(contours)):
        colour = (255, 0, 0)
        cv.drawContours(drawing, contours, i, colour, 2, cv.LINE_8, hierarchy, 0)
    
    #Sort the lin array with the lintype dtype to give the lintyped array, to ensure compatibility with curve fitting algorithm
    lintype = [('xpix', int), ('ypix', int)]
    ##print('untyped: ' + str(lin))
    lintyped = numpy.array(lin, dtype=lintype)
    ##print('unsorted: ' + str(lintyped))
    linsorted = numpy.sort(lintyped, order='xpix')
    ##print('sorted: ' + str(linsorted))
    
    #Assign the X and Y coords to separate vectors for the curve fitting algorithm
    x = linsorted['xpix']
    y = linsorted['ypix']
    linx = []
    liny = []
    for i in range(len(x)):
        if y[i] < 120 and y[i] >= 0:
            linx.append(int(x[i]))
            liny.append(int(y[i]))
    ##print('linx: ' + str(linx))
    ##print('liny: ' + str(liny))
    
    #Apply the curve fitting algorithm for each contour's centre and generate coordinates. The maximum number of points a 1D line can take up on a square image is along the diagonal, which gives sqrt(2)*image height (where image height = image width) number of pixels
    if linx == [] or len(linx) < 2:
        return
    o = numpy.polyfit(linx, liny, 1)
    p = numpy.poly1d(o)
    approxx = numpy.linspace(0, int(respixel-1), int((numpy.sqrt(2))*(respixel-1)))
    approxy = p(approxx)
    approxx = numpy.round(approxx, 0)
    approxy = numpy.round(approxy, 0)
    ##print('line x: ' + str(approxx))
    ##print('line y: ' + str(approxy))
    
    #Draw the line and add it to the contour image
    for i in range(len(approxx)):
        drawing[(approxy[i])][(approxx[i])] = 255
    
    #Testing code, saves image and contour output + prints image/contour matrix
    ##print(str(imgmat))
    ##print(str(drawing))
    img = Image.fromarray(imgmat)
    img = img.save('testpic.png')
    draw = Image.fromarray(drawing)
    draw = draw.save('testcont.png')
    
    #END OF CALLBACK

def lidar_listener():
    rospy.init_node('lidar_listener', anonymous=True)
    rospy.Subscriber('scan', LaserScan, callback)
    rospy.spin()

if __name__ == '__main__':

    min_angle = float(0 * numpy.pi/180)
    max_angle = float(90 * numpy.pi/180) #set the angle range to pay attention to
    respixel = 120 #set the side length of the square image to retrieve, in pixels
    resmetre = 0.6 #set the side length of the square image to retrieve, in metres
    
    #max_thresh = 255
    thresh = 100 #initial threshold

    #Run the listener
    lidar_listener()
