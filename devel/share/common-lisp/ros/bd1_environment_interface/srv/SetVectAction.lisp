; Auto-generated. Do not edit!


(cl:in-package bd1_environment_interface-srv)


;//! \htmlinclude SetVectAction-request.msg.html

(cl:defclass <SetVectAction-request> (roslisp-msg-protocol:ros-message)
  ((vector_action
    :reader vector_action
    :initarg :vector_action
    :type (cl:vector cl:float)
   :initform (cl:make-array 8 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetVectAction-request (<SetVectAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetVectAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetVectAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_environment_interface-srv:<SetVectAction-request> is deprecated: use bd1_environment_interface-srv:SetVectAction-request instead.")))

(cl:ensure-generic-function 'vector_action-val :lambda-list '(m))
(cl:defmethod vector_action-val ((m <SetVectAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bd1_environment_interface-srv:vector_action-val is deprecated.  Use bd1_environment_interface-srv:vector_action instead.")
  (vector_action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetVectAction-request>) ostream)
  "Serializes a message object of type '<SetVectAction-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'vector_action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetVectAction-request>) istream)
  "Deserializes a message object of type '<SetVectAction-request>"
  (cl:setf (cl:slot-value msg 'vector_action) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'vector_action)))
    (cl:dotimes (i 8)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetVectAction-request>)))
  "Returns string type for a service object of type '<SetVectAction-request>"
  "bd1_environment_interface/SetVectActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVectAction-request)))
  "Returns string type for a service object of type 'SetVectAction-request"
  "bd1_environment_interface/SetVectActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetVectAction-request>)))
  "Returns md5sum for a message object of type '<SetVectAction-request>"
  "cd5ea8395bbd5a6d6460390474bdccf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetVectAction-request)))
  "Returns md5sum for a message object of type 'SetVectAction-request"
  "cd5ea8395bbd5a6d6460390474bdccf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetVectAction-request>)))
  "Returns full string definition for message of type '<SetVectAction-request>"
  (cl:format cl:nil "# assume that they goas like~%# [up_p_r mid_p_r feet_p_r up_p_l mid_p_l feet_p_l neck_p head_p]~%float64[8] vector_action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetVectAction-request)))
  "Returns full string definition for message of type 'SetVectAction-request"
  (cl:format cl:nil "# assume that they goas like~%# [up_p_r mid_p_r feet_p_r up_p_l mid_p_l feet_p_l neck_p head_p]~%float64[8] vector_action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetVectAction-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vector_action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetVectAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetVectAction-request
    (cl:cons ':vector_action (vector_action msg))
))
;//! \htmlinclude SetVectAction-response.msg.html

(cl:defclass <SetVectAction-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetVectAction-response (<SetVectAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetVectAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetVectAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bd1_environment_interface-srv:<SetVectAction-response> is deprecated: use bd1_environment_interface-srv:SetVectAction-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetVectAction-response>) ostream)
  "Serializes a message object of type '<SetVectAction-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetVectAction-response>) istream)
  "Deserializes a message object of type '<SetVectAction-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetVectAction-response>)))
  "Returns string type for a service object of type '<SetVectAction-response>"
  "bd1_environment_interface/SetVectActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVectAction-response)))
  "Returns string type for a service object of type 'SetVectAction-response"
  "bd1_environment_interface/SetVectActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetVectAction-response>)))
  "Returns md5sum for a message object of type '<SetVectAction-response>"
  "cd5ea8395bbd5a6d6460390474bdccf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetVectAction-response)))
  "Returns md5sum for a message object of type 'SetVectAction-response"
  "cd5ea8395bbd5a6d6460390474bdccf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetVectAction-response>)))
  "Returns full string definition for message of type '<SetVectAction-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetVectAction-response)))
  "Returns full string definition for message of type 'SetVectAction-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetVectAction-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetVectAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetVectAction-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetVectAction)))
  'SetVectAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetVectAction)))
  'SetVectAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetVectAction)))
  "Returns string type for a service object of type '<SetVectAction>"
  "bd1_environment_interface/SetVectAction")