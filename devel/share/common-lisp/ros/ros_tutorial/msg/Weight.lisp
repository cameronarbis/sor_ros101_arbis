; Auto-generated. Do not edit!


(cl:in-package ros_tutorial-msg)


;//! \htmlinclude Weight.msg.html

(cl:defclass <Weight> (roslisp-msg-protocol:ros-message)
  ((weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0))
)

(cl:defclass Weight (<Weight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Weight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Weight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_tutorial-msg:<Weight> is deprecated: use ros_tutorial-msg:Weight instead.")))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <Weight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_tutorial-msg:weight-val is deprecated.  Use ros_tutorial-msg:weight instead.")
  (weight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Weight>) ostream)
  "Serializes a message object of type '<Weight>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Weight>) istream)
  "Deserializes a message object of type '<Weight>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Weight>)))
  "Returns string type for a message object of type '<Weight>"
  "ros_tutorial/Weight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Weight)))
  "Returns string type for a message object of type 'Weight"
  "ros_tutorial/Weight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Weight>)))
  "Returns md5sum for a message object of type '<Weight>"
  "41998f6691705e7d3db1ca4195275ab0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Weight)))
  "Returns md5sum for a message object of type 'Weight"
  "41998f6691705e7d3db1ca4195275ab0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Weight>)))
  "Returns full string definition for message of type '<Weight>"
  (cl:format cl:nil "float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Weight)))
  "Returns full string definition for message of type 'Weight"
  (cl:format cl:nil "float64 weight~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Weight>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Weight>))
  "Converts a ROS message object to a list"
  (cl:list 'Weight
    (cl:cons ':weight (weight msg))
))
