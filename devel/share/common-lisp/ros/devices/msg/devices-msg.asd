
(cl:in-package :asdf)

(defsystem "devices-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GpsMsg" :depends-on ("_package_GpsMsg"))
    (:file "_package_GpsMsg" :depends-on ("_package"))
    (:file "GpsStatus" :depends-on ("_package_GpsStatus"))
    (:file "_package_GpsStatus" :depends-on ("_package"))
    (:file "RtkMsg" :depends-on ("_package_RtkMsg"))
    (:file "_package_RtkMsg" :depends-on ("_package"))
    (:file "SliderMsg" :depends-on ("_package_SliderMsg"))
    (:file "_package_SliderMsg" :depends-on ("_package"))
    (:file "SliderSetting" :depends-on ("_package_SliderSetting"))
    (:file "_package_SliderSetting" :depends-on ("_package"))
    (:file "SpanHeader" :depends-on ("_package_SpanHeader"))
    (:file "_package_SpanHeader" :depends-on ("_package"))
    (:file "SpanNav" :depends-on ("_package_SpanNav"))
    (:file "_package_SpanNav" :depends-on ("_package"))
    (:file "WheelMsg" :depends-on ("_package_WheelMsg"))
    (:file "_package_WheelMsg" :depends-on ("_package"))
  ))