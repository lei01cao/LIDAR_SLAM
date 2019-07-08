;; Auto-generated. Do not edit!


(when (boundp 'map_msgs::ProjectedMapInfo)
  (if (not (find-package "MAP_MSGS"))
    (make-package "MAP_MSGS"))
  (shadow 'ProjectedMapInfo (find-package "MAP_MSGS")))
(unless (find-package "MAP_MSGS::PROJECTEDMAPINFO")
  (make-package "MAP_MSGS::PROJECTEDMAPINFO"))

(in-package "ROS")
;;//! \htmlinclude ProjectedMapInfo.msg.html


(defclass map_msgs::ProjectedMapInfo
  :super ros::object
  :slots (_frame_id _x _y _width _height _min_z _max_z ))

(defmethod map_msgs::ProjectedMapInfo
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:min_z __min_z) 0.0)
    ((:max_z __max_z) 0.0)
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _min_z (float __min_z))
   (setq _max_z (float __max_z))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:min_z
   (&optional __min_z)
   (if __min_z (setq _min_z __min_z)) _min_z)
  (:max_z
   (&optional __max_z)
   (if __max_z (setq _max_z __max_z)) _max_z)
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; float64 _min_z
    8
    ;; float64 _max_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_z
       (sys::poke _min_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_z
       (sys::poke _max_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_z
     (setq _min_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_z
     (setq _max_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get map_msgs::ProjectedMapInfo :md5sum-) "2dc10595ae94de23f22f8a6d2a0eef7a")
(setf (get map_msgs::ProjectedMapInfo :datatype-) "map_msgs/ProjectedMapInfo")
(setf (get map_msgs::ProjectedMapInfo :definition-)
      "string frame_id
float64 x
float64 y
float64 width
float64 height
float64 min_z
float64 max_z
")



(provide :map_msgs/ProjectedMapInfo "2dc10595ae94de23f22f8a6d2a0eef7a")


