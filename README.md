# Implementation of a Walking Sensor for Aiding Bipedal Locomotion
This code was used for my thesis work on the Scott robot, and enables the reading of a RPLIDAR A2M8 by an Ubuntu Linux operating system.

The 'rplidar_ros' package is duplicated from the manufacturer's provided code for the LIDAR unit. For this project, it is used to publish the read LaserScan data to the /scan topic.

The 'laser_reader' package contains the bulk of this project's novel work, and involves converting the LaserScan data to an image form, as well as running OpenCV computer vision algorithms and saving each image for debugging and analysis.

The 'laser_to_pointcloud' package is an obsolete package, which attempted to publish the X and Y matrix coordinates of all read points in a way that was compatible with pointcloud conversion into an image. However, this was eventually found to be far more troublesome than the alternative, current approach, leading to the use of the 'laser_reader' package instead.

# set up laserscan inputs from LIDAR:
 - plug in LIDAR physically (ensure the connection to Ubuntu OS is successful before proceeding)
 - in console, 'sudo chmod 666 /dev/ttyUSB0' (grants permission to access data through the /dev/ttyUSB0 port)
 - activate motor (to spin LIDAR unit), or spin it by hand when needed
 - start roscore
 - source and type 'roslaunch rplidar_ros rplidar.launch' to publish LaserScans to /scan

# set up laserscan to image conversion:
 - ensure that LaserScan messages are published to the /scan topic each time the LIDAR revolves
 - source and type 'rosrun laser_reader listener.py' to run the package. This saves a .png of the images associated with each LaserScan update, to demonstrate functional output.
 - note that the images are saved in the directory from which the terminal ran the laser_reader package.
