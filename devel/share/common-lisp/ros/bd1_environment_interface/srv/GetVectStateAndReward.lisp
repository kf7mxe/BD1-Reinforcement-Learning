; Auto-generated. Do not edit!


(cl:in-package bd1_environment_interface-srv)


;//! \htmlinclude GetVectStateAndReward-request.msg.html

(cl:defclass <GetVectStateAndReward-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetVectStateAndReward-request (<GetVectStateAndReward-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVectStateAndReward-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVectStateAndReward-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_environment_interface-srv:<GetVectStateAndReward-request> is deprecated: use bd1_environment_interface-srv:GetVectStateAndReward-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVectStateAndReward-request>) ostream)
  "Serializes a message object of type '<GetVectStateAndReward-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVectStateAndReward-request>) istream)
  "Deserializes a message object of type '<GetVectStateAndReward-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVectStateAndReward-request>)))
  "Returns string type for a service object of type '<GetVectStateAndReward-request>"
  "bd1_environment_interface/GetVectStateAndRewardRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVectStateAndReward-request)))
  "Returns string type for a service object of type 'GetVectStateAndReward-request"
  "bd1_environment_interface/GetVectStateAndRewardRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVectStateAndReward-request>)))
  "Returns md5sum for a message object of type '<GetVectStateAndReward-request>"
  "d2372a06335f71544d81aba4da8f6263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVectStateAndReward-request)))
  "Returns md5sum for a message object of type 'GetVectStateAndReward-request"
  "d2372a06335f71544d81aba4da8f6263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVectStateAndReward-request>)))
  "Returns full string definition for message of type '<GetVectStateAndReward-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVectStateAndReward-request)))
  "Returns full string definition for message of type 'GetVectStateAndReward-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVectStateAndReward-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVectStateAndReward-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVectStateAndReward-request
))
;//! \htmlinclude GetVectStateAndReward-response.msg.html

(cl:defclass <GetVectStateAndReward-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 14 :element-type 'cl:float :initial-element 0.0))
   (reward
    :reader reward
    :initarg :reward
    :type cl:float
    :initform 0.0)
   (episode_end
    :reader episode_end
    :initarg :episode_end
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetVectStateAndReward-response (<GetVectStateAndReward-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVectStateAndReward-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVectStateAndReward-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_environment_interface-srv:<GetVectStateAndReward-response> is deprecated: use bd1_environment_interface-srv:GetVectStateAndReward-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetVectStateAndReward-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:state-val is deprecated.  Use bd1_environment_interface-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'reward-val :lambda-list '(m))
(cl:defmethod reward-val ((m <GetVectStateAndReward-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:reward-val is deprecated.  Use bd1_environment_interface-srv:reward instead.")
  (reward m))

(cl:ensure-generic-function 'episode_end-val :lambda-list '(m))
(cl:defmethod episode_end-val ((m <GetVectStateAndReward-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:episode_end-val is deprecated.  Use bd1_environment_interface-srv:episode_end instead.")
  (episode_end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVectStateAndReward-response>) ostream)
  "Serializes a message object of type '<GetVectStateAndReward-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'episode_end) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVectStateAndReward-response>) istream)
  "Deserializes a message object of type '<GetVectStateAndReward-response>"
  (cl:setf (cl:slot-value msg 'state) (cl:make-array 14))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i 14)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
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
    (cl:setf (cl:slot-value msg 'episode_end) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVectStateAndReward-response>)))
  "Returns string type for a service object of type '<GetVectStateAndReward-response>"
  "bd1_environment_interface/GetVectStateAndRewardResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVectStateAndReward-response)))
  "Returns string type for a service object of type 'GetVectStateAndReward-response"
  "bd1_environment_interface/GetVectStateAndRewardResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVectStateAndReward-response>)))
  "Returns md5sum for a message object of type '<GetVectStateAndReward-response>"
  "d2372a06335f71544d81aba4da8f6263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVectStateAndReward-response)))
  "Returns md5sum for a message object of type 'GetVectStateAndReward-response"
  "d2372a06335f71544d81aba4da8f6263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVectStateAndReward-response>)))
  "Returns full string definition for message of type '<GetVectStateAndReward-response>"
  (cl:format cl:nil "# state is: ~%# bd1_x bd1_y bd1_z bd1_R bd1_P bd1_Y ~%# neckP headP up_rP, mid_rP, feet_rP, up_lP, mid_lP, feet_lP~%float64[14] state~%float64 reward~%bool episode_end~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVectStateAndReward-response)))
  "Returns full string definition for message of type 'GetVectStateAndReward-response"
  (cl:format cl:nil "# state is: ~%# bd1_x bd1_y bd1_z bd1_R bd1_P bd1_Y ~%# neckP headP up_rP, mid_rP, feet_rP, up_lP, mid_lP, feet_lP~%float64[14] state~%float64 reward~%bool episode_end~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVectStateAndReward-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVectStateAndReward-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVectStateAndReward-response
    (cl:cons ':state (state msg))
    (cl:cons ':reward (reward msg))
    (cl:cons ':episode_end (episode_end msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVectStateAndReward)))
  'GetVectStateAndReward-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVectStateAndReward)))
  'GetVectStateAndReward-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVectStateAndReward)))
  "Returns string type for a service object of type '<GetVectStateAndReward>"
  "bd1_environment_interface/GetVectStateAndReward")