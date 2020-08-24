# scott
code used for my thesis work on the Scott robot

# set up laserscan inputs from LIDAR:
 - plug in LIDAR physically (ensure connection to Ubuntu OS)
 - in console, 'sudo chmod 666 /dev/ttyUSB0' (grants permission to access data)
 - activate motor (to spin LIDAR unit) or do it by hand when needed
 - start roscore
 - source and type 'roslaunch rplidar_ros rplidar.launch' to get the LIDAR to publish LaserScans to /scan

//////////UNNECESSARY FROM NOW ON//////////

# set up laserscan to organised pointcloud conversion:
 - do previous steps to set up laserscan inputs
 - source and type 'rosrun laser_to_pointcloud laserscan_to_pointcloud.py' to get the node to publish (organised) PointCloud2s to /converted_pc

# set up organised pointcloud to image conversion:
 - do previous steps to set up organised pointcloud inputs
 - source and type 'rosrun pcl_ros convert_pointcloud_to_image input:=/converted_pc output:=/converted_img' to get the node to publish to /converted_img

//////////NECESSARY FROM NOW ON//////////

# set up laserscan to image conversion:
 - do previous steps to set up laserscan inputs
 - source and type 'rosrun laser_reader listener.py' to get the test version of the node working. This saves a .png of each laserscan image, to demonstrate functional output.
