; Auto-generated. Do not edit!


(cl:in-package map_msgs-srv)


;//! \htmlinclude GetMapROI-request.msg.html

(cl:defclass <GetMapROI-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (l_x
    :reader l_x
    :initarg :l_x
    :type cl:float
    :initform 0.0)
   (l_y
    :reader l_y
    :initarg :l_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetMapROI-request (<GetMapROI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapROI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapROI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-srv:<GetMapROI-request> is deprecated: use map_msgs-srv:GetMapROI-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetMapROI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-srv:x-val is deprecated.  Use map_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetMapROI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-srv:y-val is deprecated.  Use map_msgs-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'l_x-val :lambda-list '(m))
(cl:defmethod l_x-val ((m <GetMapROI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-srv:l_x-val is deprecated.  Use map_msgs-srv:l_x instead.")
  (l_x m))

(cl:ensure-generic-function 'l_y-val :lambda-list '(m))
(cl:defmethod l_y-val ((m <GetMapROI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-srv:l_y-val is deprecated.  Use map_msgs-srv:l_y instead.")
  (l_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapROI-request>) ostream)
  "Serializes a message object of type '<GetMapROI-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'l_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'l_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapROI-request>) istream)
  "Deserializes a message object of type '<GetMapROI-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapROI-request>)))
  "Returns string type for a service object of type '<GetMapROI-request>"
  "map_msgs/GetMapROIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapROI-request)))
  "Returns string type for a service object of type 'GetMapROI-request"
  "map_msgs/GetMapROIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapROI-request>)))
  "Returns md5sum for a message object of type '<GetMapROI-request>"
  "81aa75ecf00f4571a9be0d9dc6dea512")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapROI-request)))
  "Returns md5sum for a message object of type 'GetMapROI-request"
  "81aa75ecf00f4571a9be0d9dc6dea512")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapROI-request>)))
  "Returns full string definition for message of type '<GetMapROI-request>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 l_x~%float64 l_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapROI-request)))
  "Returns full string definition for message of type 'GetMapROI-request"
  (cl:format cl:nil "float64 x~%float64 y~%float64 l_x~%float64 l_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapROI-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapROI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapROI-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':l_x (l_x msg))
    (cl:cons ':l_y (l_y msg))
))
;//! \htmlinclude GetMapROI-response.msg.html

(cl:defclass <GetMapROI-response> (roslisp-msg-protocol:ros-message)
  ((sub_map
    :reader sub_map
    :initarg :sub_map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass GetMapROI-response (<GetMapROI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapROI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapROI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-srv:<GetMapROI-response> is deprecated: use map_msgs-srv:GetMapROI-response instead.")))

(cl:ensure-generic-function 'sub_map-val :lambda-list '(m))
(cl:defmethod sub_map-val ((m <GetMapROI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-srv:sub_map-val is deprecated.  Use map_msgs-srv:sub_map instead.")
  (sub_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapROI-response>) ostream)
  "Serializes a message object of type '<GetMapROI-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sub_map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapROI-response>) istream)
  "Deserializes a message object of type '<GetMapROI-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sub_map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapROI-response>)))
  "Returns string type for a service object of type '<GetMapROI-response>"
  "map_msgs/GetMapROIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapROI-response)))
  "Returns string type for a service object of type 'GetMapROI-response"
  "map_msgs/GetMapROIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapROI-response>)))
  "Returns md5sum for a message object of type '<GetMapROI-response>"
  "81aa75ecf00f4571a9be0d9dc6dea512")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapROI-response)))
  "Returns md5sum for a message object of type 'GetMapROI-response"
  "81aa75ecf00f4571a9be0d9dc6dea512")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapROI-response>)))
  "Returns full string definition for message of type '<GetMapROI-response>"
  (cl:format cl:nil "nav_msgs/OccupancyGrid sub_map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapROI-response)))
  "Returns full string definition for message of type 'GetMapROI-response"
  (cl:format cl:nil "nav_msgs/OccupancyGrid sub_map~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapROI-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sub_map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapROI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapROI-response
    (cl:cons ':sub_map (sub_map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMapROI)))
  'GetMapROI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMapROI)))
  'GetMapROI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapROI)))
  "Returns string type for a service object of type '<GetMapROI>"
  "map_msgs/GetMapROI")