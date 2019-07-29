
(cl:in-package :asdf)

(defsystem "map_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :map_msgs-msg
               :nav_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetMapROI" :depends-on ("_package_GetMapROI"))
    (:file "_package_GetMapROI" :depends-on ("_package"))
    (:file "GetPointMap" :depends-on ("_package_GetPointMap"))
    (:file "_package_GetPointMap" :depends-on ("_package"))
    (:file "GetPointMapROI" :depends-on ("_package_GetPointMapROI"))
    (:file "_package_GetPointMapROI" :depends-on ("_package"))
    (:file "ProjectedMapsInfo" :depends-on ("_package_ProjectedMapsInfo"))
    (:file "_package_ProjectedMapsInfo" :depends-on ("_package"))
    (:file "SaveMap" :depends-on ("_package_SaveMap"))
    (:file "_package_SaveMap" :depends-on ("_package"))
    (:file "SetMapProjections" :depends-on ("_package_SetMapProjections"))
    (:file "_package_SetMapProjections" :depends-on ("_package"))
  ))