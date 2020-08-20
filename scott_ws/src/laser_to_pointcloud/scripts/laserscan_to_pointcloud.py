#!/usr/bin/env python

import sensor_msgs.point_cloud2 as pc2
import rospy
from sensor_msgs.msg import PointCloud2, LaserScan
import laser_geometry.laser_geometry as lg
import math

rospy.init_node("laserscan_to_pointcloud")

lp = lg.LaserProjection()

pc_pub = rospy.Publisher("converted_pc", PointCloud2, queue_size=1)

def scan_cb(msg):
    # convert the message of type LaserScan to a PointCloud2
    pc2_msg = lp.projectLaser(msg)

    # now we can do something with the PointCloud2 for example:
    # publish it
    
    # convert it to a generator of the individual points
    point_generator = pc2.read_points(pc2_msg)
    
    points = pc2.read_points(pc2_msg, skip_nans=True, field_names=("x", "y", "z"))
    laser.fromCameraInfo(intrinsics)

    organized_points = []
    for point in points:
        p = [point[0], point[1], point[2]]
        pp = camera_model.project3dToPixel(pc)
        organized_points.append(pp)

    organized_points = np.array(organized_points, dtype=int)

    pc_pub.publish(organized_points)


rospy.Subscriber("/scan", LaserScan, scan_cb, queue_size=1)
rospy.spin()
