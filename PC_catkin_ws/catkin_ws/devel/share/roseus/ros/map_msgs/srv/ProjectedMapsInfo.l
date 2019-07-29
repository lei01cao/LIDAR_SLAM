;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::ProjectedMapsInfo)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'ProjectedMapsInfo (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::PROJECTEDMAPSINFO")
  (make-package "MAP_MSGS::PROJECTEDMAPSINFO"))
(unless (find-package "MAP_MSGS::PROJECTEDMAPSINFOREQUEST")
  (make-package "MAP_MSGS::PROJECTEDMAPSINFOREQUEST"))
(unless (find-package "MAP_MSGS::PROJECTEDMAPSINFORESPONSE")
  (make-package "MAP_MSGS::PROJECTEDMAPSINFORESPONSE"))

(in-package "ROS")





(defclass map_msgs::ProjectedMapsInfoRequest
  :super ros::object
  :slots (_projected_maps_info ))

(defmethod map_msgs::ProjectedMapsInfoRequest
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

(defclass map_msgs::ProjectedMapsInfoResponse
  :super ros::object
  :slots ())

(defmethod map_msgs::ProjectedMapsInfoResponse
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

(defclass map_msgs::ProjectedMapsInfo
  :super ros::object
  :slots ())

(setf (get map_msgs::ProjectedMapsInfo :md5sum-) "d7980a33202421c8cd74565e57a4d229")
(setf (get map_msgs::ProjectedMapsInfo :datatype-) "map_msgs/ProjectedMapsInfo")
(setf (get map_msgs::ProjectedMapsInfo :request) map_msgs::ProjectedMapsInfoRequest)
(setf (get map_msgs::ProjectedMapsInfo :response) map_msgs::ProjectedMapsInfoResponse)

(defmethod map_msgs::ProjectedMapsInfoRequest
  (:response () (instance map_msgs::ProjectedMapsInfoResponse :init)))

(setf (get map_msgs::ProjectedMapsInfoRequest :md5sum-) "d7980a33202421c8cd74565e57a4d229")
(setf (get map_msgs::ProjectedMapsInfoRequest :datatype-) "map_msgs/ProjectedMapsInfoRequest")
(setf (get map_msgs::ProjectedMapsInfoRequest :definition-)
      "map_msgs/ProjectedMapInfo[] projected_maps_info


================================================================================
MSG: map_msgs/ProjectedMapInfo
string frame_id
float64 x
float64 y
float64 width
float64 height
float64 min_z
---
")

(setf (get map_msgs::ProjectedMapsInfoResponse :md5sum-) "d7980a33202421c8cd74565e57a4d229")
(setf (get map_msgs::ProjectedMapsInfoResponse :datatype-) "map_msgs/ProjectedMapsInfoResponse")
(setf (get map_msgs::ProjectedMapsInfoResponse :definition-)
      "map_msgs/ProjectedMapInfo[] projected_maps_info


================================================================================
MSG: map_msgs/ProjectedMapInfo
string frame_id
float64 x
float64 y
float64 width
float64 height
float64 min_z
---
")



(provide :map_msgs/ProjectedMapsInfo "d7980a33202421c8cd74565e57a4d229")


