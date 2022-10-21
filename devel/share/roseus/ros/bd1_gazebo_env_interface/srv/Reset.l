;; Auto-generated. Do not edit!


(when (boundp 'bd1_gazebo_env_interface::Reset)
  (if (not (find-package "BD1_GAZEBO_ENV_INTERFACE"))
    (make-package "BD1_GAZEBO_ENV_INTERFACE"))
  (shadow 'Reset (find-package "BD1_GAZEBO_ENV_INTERFACE")))
(unless (find-package "BD1_GAZEBO_ENV_INTERFACE::RESET")
  (make-package "BD1_GAZEBO_ENV_INTERFACE::RESET"))
(unless (find-package "BD1_GAZEBO_ENV_INTERFACE::RESETREQUEST")
  (make-package "BD1_GAZEBO_ENV_INTERFACE::RESETREQUEST"))
(unless (find-package "BD1_GAZEBO_ENV_INTERFACE::RESETRESPONSE")
  (make-package "BD1_GAZEBO_ENV_INTERFACE::RESETRESPONSE"))

(in-package "ROS")





(defclass bd1_gazebo_env_interface::ResetRequest
  :super ros::object
  :slots ())

(defmethod bd1_gazebo_env_interface::ResetRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass bd1_gazebo_env_interface::ResetResponse
  :super ros::object
  :slots (_state ))

(defmethod bd1_gazebo_env_interface::ResetResponse
  (:init
   (&key
    ((:state __state) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; float64[] _state
    (* 8    (length _state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (sys::poke (elt _state i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass bd1_gazebo_env_interface::Reset
  :super ros::object
  :slots ())

(setf (get bd1_gazebo_env_interface::Reset :md5sum-) "c30e6364d50c603d25671fea66595c53")
(setf (get bd1_gazebo_env_interface::Reset :datatype-) "bd1_gazebo_env_interface/Reset")
(setf (get bd1_gazebo_env_interface::Reset :request) bd1_gazebo_env_interface::ResetRequest)
(setf (get bd1_gazebo_env_interface::Reset :response) bd1_gazebo_env_interface::ResetResponse)

(defmethod bd1_gazebo_env_interface::ResetRequest
  (:response () (instance bd1_gazebo_env_interface::ResetResponse :init)))

(setf (get bd1_gazebo_env_interface::ResetRequest :md5sum-) "c30e6364d50c603d25671fea66595c53")
(setf (get bd1_gazebo_env_interface::ResetRequest :datatype-) "bd1_gazebo_env_interface/ResetRequest")
(setf (get bd1_gazebo_env_interface::ResetRequest :definition-)
      "---
float64[] state

")

(setf (get bd1_gazebo_env_interface::ResetResponse :md5sum-) "c30e6364d50c603d25671fea66595c53")
(setf (get bd1_gazebo_env_interface::ResetResponse :datatype-) "bd1_gazebo_env_interface/ResetResponse")
(setf (get bd1_gazebo_env_interface::ResetResponse :definition-)
      "---
float64[] state

")



(provide :bd1_gazebo_env_interface/Reset "c30e6364d50c603d25671fea66595c53")


