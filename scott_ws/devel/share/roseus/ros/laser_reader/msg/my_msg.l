;; Auto-generated. Do not edit!


(when (boundp 'laser_reader::my_msg)
  (if (not (find-package "LASER_READER"))
    (make-package "LASER_READER"))
  (shadow 'my_msg (find-package "LASER_READER")))
(unless (find-package "LASER_READER::MY_MSG")
  (make-package "LASER_READER::MY_MSG"))

(in-package "ROS")
;;//! \htmlinclude my_msg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass laser_reader::my_msg
  :super ros::object
  :slots (_data ))

(defmethod laser_reader::my_msg
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get laser_reader::my_msg :md5sum-) "390cbff96d168abc35f84f5ed0728288")
(setf (get laser_reader::my_msg :datatype-) "laser_reader/my_msg")
(setf (get laser_reader::my_msg :definition-)
      "geometry_msgs/Vector3[] data

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :laser_reader/my_msg "390cbff96d168abc35f84f5ed0728288")


