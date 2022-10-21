; Auto-generated. Do not edit!


(cl:in-package bd1_gazebo_env_interface-srv)


;//! \htmlinclude Step-request.msg.html

(cl:defclass <Step-request> (roslisp-msg-protocol:ros-message)
  ((step_duration_sec
    :reader step_duration_sec
    :initarg :step_duration_sec
    :type cl:float
    :initform 0.0)
   (action
    :reader action
    :initarg :action
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Step-request (<Step-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Step-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Step-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_gazebo_env_interface-srv:<Step-request> is deprecated: use bd1_gazebo_env_interface-srv:Step-request instead.")))

(cl:ensure-generic-function 'step_duration_sec-val :lambda-list '(m))
(cl:defmethod step_duration_sec-val ((m <Step-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_gazebo_env_interface-srv:step_duration_sec-val is deprecated.  Use bd1_gazebo_env_interface-srv:step_duration_sec instead.")
  (step_duration_sec m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Step-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_gazebo_env_interface-srv:action-val is deprecated.  Use bd1_gazebo_env_interface-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Step-request>) ostream)
  "Serializes a message object of type '<Step-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'step_duration_sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Step-request>) istream)
  "Deserializes a message object of type '<Step-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_duration_sec) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Step-request>)))
  "Returns string type for a service object of type '<Step-request>"
  "bd1_gazebo_env_interface/StepRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Step-request)))
  "Returns string type for a service object of type 'Step-request"
  "bd1_gazebo_env_interface/StepRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Step-request>)))
  "Returns md5sum for a message object of type '<Step-request>"
  "648a9a46b996eb566b6958c8792202c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Step-request)))
  "Returns md5sum for a message object of type 'Step-request"
  "648a9a46b996eb566b6958c8792202c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Step-request>)))
  "Returns full string definition for message of type '<Step-request>"
  (cl:format cl:nil "float64 step_duration_sec~%float64[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Step-request)))
  "Returns full string definition for message of type 'Step-request"
  (cl:format cl:nil "float64 step_duration_sec~%float64[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Step-request>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Step-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Step-request
    (cl:cons ':step_duration_sec (step_duration_sec msg))
    (cl:cons ':action (action msg))
))
;//! \htmlinclude Step-response.msg.html

(cl:defclass <Step-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (reward
    :reader reward
    :initarg :reward
    :type cl:float
    :initform 0.0)
   (done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Step-response (<Step-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Step-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Step-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_gazebo_env_interface-srv:<Step-response> is deprecated: use bd1_gazebo_env_interface-srv:Step-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Step-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_gazebo_env_interface-srv:state-val is deprecated.  Use bd1_gazebo_env_interface-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'reward-val :lambda-list '(m))
(cl:defmethod reward-val ((m <Step-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_gazebo_env_interface-srv:reward-val is deprecated.  Use bd1_gazebo_env_interface-srv:reward instead.")
  (reward m))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <Step-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_gazebo_env_interface-srv:done-val is deprecated.  Use bd1_gazebo_env_interface-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Step-response>) ostream)
  "Serializes a message object of type '<Step-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'state))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'reward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Step-response>) istream)
  "Deserializes a message object of type '<Step-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reward) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Step-response>)))
  "Returns string type for a service object of type '<Step-response>"
  "bd1_gazebo_env_interface/StepResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Step-response)))
  "Returns string type for a service object of type 'Step-response"
  "bd1_gazebo_env_interface/StepResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Step-response>)))
  "Returns md5sum for a message object of type '<Step-response>"
  "648a9a46b996eb566b6958c8792202c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Step-response)))
  "Returns md5sum for a message object of type 'Step-response"
  "648a9a46b996eb566b6958c8792202c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Step-response>)))
  "Returns full string definition for message of type '<Step-response>"
  (cl:format cl:nil "float64[] state~%float64 reward~%bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Step-response)))
  "Returns full string definition for message of type 'Step-response"
  (cl:format cl:nil "float64[] state~%float64 reward~%bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Step-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Step-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Step-response
    (cl:cons ':state (state msg))
    (cl:cons ':reward (reward msg))
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Step)))
  'Step-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Step)))
  'Step-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Step)))
  "Returns string type for a service object of type '<Step>"
  "bd1_gazebo_env_interface/Step")