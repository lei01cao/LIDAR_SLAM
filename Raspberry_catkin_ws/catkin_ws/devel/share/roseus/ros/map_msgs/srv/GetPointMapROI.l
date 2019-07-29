;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::GetPointMapROI)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'GetPointMapROI (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::GETPOINTMAPROI")
  (make-package "MAP_MSGS::GETPOINTMAPROI"))
(unless (find-package "MAP_MSGS::GETPOINTMAPROIREQUEST")
  (make-package "MAP_MSGS::GETPOINTMAPROIREQUEST"))
(unless (find-package "MAP_MSGS::GETPOINTMAPROIRESPONSE")
  (make-package "MAP_MSGS::GETPOINTMAPROIRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass map_msgs::GetPointMapROIRequest
  :super ros::object
  :slots (_x _y _z _r _l_x _l_y _l_z ))

(defmethod map_msgs::GetPointMapROIRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:r __r) 0.0)
    ((:l_x __l_x) 0.0)
    ((:l_y __l_y) 0.0)
    ((:l_z __l_z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _r (float __r))
   (setq _l_x (float __l_x))
   (setq _l_y (float __l_y))
   (setq _l_z (float __l_z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:l_x
   (&optional __l_x)
   (if __l_x (setq _l_x __l_x)) _l_x)
  (:l_y
   (&optional __l_y)
   (if __l_y (setq _l_y __l_y)) _l_y)
  (:l_z
   (&optional __l_z)
   (if __l_z (setq _l_z __l_z)) _l_z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _r
    8
    ;; float64 _l_x
    8
    ;; float64 _l_y
    8
    ;; float64 _l_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _r
       (sys::poke _r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _l_x
       (sys::poke _l_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _l_y
       (sys::poke _l_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _l_z
       (sys::poke _l_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _r
     (setq _r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _l_x
     (setq _l_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _l_y
     (setq _l_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _l_z
     (setq _l_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass map_msgs::GetPointMapROIResponse
  :super ros::object
  :slots (_sub_map ))

(defmethod map_msgs::GetPointMapROIResponse
  (:init
   (&key
    ((:sub_map __sub_map) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _sub_map __sub_map)
   self)
  (:sub_map
   (&rest __sub_map)
   (if (keywordp (car __sub_map))
       (send* _sub_map __sub_map)
     (progn
       (if __sub_map (setq _sub_map (car __sub_map)))
       _sub_map)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _sub_map
    (send _sub_map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _sub_map
       (send _sub_map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _sub_map
     (send _sub_map :deserialize buf ptr-) (incf ptr- (send _sub_map :serialization-length))
   ;;
   self)
  )

(defclass map_msgs::GetPointMapROI
  :super ros::object
  :slots ())

(setf (get map_msgs::GetPointMapROI :md5sum-) "d955594b5ccde9615cbe5aed9442f733")
(setf (get map_msgs::GetPointMapROI :datatype-) "map_msgs/GetPointMapROI")
(setf (get map_msgs::GetPointMapROI :request) map_msgs::GetPointMapROIRequest)
(setf (get map_msgs::GetPointMapROI :response) map_msgs::GetPointMapROIResponse)

(defmethod map_msgs::GetPointMapROIRequest
  (:response () (instance map_msgs::GetPointMapROIResponse :init)))

(setf (get map_msgs::GetPointMapROIRequest :md5sum-) "d955594b5ccde9615cbe5aed9442f733")
(setf (get map_msgs::GetPointMapROIRequest :datatype-) "map_msgs/GetPointMapROIRequest")
(setf (get map_msgs::GetPointMapROIRequest :definition-)
      "float64 x
float64 y
float64 z
float64 r
float64 l_x
float64 l_y
float64 l_z
---
sensor_msgs/PointCloud2 sub_map

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

(setf (get map_msgs::GetPointMapROIResponse :md5sum-) "d955594b5ccde9615cbe5aed9442f733")
(setf (get map_msgs::GetPointMapROIResponse :datatype-) "map_msgs/GetPointMapROIResponse")
(setf (get map_msgs::GetPointMapROIResponse :definition-)
      "float64 x
float64 y
float64 z
float64 r
float64 l_x
float64 l_y
float64 l_z
---
sensor_msgs/PointCloud2 sub_map

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



(provide :map_msgs/GetPointMapROI "d955594b5ccde9615cbe5aed9442f733")


