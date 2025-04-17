; Auto-generated. Do not edit!


(cl:in-package common-msg)


;//! \htmlinclude gesture.msg.html

(cl:defclass <gesture> (roslisp-msg-protocol:ros-message)
  ((IMUnum
    :reader IMUnum
    :initarg :IMUnum
    :type cl:fixnum
    :initform 0)
   (EulerAngleX
    :reader EulerAngleX
    :initarg :EulerAngleX
    :type cl:float
    :initform 0.0)
   (EulerAngleY
    :reader EulerAngleY
    :initarg :EulerAngleY
    :type cl:float
    :initform 0.0)
   (EulerAngleZ
    :reader EulerAngleZ
    :initarg :EulerAngleZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass gesture (<gesture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gesture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gesture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common-msg:<gesture> is deprecated: use common-msg:gesture instead.")))

(cl:ensure-generic-function 'IMUnum-val :lambda-list '(m))
(cl:defmethod IMUnum-val ((m <gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:IMUnum-val is deprecated.  Use common-msg:IMUnum instead.")
  (IMUnum m))

(cl:ensure-generic-function 'EulerAngleX-val :lambda-list '(m))
(cl:defmethod EulerAngleX-val ((m <gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:EulerAngleX-val is deprecated.  Use common-msg:EulerAngleX instead.")
  (EulerAngleX m))

(cl:ensure-generic-function 'EulerAngleY-val :lambda-list '(m))
(cl:defmethod EulerAngleY-val ((m <gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:EulerAngleY-val is deprecated.  Use common-msg:EulerAngleY instead.")
  (EulerAngleY m))

(cl:ensure-generic-function 'EulerAngleZ-val :lambda-list '(m))
(cl:defmethod EulerAngleZ-val ((m <gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common-msg:EulerAngleZ-val is deprecated.  Use common-msg:EulerAngleZ instead.")
  (EulerAngleZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gesture>) ostream)
  "Serializes a message object of type '<gesture>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'IMUnum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'IMUnum)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'EulerAngleX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'EulerAngleY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'EulerAngleZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gesture>) istream)
  "Deserializes a message object of type '<gesture>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'IMUnum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'IMUnum)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EulerAngleX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EulerAngleY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EulerAngleZ) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gesture>)))
  "Returns string type for a message object of type '<gesture>"
  "common/gesture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gesture)))
  "Returns string type for a message object of type 'gesture"
  "common/gesture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gesture>)))
  "Returns md5sum for a message object of type '<gesture>"
  "88d3ec4e2cf6db353d34286a6368badd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gesture)))
  "Returns md5sum for a message object of type 'gesture"
  "88d3ec4e2cf6db353d34286a6368badd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gesture>)))
  "Returns full string definition for message of type '<gesture>"
  (cl:format cl:nil "uint16 IMUnum~%float64 EulerAngleX~%float64 EulerAngleY~%float64 EulerAngleZ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gesture)))
  "Returns full string definition for message of type 'gesture"
  (cl:format cl:nil "uint16 IMUnum~%float64 EulerAngleX~%float64 EulerAngleY~%float64 EulerAngleZ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gesture>))
  (cl:+ 0
     2
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gesture>))
  "Converts a ROS message object to a list"
  (cl:list 'gesture
    (cl:cons ':IMUnum (IMUnum msg))
    (cl:cons ':EulerAngleX (EulerAngleX msg))
    (cl:cons ':EulerAngleY (EulerAngleY msg))
    (cl:cons ':EulerAngleZ (EulerAngleZ msg))
))
