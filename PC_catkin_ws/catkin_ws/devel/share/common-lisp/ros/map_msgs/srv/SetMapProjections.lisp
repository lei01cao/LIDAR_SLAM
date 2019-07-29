; Auto-generated. Do not edit!


(cl:in-package map_msgs-srv)


;//! \htmlinclude SetMapProjections-request.msg.html

(cl:defclass <SetMapProjections-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetMapProjections-request (<SetMapProjections-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMapProjections-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMapProjections-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-srv:<SetMapProjections-request> is deprecated: use map_msgs-srv:SetMapProjections-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMapProjections-request>) ostream)
  "Serializes a message object of type '<SetMapProjections-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMapProjections-request>) istream)
  "Deserializes a message object of type '<SetMapProjections-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMapProjections-request>)))
  "Returns string type for a service object of type '<SetMapProjections-request>"
  "map_msgs/SetMapProjectionsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMapProjections-request)))
  "Returns string type for a service object of type 'SetMapProjections-request"
  "map_msgs/SetMapProjectionsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMapProjections-request>)))
  "Returns md5sum for a message object of type '<SetMapProjections-request>"
  "d7980a33202421c8cd74565e57a4d229")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMapProjections-request)))
  "Returns md5sum for a message object of type 'SetMapProjections-request"
  "d7980a33202421c8cd74565e57a4d229")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMapProjections-request>)))
  "Returns full string definition for message of type '<SetMapProjections-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMapProjections-request)))
  "Returns full string definition for message of type 'SetMapProjections-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMapProjections-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMapProjections-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMapProjections-request
))
;//! \htmlinclude SetMapProjections-response.msg.html

(cl:defclass <SetMapProjections-response> (roslisp-msg-protocol:ros-message)
  ((projected_maps_info
    :reader projected_maps_info
    :initarg :projected_maps_info
    :type (cl:vector map_msgs-msg:ProjectedMapInfo)
   :initform (cl:make-array 0 :element-type 'map_msgs-msg:ProjectedMapInfo :initial-element (cl:make-instance 'map_msgs-msg:ProjectedMapInfo))))
)

(cl:defclass SetMapProjections-response (<SetMapProjections-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMapProjections-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMapProjections-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-srv:<SetMapProjections-response> is deprecated: use map_msgs-srv:SetMapProjections-response instead.")))

(cl:ensure-generic-function 'projected_maps_info-val :lambda-list '(m))
(cl:defmethod projected_maps_info-val ((m <SetMapProjections-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-srv:projected_maps_info-val is deprecated.  Use map_msgs-srv:projected_maps_info instead.")
  (projected_maps_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMapProjections-response>) ostream)
  "Serializes a message object of type '<SetMapProjections-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'projected_maps_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'projected_maps_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMapProjections-response>) istream)
  "Deserializes a message object of type '<SetMapProjections-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMapProjections-response>)))
  "Returns string type for a service object of type '<SetMapProjections-response>"
  "map_msgs/SetMapProjectionsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMapProjections-response)))
  "Returns string type for a service object of type 'SetMapProjections-response"
  "map_msgs/SetMapProjectionsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMapProjections-response>)))
  "Returns md5sum for a message object of type '<SetMapProjections-response>"
  "d7980a33202421c8cd74565e57a4d229")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMapProjections-response)))
  "Returns md5sum for a message object of type 'SetMapProjections-response"
  "d7980a33202421c8cd74565e57a4d229")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMapProjections-response>)))
  "Returns full string definition for message of type '<SetMapProjections-response>"
  (cl:format cl:nil "map_msgs/ProjectedMapInfo[] projected_maps_info~%~%~%================================================================================~%MSG: map_msgs/ProjectedMapInfo~%string frame_id~%float64 x~%float64 y~%float64 width~%float64 height~%float64 min_z~%float64 max_z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMapProjections-response)))
  "Returns full string definition for message of type 'SetMapProjections-response"
  (cl:format cl:nil "map_msgs/ProjectedMapInfo[] projected_maps_info~%~%~%================================================================================~%MSG: map_msgs/ProjectedMapInfo~%string frame_id~%float64 x~%float64 y~%float64 width~%float64 height~%float64 min_z~%float64 max_z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMapProjections-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'projected_maps_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMapProjections-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMapProjections-response
    (cl:cons ':projected_maps_info (projected_maps_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMapProjections)))
  'SetMapProjections-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMapProjections)))
  'SetMapProjections-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMapProjections)))
  "Returns string type for a service object of type '<SetMapProjections>"
  "map_msgs/SetMapProjections")