# scott
code used for my thesis work on the Scott robot

# set up laserscan inputs from LIDAR:
 - plug in LIDAR physically (ensure connection to Ubuntu OS)
 - in console, 'sudo chmod 666 /dev/ttyUSB0' (grants permission to access data)
 - activate motor (to spin LIDAR unit) or do it by hand when needed
 - start roscore
 - source and type 'roslaunch rplidar_ros rplidar.launch' to get the LIDAR to publish LaserScans to /scan

# set up laserscan to pointcloud conversion:
 - do previous steps to set up laserscan inputs
 - source and type 'rosrun laser_to_pointcloud laserscan_to_pointcloud.py' to get the node to publish PointCloud2s to /converted_pc


