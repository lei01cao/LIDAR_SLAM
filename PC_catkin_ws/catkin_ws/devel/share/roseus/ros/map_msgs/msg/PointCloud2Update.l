;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::PointCloud2Update)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'PointCloud2Update (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::POINTCLOUD2UPDATE")
  (make-package "MAP_MSGS::POINTCLOUD2UPDATE"))

(in-package "ROS")
;;//! \htmlinclude PointCloud2Update.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ADD*" (find-package "MAP_MSGS::POINTCLOUD2UPDATE"))
(shadow '*ADD* (find-package "MAP_MSGS::POINTCLOUD2UPDATE"))
(defconstant map_msgs::PointCloud2Update::*ADD* 0)
(intern "*DELETE*" (find-package "MAP_MSGS::POINTCLOUD2UPDATE"))
(shadow '*DELETE* (find-package "MAP_MSGS::POINTCLOUD2UPDATE"))
(defconstant map_msgs::PointCloud2Update::*DELETE* 1)
(defclass map_msgs::PointCloud2Update
  :super ros::object
  :slots (_header _type _points ))

(defmethod map_msgs::PointCloud2Update
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:points __points) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _type
    4
    ;; sensor_msgs/PointCloud2 _points
    (send _points :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _type
       (write-long _type s)
     ;; sensor_msgs/PointCloud2 _points
       (send _points :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/PointCloud2 _points
     (send _points :deserialize buf ptr-) (incf ptr- (send _points :serialization-length))
   ;;
   self)
  )

(setf (get map_msgs::PointCloud2Update :md5sum-) "6c58e4f249ae9cd2b24fb1ee0f99195e")
(setf (get map_msgs::PointCloud2Update :datatype-) "map_msgs/PointCloud2Update")
(setf (get map_msgs::PointCloud2Update :definition-)
      "uint32 ADD=0
uint32 DELETE=1
Header header
uint32 type          # type of update, one of ADD or DELETE
sensor_msgs/PointCloud2 points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :map_msgs/PointCloud2Update "6c58e4f249ae9cd2b24fb1ee0f99195e")


