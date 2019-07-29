; Auto-generated. Do not edit!


(cl:in-package map_msgs-srv)


;//! \htmlinclude ProjectedMapsInfo-request.msg.html

(cl:defclass <ProjectedMapsInfo-request> (roslisp-msg-protocol:ros-message)
  ((projected_maps_info
    :reader projected_maps_info
    :initarg :projected_maps_info
    :type (cl:vector map_msgs-msg:ProjectedMapInfo)
   :initform (cl:make-array 0 :element-type 'map_msgs-msg:ProjectedMapInfo :initial-element (cl:make-instance 'map_msgs-msg:ProjectedMapInfo))))
)

(cl:defclass ProjectedMapsInfo-request (<ProjectedMapsInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProjectedMapsInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProjectedMapsInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-srv:<ProjectedMapsInfo-request> is deprecated: use map_msgs-srv:ProjectedMapsInfo-request instead.")))

(cl:ensure-generic-function 'projected_maps_info-val :lambda-list '(m))
(cl:defmethod projected_maps_info-val ((m <ProjectedMapsInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-srv:projected_maps_info-val is deprecated.  Use map_msgs-srv:projected_maps_info instead.")
  (projected_maps_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProjectedMapsInfo-request>) ostream)
  "Serializes a message object of type '<ProjectedMapsInfo-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'projected_maps_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'projected_maps_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProjectedMapsInfo-request>) istream)
  "Deserializes a message object of type '<ProjectedMapsInfo-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'projected_maps_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'projected_maps_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'map_msgs-msg:ProjectedMapInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProjectedMapsInfo-request>)))
  "Returns string type for a service object of type '<ProjectedMapsInfo-request>"
  "map_msgs/ProjectedMapsInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProjectedMapsInfo-request)))
  "Returns string type for a service object of type 'ProjectedMapsInfo-request"
  "map_msgs/ProjectedMapsInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProjectedMapsInfo-request>)))
  "Returns md5sum for a message object of type '<ProjectedMapsInfo-request>"
  "d7980a33202421c8cd74565e57a4d229")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProjectedMapsInfo-request)))
  "Returns md5sum for a message object of type 'ProjectedMapsInfo-request"
  "d7980a33202421c8cd74565e57a4d229")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProjectedMapsInfo-request>)))
  "Returns full string definition for message of type '<ProjectedMapsInfo-request>"
  (cl:format cl:nil "map_msgs/ProjectedMapInfo[] projected_maps_info~%~%~%================================================================================~%MSG: map_msgs/ProjectedMapInfo~%string frame_id~%float64 x~%float64 y~%float64 width~%float64 height~%float64 min_z~%float64 max_z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProjectedMapsInfo-request)))
  "Returns full string definition for message of type 'ProjectedMapsInfo-request"
  (cl:format cl:nil "map_msgs/ProjectedMapInfo[] projected_maps_info~%~%~%================================================================================~%MSG: map_msgs/ProjectedMapInfo~%string frame_id~%float64 x~%float64 y~%float64 width~%float64 height~%float64 min_z~%float64 max_z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProjectedMapsInfo-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'projected_maps_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProjectedMapsInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ProjectedMapsInfo-request
    (cl:cons ':projected_maps_info (projected_maps_info msg))
))
;//! \htmlinclude ProjectedMapsInfo-response.msg.html

(cl:defclass <ProjectedMapsInfo-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ProjectedMapsInfo-response (<ProjectedMapsInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProjectedMapsInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProjectedMapsInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-srv:<ProjectedMapsInfo-response> is deprecated: use map_msgs-srv:ProjectedMapsInfo-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProjectedMapsInfo-response>) ostream)
  "Serializes a message object of type '<ProjectedMapsInfo-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProjectedMapsInfo-response>) istream)
  "Deserializes a message object of type '<ProjectedMapsInfo-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProjectedMapsInfo-response>)))
  "Returns string type for a service object of type '<ProjectedMapsInfo-response>"
  "map_msgs/ProjectedMapsInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProjectedMapsInfo-response)))
  "Returns string type for a service object of type 'ProjectedMapsInfo-response"
  "map_msgs/ProjectedMapsInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProjectedMapsInfo-response>)))
  "Returns md5sum for a message object of type '<ProjectedMapsInfo-response>"
  "d7980a33202421c8cd74565e57a4d229")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProjectedMapsInfo-response)))
  "Returns md5sum for a message object of type 'ProjectedMapsInfo-response"
  "d7980a33202421c8cd74565e57a4d229")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProjectedMapsInfo-response>)))
  "Returns full string definition for message of type '<ProjectedMapsInfo-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProjectedMapsInfo-response)))
  "Returns full string definition for message of type 'ProjectedMapsInfo-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProjectedMapsInfo-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProjectedMapsInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ProjectedMapsInfo-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ProjectedMapsInfo)))
  'ProjectedMapsInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ProjectedMapsInfo)))
  'ProjectedMapsInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProjectedMapsInfo)))
  "Returns string type for a service object of type '<ProjectedMapsInfo>"
  "map_msgs/ProjectedMapsInfo")