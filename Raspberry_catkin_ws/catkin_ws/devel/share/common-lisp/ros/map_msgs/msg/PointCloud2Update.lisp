; Auto-generated. Do not edit!


(cl:in-package map_msgs-msg)


;//! \htmlinclude PointCloud2Update.msg.html

(cl:defclass <PointCloud2Update> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (points
    :reader points
    :initarg :points
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass PointCloud2Update (<PointCloud2Update>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointCloud2Update>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointCloud2Update)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-msg:<PointCloud2Update> is deprecated: use map_msgs-msg:PointCloud2Update instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PointCloud2Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:header-val is deprecated.  Use map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PointCloud2Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:type-val is deprecated.  Use map_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PointCloud2Update>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-msg:points-val is deprecated.  Use map_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PointCloud2Update>)))
    "Constants for message type '<PointCloud2Update>"
  '((:ADD . 0)
    (:DELETE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PointCloud2Update)))
    "Constants for message type 'PointCloud2Update"
  '((:ADD . 0)
    (:DELETE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointCloud2Update>) ostream)
  "Serializes a message object of type '<PointCloud2Update>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointCloud2Update>) istream)
  "Deserializes a message object of type '<PointCloud2Update>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointCloud2Update>)))
  "Returns string type for a message object of type '<PointCloud2Update>"
  "map_msgs/PointCloud2Update")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointCloud2Update)))
  "Returns string type for a message object of type 'PointCloud2Update"
  "map_msgs/PointCloud2Update")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointCloud2Update>)))
  "Returns md5sum for a message object of type '<PointCloud2Update>"
  "6c58e4f249ae9cd2b24fb1ee0f99195e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointCloud2Update)))
  "Returns md5sum for a message object of type 'PointCloud2Update"
  "6c58e4f249ae9cd2b24fb1ee0f99195e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointCloud2Update>)))
  "Returns full string definition for message of type '<PointCloud2Update>"
  (cl:format cl:nil "uint32 ADD=0~%uint32 DELETE=1~%Header header~%uint32 type          # type of update, one of ADD or DELETE~%sensor_msgs/PointCloud2 points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointCloud2Update)))
  "Returns full string definition for message of type 'PointCloud2Update"
  (cl:format cl:nil "uint32 ADD=0~%uint32 DELETE=1~%Header header~%uint32 type          # type of update, one of ADD or DELETE~%sensor_msgs/PointCloud2 points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointCloud2Update>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointCloud2Update>))
  "Converts a ROS message object to a list"
  (cl:list 'PointCloud2Update
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':points (points msg))
))
