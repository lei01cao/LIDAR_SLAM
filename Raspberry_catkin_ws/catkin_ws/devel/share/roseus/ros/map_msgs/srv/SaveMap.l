;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::SaveMap)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'SaveMap (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::SAVEMAP")
  (make-package "MAP_MSGS::SAVEMAP"))
(unless (find-package "MAP_MSGS::SAVEMAPREQUEST")
  (make-package "MAP_MSGS::SAVEMAPREQUEST"))
(unless (find-package "MAP_MSGS::SAVEMAPRESPONSE")
  (make-package "MAP_MSGS::SAVEMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass map_msgs::SaveMapRequest
  :super ros::object
  :slots (_filename ))

(defmethod map_msgs::SaveMapRequest
  (:init
   (&key
    ((:filename __filename) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _filename __filename)
   self)
  (:filename
   (&rest __filename)
   (if (keywordp (car __filename))
       (send* _filename __filename)
     (progn
       (if __filename (setq _filename (car __filename)))
       _filename)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _filename
    (send _filename :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _filename
       (send _filename :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _filename
     (send _filename :deserialize buf ptr-) (incf ptr- (send _filename :serialization-length))
   ;;
   self)
  )

(defclass map_msgs::SaveMapResponse
  :super ros::object
  :slots ())

(defmethod map_msgs::SaveMapResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass map_msgs::SaveMap
  :super ros::object
  :slots ())

(setf (get map_msgs::SaveMap :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get map_msgs::SaveMap :datatype-) "map_msgs/SaveMap")
(setf (get map_msgs::SaveMap :request) map_msgs::SaveMapRequest)
(setf (get map_msgs::SaveMap :response) map_msgs::SaveMapResponse)

(defmethod map_msgs::SaveMapRequest
  (:response () (instance map_msgs::SaveMapResponse :init)))

(setf (get map_msgs::SaveMapRequest :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get map_msgs::SaveMapRequest :datatype-) "map_msgs/SaveMapRequest")
(setf (get map_msgs::SaveMapRequest :definition-)
      "
std_msgs/String filename


================================================================================
MSG: std_msgs/String
string data
---
")

(setf (get map_msgs::SaveMapResponse :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get map_msgs::SaveMapResponse :datatype-) "map_msgs/SaveMapResponse")
(setf (get map_msgs::SaveMapResponse :definition-)
      "
std_msgs/String filename


================================================================================
MSG: std_msgs/String
string data
---
")



(provide :map_msgs/SaveMap "716e25f9d9dc76ceba197f93cbf05dc7")


