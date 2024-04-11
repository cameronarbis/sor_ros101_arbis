;; Auto-generated. Do not edit!


(when (boundp 'ros_tutorial::Weight)
  (if (not (find-package "ROS_TUTORIAL"))
    (make-package "ROS_TUTORIAL"))
  (shadow 'Weight (find-package "ROS_TUTORIAL")))
(unless (find-package "ROS_TUTORIAL::WEIGHT")
  (make-package "ROS_TUTORIAL::WEIGHT"))

(in-package "ROS")
;;//! \htmlinclude Weight.msg.html


(defclass ros_tutorial::Weight
  :super ros::object
  :slots (_weight ))

(defmethod ros_tutorial::Weight
  (:init
   (&key
    ((:weight __weight) 0.0)
    )
   (send-super :init)
   (setq _weight (float __weight))
   self)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:serialization-length
   ()
   (+
    ;; float64 _weight
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_tutorial::Weight :md5sum-) "41998f6691705e7d3db1ca4195275ab0")
(setf (get ros_tutorial::Weight :datatype-) "ros_tutorial/Weight")
(setf (get ros_tutorial::Weight :definition-)
      "float64 weight

")



(provide :ros_tutorial/Weight "41998f6691705e7d3db1ca4195275ab0")


