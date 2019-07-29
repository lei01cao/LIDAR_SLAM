;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::SetMapProjections)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'SetMapProjections (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::SETMAPPROJECTIONS")
  (make-package "MAP_MSGS::SETMAPPROJECTIONS"))
(unless (find-package "MAP_MSGS::SETMAPPROJECTIONSREQUEST")
  (make-package "MAP_MSGS::SETMAPPROJECTIONSREQUEST"))
(unless (find-package "MAP_MSGS::SETMAPPROJECTIONSRESPONSE")
  (make-package "MAP_MSGS::SETMAPPROJECTIONSRESPONSE"))

(in-package "ROS")





(defclass map_msgs::SetMapProjectionsRequest
  :super ros::object
  :slots ())

(defmethod map_msgs::SetMapProjectionsRequest
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

(defclass map_msgs::SetMapProjectionsResponse
  :super ros::object
  :slots (_projected_maps_info ))

(defmethod map_msgs::SetMapProjectionsResponse
  (:init
   (&key
    ((:projected_maps_info __projected_maps_info) (let (r) (dotimes (i 0) (push (instance map_msgs::ProjectedMapInfo :init) r)) r))
    )
   (send-super :init)
   (setq _projected_maps_info __projected_maps_info)
   self)
  (:projected_maps_info
   (&rest __projected_maps_info)
   (if (keywordp (car __projected_maps_info))
       (send* _projected_maps_info __projected_maps_info)
     (progn
       (if __projected_maps_info (setq _projected_maps_info (car __projected_maps_info)))
       _projected_maps_info)))
  (:serialization-length
   ()
   (+
    ;; map_msgs/ProjectedMapInfo[] _projected_maps_info
    (apply #'+ (send-all _projected_maps_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; map_msgs/ProjectedMapInfo[] _projected_maps_info
     (write-long (length _projected_maps_info) s)
     (dolist (elem _projected_maps_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; map_msgs/ProjectedMapInfo[] _projected_maps_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _projected_maps_info (let (r) (dotimes (i n) (push (instance map_msgs::ProjectedMapInfo :init) r)) r))
     (dolist (elem- _projected_maps_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass map_msgs::SetMapProjections
  :super ros::object
  :slots ())

(setf (get map_msgs::SetMapProjections :md5sum-) "d7980a33202421c8cd74565e57a4d229")
(setf (get map_msgs::SetMapProjections :datatype-) "map_msgs/SetMapProjections")
(setf (get map_msgs::SetMapProjections :request) map_msgs::SetMapProjectionsRequest)
(setf (get map_msgs::SetMapProjections :response) map_msgs::SetMapProjectionsResponse)

(defmethod map_msgs::SetMapProjectionsRequest
  (:response () (instance map_msgs::SetMapProjectionsResponse :init)))

(setf (get map_msgs::SetMapProjectionsRequest :md5sum-) "d7980a33202421c8cd74565e57a4d229")
(setf (get map_msgs::SetMapProjectionsRequest :datatype-) "map_msgs/SetMapProjectionsRequest")
(setf (get map_msgs::SetMapProjectionsRequest :definition-)
      "---
map_msgs/ProjectedMapInfo[] projected_maps_info


================================================================================
MSG: map_msgs/ProjectedMapInfo
string frame_id
float64 x
float64 y
float64 width
float64 height
float64 min_z
")

(setf (get map_msgs::SetMapProjectionsResponse :md5sum-) "d7980a33202421c8cd74565e57a4d229")
(setf (get map_msgs::SetMapProjectionsResponse :datatype-) "map_msgs/SetMapProjectionsResponse")
(setf (get map_msgs::SetMapProjectionsResponse :definition-)
      "---
map_msgs/ProjectedMapInfo[] projected_maps_info


================================================================================
MSG: map_msgs/ProjectedMapInfo
string frame_id
float64 x
float64 y
float64 width
float64 height
float64 min_z
")



(provide :map_msgs/SetMapProjections "d7980a33202421c8cd74565e57a4d229")


