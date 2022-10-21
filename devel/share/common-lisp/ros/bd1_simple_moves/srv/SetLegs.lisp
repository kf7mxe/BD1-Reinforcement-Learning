; Auto-generated. Do not edit!


(cl:in-package bd1_simple_moves-srv)


;//! \htmlinclude SetLegs-request.msg.html

(cl:defclass <SetLegs-request> (roslisp-msg-protocol:ros-message)
  ((up_l
    :reader up_l
    :initarg :up_l
    :type cl:float
    :initform 0.0)
   (up_r
    :reader up_r
    :initarg :up_r
    :type cl:float
    :initform 0.0)
   (mid_l
    :reader mid_l
    :initarg :mid_l
    :type cl:float
    :initform 0.0)
   (mid_r
    :reader mid_r
    :initarg :mid_r
    :type cl:float
    :initform 0.0)
   (feet_l
    :reader feet_l
    :initarg :feet_l
    :type cl:float
    :initform 0.0)
   (feet_r
    :reader feet_r
    :initarg :feet_r
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetLegs-request (<SetLegs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLegs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLegs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_simple_moves-srv:<SetLegs-request> is deprecated: use bd1_simple_moves-srv:SetLegs-request instead.")))

(cl:ensure-generic-function 'up_l-val :lambda-list '(m))
(cl:defmethod up_l-val ((m <SetLegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_simple_moves-srv:up_l-val is deprecated.  Use bd1_simple_moves-srv:up_l instead.")
  (up_l m))

(cl:ensure-generic-function 'up_r-val :lambda-list '(m))
(cl:defmethod up_r-val ((m <SetLegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_simple_moves-srv:up_r-val is deprecated.  Use bd1_simple_moves-srv:up_r instead.")
  (up_r m))

(cl:ensure-generic-function 'mid_l-val :lambda-list '(m))
(cl:defmethod mid_l-val ((m <SetLegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_simple_moves-srv:mid_l-val is deprecated.  Use bd1_simple_moves-srv:mid_l instead.")
  (mid_l m))

(cl:ensure-generic-function 'mid_r-val :lambda-list '(m))
(cl:defmethod mid_r-val ((m <SetLegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_simple_moves-srv:mid_r-val is deprecated.  Use bd1_simple_moves-srv:mid_r instead.")
  (mid_r m))

(cl:ensure-generic-function 'feet_l-val :lambda-list '(m))
(cl:defmethod feet_l-val ((m <SetLegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_simple_moves-srv:feet_l-val is deprecated.  Use bd1_simple_moves-srv:feet_l instead.")
  (feet_l m))

(cl:ensure-generic-function 'feet_r-val :lambda-list '(m))
(cl:defmethod feet_r-val ((m <SetLegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_simple_moves-srv:feet_r-val is deprecated.  Use bd1_simple_moves-srv:feet_r instead.")
  (feet_r m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <SetLegs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_simple_moves-srv:speed-val is deprecated.  Use bd1_simple_moves-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLegs-request>) ostream)
  "Serializes a message object of type '<SetLegs-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'up_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'up_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mid_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mid_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'feet_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'feet_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLegs-request>) istream)
  "Deserializes a message object of type '<SetLegs-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mid_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mid_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'feet_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'feet_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLegs-request>)))
  "Returns string type for a service object of type '<SetLegs-request>"
  "bd1_simple_moves/SetLegsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLegs-request)))
  "Returns string type for a service object of type 'SetLegs-request"
  "bd1_simple_moves/SetLegsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLegs-request>)))
  "Returns md5sum for a message object of type '<SetLegs-request>"
  "8d9a80bd490b256de1b51b4977337d66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLegs-request)))
  "Returns md5sum for a message object of type 'SetLegs-request"
  "8d9a80bd490b256de1b51b4977337d66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLegs-request>)))
  "Returns full string definition for message of type '<SetLegs-request>"
  (cl:format cl:nil "float64 up_l~%float64 up_r~%float64 mid_l~%float64 mid_r~%float64 feet_l~%float64 feet_r~%float64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLegs-request)))
  "Returns full string definition for message of type 'SetLegs-request"
  (cl:format cl:nil "float64 up_l~%float64 up_r~%float64 mid_l~%float64 mid_r~%float64 feet_l~%float64 feet_r~%float64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLegs-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLegs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLegs-request
    (cl:cons ':up_l (up_l msg))
    (cl:cons ':up_r (up_r msg))
    (cl:cons ':mid_l (mid_l msg))
    (cl:cons ':mid_r (mid_r msg))
    (cl:cons ':feet_l (feet_l msg))
    (cl:cons ':feet_r (feet_r msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude SetLegs-response.msg.html

(cl:defclass <SetLegs-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetLegs-response (<SetLegs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLegs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLegs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_simple_moves-srv:<SetLegs-response> is deprecated: use bd1_simple_moves-srv:SetLegs-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLegs-response>) ostream)
  "Serializes a message object of type '<SetLegs-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLegs-response>) istream)
  "Deserializes a message object of type '<SetLegs-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLegs-response>)))
  "Returns string type for a service object of type '<SetLegs-response>"
  "bd1_simple_moves/SetLegsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLegs-response)))
  "Returns string type for a service object of type 'SetLegs-response"
  "bd1_simple_moves/SetLegsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLegs-response>)))
  "Returns md5sum for a message object of type '<SetLegs-response>"
  "8d9a80bd490b256de1b51b4977337d66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLegs-response)))
  "Returns md5sum for a message object of type 'SetLegs-response"
  "8d9a80bd490b256de1b51b4977337d66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLegs-response>)))
  "Returns full string definition for message of type '<SetLegs-response>"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLegs-response)))
  "Returns full string definition for message of type 'SetLegs-response"
  (cl:format cl:nil "~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLegs-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLegs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLegs-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLegs)))
  'SetLegs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLegs)))
  'SetLegs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLegs)))
  "Returns string type for a service object of type '<SetLegs>"
  "bd1_simple_moves/SetLegs")