; Auto-generated. Do not edit!


(cl:in-package map_msgs-msg)


;//! \htmlinclude ProjectedMap.msg.html

(cl:defclass <ProjectedMap> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid))
   (min_z
    :reader min_z
    :initarg :min_z
    :type cl:float
    :initform 0.0)
   (max_z
    :reader max_z
    :initarg :max_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass ProjectedMap (<ProjectedMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProjectedMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProjectedMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-msg:<ProjectedMap> is deprecated: use map_msgs-msg:ProjectedMap instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <ProjectedMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:map-val is deprecated.  Use map_msgs-msg:map instead.")
  (map m))

(cl:ensure-generic-function 'min_z-val :lambda-list '(m))
(cl:defmethod min_z-val ((m <ProjectedMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:min_z-val is deprecated.  Use map_msgs-msg:min_z instead.")
  (min_z m))

(cl:ensure-generic-function 'max_z-val :lambda-list '(m))
(cl:defmethod max_z-val ((m <ProjectedMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:max_z-val is deprecated.  Use map_msgs-msg:max_z instead.")
  (max_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProjectedMap>) ostream)
  "Serializes a message object of type '<ProjectedMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProjectedMap>) istream)
  "Deserializes a message object of type '<ProjectedMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProjectedMap>)))
  "Returns string type for a message object of type '<ProjectedMap>"
  "map_msgs/ProjectedMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProjectedMap)))
  "Returns string type for a message object of type 'ProjectedMap"
  "map_msgs/ProjectedMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProjectedMap>)))
  "Returns md5sum for a message object of type '<ProjectedMap>"
  "7bbe8f96e45089681dc1ea7d023cbfca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProjectedMap)))
  "Returns md5sum for a message object of type 'ProjectedMap"
  "7bbe8f96e45089681dc1ea7d023cbfca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProjectedMap>)))
  "Returns full string definition for message of type '<ProjectedMap>"
  (cl:format cl:nil "nav_msgs/OccupancyGrid map~%float64 min_z~%float64 max_z~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProjectedMap)))
  "Returns full string definition for message of type 'ProjectedMap"
  (cl:format cl:nil "nav_msgs/OccupancyGrid map~%float64 min_z~%float64 max_z~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProjectedMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProjectedMap>))
  "Converts a ROS message object to a list"
  (cl:list 'ProjectedMap
    (cl:cons ':map (map msg))
    (cl:cons ':min_z (min_z msg))
    (cl:cons ':max_z (max_z msg))
))
