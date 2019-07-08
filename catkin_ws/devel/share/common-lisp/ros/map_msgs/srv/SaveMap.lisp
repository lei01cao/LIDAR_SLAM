; Auto-generated. Do not edit!


(cl:in-package map_msgs-srv)


;//! \htmlinclude SaveMap-request.msg.html

(cl:defclass <SaveMap-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass SaveMap-request (<SaveMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-srv:<SaveMap-request> is deprecated: use map_msgs-srv:SaveMap-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SaveMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader map_msgs-srv:filename-val is deprecated.  Use map_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMap-request>) ostream)
  "Serializes a message object of type '<SaveMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filename) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMap-request>) istream)
  "Deserializes a message object of type '<SaveMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filename) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMap-request>)))
  "Returns string type for a service object of type '<SaveMap-request>"
  "map_msgs/SaveMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMap-request)))
  "Returns string type for a service object of type 'SaveMap-request"
  "map_msgs/SaveMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMap-request>)))
  "Returns md5sum for a message object of type '<SaveMap-request>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMap-request)))
  "Returns md5sum for a message object of type 'SaveMap-request"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMap-request>)))
  "Returns full string definition for message of type '<SaveMap-request>"
  (cl:format cl:nil "~%std_msgs/String filename~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMap-request)))
  "Returns full string definition for message of type 'SaveMap-request"
  (cl:format cl:nil "~%std_msgs/String filename~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMap-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude SaveMap-response.msg.html

(cl:defclass <SaveMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveMap-response (<SaveMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name map_msgs-srv:<SaveMap-response> is deprecated: use map_msgs-srv:SaveMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMap-response>) ostream)
  "Serializes a message object of type '<SaveMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMap-response>) istream)
  "Deserializes a message object of type '<SaveMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMap-response>)))
  "Returns string type for a service object of type '<SaveMap-response>"
  "map_msgs/SaveMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMap-response)))
  "Returns string type for a service object of type 'SaveMap-response"
  "map_msgs/SaveMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMap-response>)))
  "Returns md5sum for a message object of type '<SaveMap-response>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMap-response)))
  "Returns md5sum for a message object of type 'SaveMap-response"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMap-response>)))
  "Returns full string definition for message of type '<SaveMap-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMap-response)))
  "Returns full string definition for message of type 'SaveMap-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveMap)))
  'SaveMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveMap)))
  'SaveMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMap)))
  "Returns string type for a service object of type '<SaveMap>"
  "map_msgs/SaveMap")