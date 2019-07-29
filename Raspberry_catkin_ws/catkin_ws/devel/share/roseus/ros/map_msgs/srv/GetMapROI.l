;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::GetMapROI)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'GetMapROI (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::GETMAPROI")
  (make-package "MAP_MSGS::GETMAPROI"))
(unless (find-package "MAP_MSGS::GETMAPROIREQUEST")
  (make-package "MAP_MSGS::GETMAPROIREQUEST"))
(unless (find-package "MAP_MSGS::GETMAPROIRESPONSE")
  (make-package "MAP_MSGS::GETMAPROIRESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass map_msgs::GetMapROIRequest
  :super ros::object
  :slots (_x _y _l_x _l_y ))

(defmethod map_msgs::GetMapROIRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:l_x __l_x) 0.0)
    ((:l_y __l_y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _l_x (float __l_x))
   (setq _l_y (float __l_y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:l_x
   (&optional __l_x)
   (if __l_x (setq _l_x __l_x)) _l_x)
  (:l_y
   (&optional __l_y)
   (if __l_y (setq _l_y __l_y)) _l_y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _l_x
    8
    ;; float64 _l_y
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
     ;; float64 _l_x
       (sys::poke _l_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _l_y
       (sys::poke _l_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _l_x
     (setq _l_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _l_y
     (setq _l_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass map_msgs::GetMapROIResponse
  :super ros::object
  :slots (_sub_map ))

(defmethod map_msgs::GetMapROIResponse
  (:init
   (&key
    ((:sub_map __sub_map) (instance nav_msgs::OccupancyGrid :init))
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
    ;; nav_msgs/OccupancyGrid _sub_map
    (send _sub_map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _sub_map
       (send _sub_map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _sub_map
     (send _sub_map :deserialize buf ptr-) (incf ptr- (send _sub_map :serialization-length))
   ;;
   self)
  )

(defclass map_msgs::GetMapROI
  :super ros::object
  :slots ())

(setf (get map_msgs::GetMapROI :md5sum-) "81aa75ecf00f4571a9be0d9dc6dea512")
(setf (get map_msgs::GetMapROI :datatype-) "map_msgs/GetMapROI")
(setf (get map_msgs::GetMapROI :request) map_msgs::GetMapROIRequest)
(setf (get map_msgs::GetMapROI :response) map_msgs::GetMapROIResponse)

(defmethod map_msgs::GetMapROIRequest
  (:response () (instance map_msgs::GetMapROIResponse :init)))

(setf (get map_msgs::GetMapROIRequest :md5sum-) "81aa75ecf00f4571a9be0d9dc6dea512")
(setf (get map_msgs::GetMapROIRequest :datatype-) "map_msgs/GetMapROIRequest")
(setf (get map_msgs::GetMapROIRequest :definition-)
      "float64 x
float64 y
float64 l_x
float64 l_y
---
nav_msgs/OccupancyGrid sub_map

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get map_msgs::GetMapROIResponse :md5sum-) "81aa75ecf00f4571a9be0d9dc6dea512")
(setf (get map_msgs::GetMapROIResponse :datatype-) "map_msgs/GetMapROIResponse")
(setf (get map_msgs::GetMapROIResponse :definition-)
      "float64 x
float64 y
float64 l_x
float64 l_y
---
nav_msgs/OccupancyGrid sub_map

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :map_msgs/GetMapROI "81aa75ecf00f4571a9be0d9dc6dea512")


