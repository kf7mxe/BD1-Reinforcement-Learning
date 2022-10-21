; Auto-generated. Do not edit!


(cl:in-package bd1_environment_interface-srv)


;//! \htmlinclude SetAction-request.msg.html

(cl:defclass <SetAction-request> (roslisp-msg-protocol:ros-message)
  ((up_p_r
    :reader up_p_r
    :initarg :up_p_r
    :type cl:float
    :initform 0.0)
   (up_p_l
    :reader up_p_l
    :initarg :up_p_l
    :type cl:float
    :initform 0.0)
   (mid_p_r
    :reader mid_p_r
    :initarg :mid_p_r
    :type cl:float
    :initform 0.0)
   (mid_p_l
    :reader mid_p_l
    :initarg :mid_p_l
    :type cl:float
    :initform 0.0)
   (feet_p_r
    :reader feet_p_r
    :initarg :feet_p_r
    :type cl:float
    :initform 0.0)
   (feet_p_l
    :reader feet_p_l
    :initarg :feet_p_l
    :type cl:float
    :initform 0.0)
   (up_v_r
    :reader up_v_r
    :initarg :up_v_r
    :type cl:float
    :initform 0.0)
   (up_v_l
    :reader up_v_l
    :initarg :up_v_l
    :type cl:float
    :initform 0.0)
   (mid_v_r
    :reader mid_v_r
    :initarg :mid_v_r
    :type cl:float
    :initform 0.0)
   (mid_v_l
    :reader mid_v_l
    :initarg :mid_v_l
    :type cl:float
    :initform 0.0)
   (feet_v_r
    :reader feet_v_r
    :initarg :feet_v_r
    :type cl:float
    :initform 0.0)
   (feet_v_l
    :reader feet_v_l
    :initarg :feet_v_l
    :type cl:float
    :initform 0.0)
   (neck_p
    :reader neck_p
    :initarg :neck_p
    :type cl:float
    :initform 0.0)
   (neck_v
    :reader neck_v
    :initarg :neck_v
    :type cl:float
    :initform 0.0)
   (head_p
    :reader head_p
    :initarg :head_p
    :type cl:float
    :initform 0.0)
   (head_v
    :reader head_v
    :initarg :head_v
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetAction-request (<SetAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_environment_interface-srv:<SetAction-request> is deprecated: use bd1_environment_interface-srv:SetAction-request instead.")))

(cl:ensure-generic-function 'up_p_r-val :lambda-list '(m))
(cl:defmethod up_p_r-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:up_p_r-val is deprecated.  Use bd1_environment_interface-srv:up_p_r instead.")
  (up_p_r m))

(cl:ensure-generic-function 'up_p_l-val :lambda-list '(m))
(cl:defmethod up_p_l-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:up_p_l-val is deprecated.  Use bd1_environment_interface-srv:up_p_l instead.")
  (up_p_l m))

(cl:ensure-generic-function 'mid_p_r-val :lambda-list '(m))
(cl:defmethod mid_p_r-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:mid_p_r-val is deprecated.  Use bd1_environment_interface-srv:mid_p_r instead.")
  (mid_p_r m))

(cl:ensure-generic-function 'mid_p_l-val :lambda-list '(m))
(cl:defmethod mid_p_l-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:mid_p_l-val is deprecated.  Use bd1_environment_interface-srv:mid_p_l instead.")
  (mid_p_l m))

(cl:ensure-generic-function 'feet_p_r-val :lambda-list '(m))
(cl:defmethod feet_p_r-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:feet_p_r-val is deprecated.  Use bd1_environment_interface-srv:feet_p_r instead.")
  (feet_p_r m))

(cl:ensure-generic-function 'feet_p_l-val :lambda-list '(m))
(cl:defmethod feet_p_l-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:feet_p_l-val is deprecated.  Use bd1_environment_interface-srv:feet_p_l instead.")
  (feet_p_l m))

(cl:ensure-generic-function 'up_v_r-val :lambda-list '(m))
(cl:defmethod up_v_r-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:up_v_r-val is deprecated.  Use bd1_environment_interface-srv:up_v_r instead.")
  (up_v_r m))

(cl:ensure-generic-function 'up_v_l-val :lambda-list '(m))
(cl:defmethod up_v_l-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:up_v_l-val is deprecated.  Use bd1_environment_interface-srv:up_v_l instead.")
  (up_v_l m))

(cl:ensure-generic-function 'mid_v_r-val :lambda-list '(m))
(cl:defmethod mid_v_r-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:mid_v_r-val is deprecated.  Use bd1_environment_interface-srv:mid_v_r instead.")
  (mid_v_r m))

(cl:ensure-generic-function 'mid_v_l-val :lambda-list '(m))
(cl:defmethod mid_v_l-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:mid_v_l-val is deprecated.  Use bd1_environment_interface-srv:mid_v_l instead.")
  (mid_v_l m))

(cl:ensure-generic-function 'feet_v_r-val :lambda-list '(m))
(cl:defmethod feet_v_r-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:feet_v_r-val is deprecated.  Use bd1_environment_interface-srv:feet_v_r instead.")
  (feet_v_r m))

(cl:ensure-generic-function 'feet_v_l-val :lambda-list '(m))
(cl:defmethod feet_v_l-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:feet_v_l-val is deprecated.  Use bd1_environment_interface-srv:feet_v_l instead.")
  (feet_v_l m))

(cl:ensure-generic-function 'neck_p-val :lambda-list '(m))
(cl:defmethod neck_p-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:neck_p-val is deprecated.  Use bd1_environment_interface-srv:neck_p instead.")
  (neck_p m))

(cl:ensure-generic-function 'neck_v-val :lambda-list '(m))
(cl:defmethod neck_v-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:neck_v-val is deprecated.  Use bd1_environment_interface-srv:neck_v instead.")
  (neck_v m))

(cl:ensure-generic-function 'head_p-val :lambda-list '(m))
(cl:defmethod head_p-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:head_p-val is deprecated.  Use bd1_environment_interface-srv:head_p instead.")
  (head_p m))

(cl:ensure-generic-function 'head_v-val :lambda-list '(m))
(cl:defmethod head_v-val ((m <SetAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:head_v-val is deprecated.  Use bd1_environment_interface-srv:head_v instead.")
  (head_v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAction-request>) ostream)
  "Serializes a message object of type '<SetAction-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'up_p_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'up_p_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mid_p_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mid_p_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'feet_p_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'feet_p_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'up_v_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'up_v_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mid_v_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mid_v_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'feet_v_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'feet_v_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'neck_p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'neck_v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'head_p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'head_v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAction-request>) istream)
  "Deserializes a message object of type '<SetAction-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up_p_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up_p_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mid_p_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mid_p_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'feet_p_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'feet_p_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up_v_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up_v_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mid_v_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mid_v_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'feet_v_r) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'feet_v_l) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'neck_p) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'neck_v) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'head_p) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'head_v) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAction-request>)))
  "Returns string type for a service object of type '<SetAction-request>"
  "bd1_environment_interface/SetActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAction-request)))
  "Returns string type for a service object of type 'SetAction-request"
  "bd1_environment_interface/SetActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAction-request>)))
  "Returns md5sum for a message object of type '<SetAction-request>"
  "971ec173ddadd49b8b050bf728686fd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAction-request)))
  "Returns md5sum for a message object of type 'SetAction-request"
  "971ec173ddadd49b8b050bf728686fd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAction-request>)))
  "Returns full string definition for message of type '<SetAction-request>"
  (cl:format cl:nil "float64 up_p_r~%float64 up_p_l~%float64 mid_p_r~%float64 mid_p_l~%float64 feet_p_r~%float64 feet_p_l~%~%float64 up_v_r~%float64 up_v_l~%float64 mid_v_r~%float64 mid_v_l~%float64 feet_v_r~%float64 feet_v_l~%~%float64 neck_p~%float64 neck_v~%float64 head_p~%float64 head_v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAction-request)))
  "Returns full string definition for message of type 'SetAction-request"
  (cl:format cl:nil "float64 up_p_r~%float64 up_p_l~%float64 mid_p_r~%float64 mid_p_l~%float64 feet_p_r~%float64 feet_p_l~%~%float64 up_v_r~%float64 up_v_l~%float64 mid_v_r~%float64 mid_v_l~%float64 feet_v_r~%float64 feet_v_l~%~%float64 neck_p~%float64 neck_v~%float64 head_p~%float64 head_v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAction-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAction-request
    (cl:cons ':up_p_r (up_p_r msg))
    (cl:cons ':up_p_l (up_p_l msg))
    (cl:cons ':mid_p_r (mid_p_r msg))
    (cl:cons ':mid_p_l (mid_p_l msg))
    (cl:cons ':feet_p_r (feet_p_r msg))
    (cl:cons ':feet_p_l (feet_p_l msg))
    (cl:cons ':up_v_r (up_v_r msg))
    (cl:cons ':up_v_l (up_v_l msg))
    (cl:cons ':mid_v_r (mid_v_r msg))
    (cl:cons ':mid_v_l (mid_v_l msg))
    (cl:cons ':feet_v_r (feet_v_r msg))
    (cl:cons ':feet_v_l (feet_v_l msg))
    (cl:cons ':neck_p (neck_p msg))
    (cl:cons ':neck_v (neck_v msg))
    (cl:cons ':head_p (head_p msg))
    (cl:cons ':head_v (head_v msg))
))
;//! \htmlinclude SetAction-response.msg.html

(cl:defclass <SetAction-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetAction-response (<SetAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_environment_interface-srv:<SetAction-response> is deprecated: use bd1_environment_interface-srv:SetAction-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAction-response>) ostream)
  "Serializes a message object of type '<SetAction-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAction-response>) istream)
  "Deserializes a message object of type '<SetAction-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAction-response>)))
  "Returns string type for a service object of type '<SetAction-response>"
  "bd1_environment_interface/SetActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAction-response)))
  "Returns string type for a service object of type 'SetAction-response"
  "bd1_environment_interface/SetActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAction-response>)))
  "Returns md5sum for a message object of type '<SetAction-response>"
  "971ec173ddadd49b8b050bf728686fd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAction-response)))
  "Returns md5sum for a message object of type 'SetAction-response"
  "971ec173ddadd49b8b050bf728686fd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAction-response>)))
  "Returns full string definition for message of type '<SetAction-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAction-response)))
  "Returns full string definition for message of type 'SetAction-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAction-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAction-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAction)))
  'SetAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAction)))
  'SetAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAction)))
  "Returns string type for a service object of type '<SetAction>"
  "bd1_environment_interface/SetAction")