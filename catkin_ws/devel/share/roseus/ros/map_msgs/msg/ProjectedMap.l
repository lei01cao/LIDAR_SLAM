;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::ProjectedMap)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'ProjectedMap (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::PROJECTEDMAP")
  (make-package "MAP_MSGS::PROJECTEDMAP"))

(in-package "ROS")
;;//! \htmlinclude ProjectedMap.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass map_msgs::ProjectedMap
  :super ros::object
  :slots (_map _min_z _max_z ))

(defmethod map_msgs::ProjectedMap
  (:init
   (&key
    ((:map __map) (instance nav_msgs::OccupancyGrid :init))
    ((:min_z __min_z) 0.0)
    ((:max_z __max_z) 0.0)
    )
   (send-super :init)
   (setq _map __map)
   (setq _min_z (float __min_z))
   (setq _max_z (float __max_z))
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:min_z
   (&optional __min_z)
   (if __min_z (setq _min_z __min_z)) _min_z)
  (:max_z
   (&optional __max_z)
   (if __max_z (setq _max_z __max_z)) _max_z)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/OccupancyGrid _map
    (send _map :serialization-length)
    ;; float64 _min_z
    8
    ;; float64 _max_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/OccupancyGrid _map
       (send _map :serialize s)
     ;; float64 _min_z
       (sys::poke _min_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_z
       (sys::poke _max_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/OccupancyGrid _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;; float64 _min_z
     (setq _min_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_z
     (setq _max_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get map_msgs::ProjectedMap :md5sum-) "7bbe8f96e45089681dc1ea7d023cbfca")
(setf (get map_msgs::ProjectedMap :datatype-) "map_msgs/ProjectedMap")
(setf (get map_msgs::ProjectedMap :definition-)
      "nav_msgs/OccupancyGrid map
float64 min_z
float64 max_z
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



(provide :map_msgs/ProjectedMap "7bbe8f96e45089681dc1ea7d023cbfca")


