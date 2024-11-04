; Auto-generated. Do not edit!


(cl:in-package common-msg)


;//! \htmlinclude motor.msg.html

(cl:defclass <motor> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (PWM
    :reader PWM
    :initarg :PWM
    :type cl:float
    :initform 0.0))
)

(cl:defclass motor (<motor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common-msg:<motor> is deprecated: use common-msg:motor instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <motor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:num-val is deprecated.  Use common-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'PWM-val :lambda-list '(m))
(cl:defmethod PWM-val ((m <motor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:PWM-val is deprecated.  Use common-msg:PWM instead.")
  (PWM m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor>) ostream)
  "Serializes a message object of type '<motor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'PWM))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor>) istream)
  "Deserializes a message object of type '<motor>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'PWM) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor>)))
  "Returns string type for a message object of type '<motor>"
  "common/motor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor)))
  "Returns string type for a message object of type 'motor"
  "common/motor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor>)))
  "Returns md5sum for a message object of type '<motor>"
  "fcb8db8f718aced907ae4911d3282034")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor)))
  "Returns md5sum for a message object of type 'motor"
  "fcb8db8f718aced907ae4911d3282034")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor>)))
  "Returns full string definition for message of type '<motor>"
  (cl:format cl:nil "uint16 num~%# BCM coding : 5 6 12 13 16 19 20 21~%float64 PWM~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor)))
  "Returns full string definition for message of type 'motor"
  (cl:format cl:nil "uint16 num~%# BCM coding : 5 6 12 13 16 19 20 21~%float64 PWM~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor>))
  (cl:+ 0
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor>))
  "Converts a ROS message object to a list"
  (cl:list 'motor
    (cl:cons ':num (num msg))
    (cl:cons ':PWM (PWM msg))
))
