; Auto-generated. Do not edit!


(cl:in-package bd1_environment_interface-srv)


;//! \htmlinclude GetStateAndReward-request.msg.html

(cl:defclass <GetStateAndReward-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetStateAndReward-request (<GetStateAndReward-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStateAndReward-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStateAndReward-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_environment_interface-srv:<GetStateAndReward-request> is deprecated: use bd1_environment_interface-srv:GetStateAndReward-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStateAndReward-request>) ostream)
  "Serializes a message object of type '<GetStateAndReward-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStateAndReward-request>) istream)
  "Deserializes a message object of type '<GetStateAndReward-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStateAndReward-request>)))
  "Returns string type for a service object of type '<GetStateAndReward-request>"
  "bd1_environment_interface/GetStateAndRewardRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStateAndReward-request)))
  "Returns string type for a service object of type 'GetStateAndReward-request"
  "bd1_environment_interface/GetStateAndRewardRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStateAndReward-request>)))
  "Returns md5sum for a message object of type '<GetStateAndReward-request>"
  "b4311283603913f545c123b92fee5b5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStateAndReward-request)))
  "Returns md5sum for a message object of type 'GetStateAndReward-request"
  "b4311283603913f545c123b92fee5b5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStateAndReward-request>)))
  "Returns full string definition for message of type '<GetStateAndReward-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStateAndReward-request)))
  "Returns full string definition for message of type 'GetStateAndReward-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStateAndReward-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStateAndReward-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStateAndReward-request
))
;//! \htmlinclude GetStateAndReward-response.msg.html

(cl:defclass <GetStateAndReward-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type bd1_environment_interface-msg:State
    :initform (cl:make-instance 'bd1_environment_interface-msg:State))
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

(cl:defclass GetStateAndReward-response (<GetStateAndReward-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStateAndReward-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStateAndReward-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_environment_interface-srv:<GetStateAndReward-response> is deprecated: use bd1_environment_interface-srv:GetStateAndReward-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetStateAndReward-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:state-val is deprecated.  Use bd1_environment_interface-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'reward-val :lambda-list '(m))
(cl:defmethod reward-val ((m <GetStateAndReward-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:reward-val is deprecated.  Use bd1_environment_interface-srv:reward instead.")
  (reward m))

(cl:ensure-generic-function 'episode_end-val :lambda-list '(m))
(cl:defmethod episode_end-val ((m <GetStateAndReward-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:episode_end-val is deprecated.  Use bd1_environment_interface-srv:episode_end instead.")
  (episode_end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStateAndReward-response>) ostream)
  "Serializes a message object of type '<GetStateAndReward-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStateAndReward-response>) istream)
  "Deserializes a message object of type '<GetStateAndReward-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStateAndReward-response>)))
  "Returns string type for a service object of type '<GetStateAndReward-response>"
  "bd1_environment_interface/GetStateAndRewardResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStateAndReward-response)))
  "Returns string type for a service object of type 'GetStateAndReward-response"
  "bd1_environment_interface/GetStateAndRewardResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStateAndReward-response>)))
  "Returns md5sum for a message object of type '<GetStateAndReward-response>"
  "b4311283603913f545c123b92fee5b5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStateAndReward-response)))
  "Returns md5sum for a message object of type 'GetStateAndReward-response"
  "b4311283603913f545c123b92fee5b5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStateAndReward-response>)))
  "Returns full string definition for message of type '<GetStateAndReward-response>"
  (cl:format cl:nil "bd1_environment_interface/State state~%float64 reward~%bool episode_end~%~%~%================================================================================~%MSG: bd1_environment_interface/State~%float64 up_p_r~%float64 up_p_l~%float64 mid_p_r~%float64 mid_p_l~%float64 feet_p_r~%float64 feet_p_l~%~%#float64 up_v_r~%#float64 up_v_l~%#float64 mid_v_r~%#float64 mid_v_l~%#float64 feet_v_r~%float64 feet_v_l~%~%float64 neck_p~%#float64 neck_v~%float64 head_p~%#float64 head_v~%~%float64 pose_x~%float64 pose_y~%float64 pose_z~%float64 rot_r~%float64 rot_p~%float64 rot_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStateAndReward-response)))
  "Returns full string definition for message of type 'GetStateAndReward-response"
  (cl:format cl:nil "bd1_environment_interface/State state~%float64 reward~%bool episode_end~%~%~%================================================================================~%MSG: bd1_environment_interface/State~%float64 up_p_r~%float64 up_p_l~%float64 mid_p_r~%float64 mid_p_l~%float64 feet_p_r~%float64 feet_p_l~%~%#float64 up_v_r~%#float64 up_v_l~%#float64 mid_v_r~%#float64 mid_v_l~%#float64 feet_v_r~%float64 feet_v_l~%~%float64 neck_p~%#float64 neck_v~%float64 head_p~%#float64 head_v~%~%float64 pose_x~%float64 pose_y~%float64 pose_z~%float64 rot_r~%float64 rot_p~%float64 rot_y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStateAndReward-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStateAndReward-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStateAndReward-response
    (cl:cons ':state (state msg))
    (cl:cons ':reward (reward msg))
    (cl:cons ':episode_end (episode_end msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStateAndReward)))
  'GetStateAndReward-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStateAndReward)))
  'GetStateAndReward-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStateAndReward)))
  "Returns string type for a service object of type '<GetStateAndReward>"
  "bd1_environment_interface/GetStateAndReward")