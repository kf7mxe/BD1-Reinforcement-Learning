;; Auto-generated. Do not edit!


(when (boundp 'bd1_gazebo_env_interface::Step)
  (if (not (find-package "BD1_GAZEBO_ENV_INTERFACE"))
    (make-package "BD1_GAZEBO_ENV_INTERFACE"))
  (shadow 'Step (find-package "BD1_GAZEBO_ENV_INTERFACE")))
(unless (find-package "BD1_GAZEBO_ENV_INTERFACE::STEP")
  (make-package "BD1_GAZEBO_ENV_INTERFACE::STEP"))
(unless (find-package "BD1_GAZEBO_ENV_INTERFACE::STEPREQUEST")
  (make-package "BD1_GAZEBO_ENV_INTERFACE::STEPREQUEST"))
(unless (find-package "BD1_GAZEBO_ENV_INTERFACE::STEPRESPONSE")
  (make-package "BD1_GAZEBO_ENV_INTERFACE::STEPRESPONSE"))

(in-package "ROS")





(defclass bd1_gazebo_env_interface::StepRequest
  :super ros::object
  :slots (_step_duration_sec _action ))

(defmethod bd1_gazebo_env_interface::StepRequest
  (:init
   (&key
    ((:step_duration_sec __step_duration_sec) 0.0)
    ((:action __action) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _step_duration_sec (float __step_duration_sec))
   (setq _action __action)
   self)
  (:step_duration_sec
   (&optional __step_duration_sec)
   (if __step_duration_sec (setq _step_duration_sec __step_duration_sec)) _step_duration_sec)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; float64 _step_duration_sec
    8
    ;; float64[] _action
    (* 8    (length _action)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _step_duration_sec
       (sys::poke _step_duration_sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _action
     (write-long (length _action) s)
     (dotimes (i (length _action))
       (sys::poke (elt _action i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _step_duration_sec
     (setq _step_duration_sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _action i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass bd1_gazebo_env_interface::StepResponse
  :super ros::object
  :slots (_state _reward _done ))

(defmethod bd1_gazebo_env_interface::StepResponse
  (:init
   (&key
    ((:state __state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reward __reward) 0.0)
    ((:done __done) nil)
    )
   (send-super :init)
   (setq _state __state)
   (setq _reward (float __reward))
   (setq _done __done)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:done
   (&optional (__done :null))
   (if (not (eq __done :null)) (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; float64[] _state
    (* 8    (length _state)) 4
    ;; float64 _reward
    8
    ;; bool _done
    1
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
     ;; float64 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _done
       (if _done (write-byte -1 s) (write-byte 0 s))
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
   ;; float64 _reward
     (setq _reward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _done
     (setq _done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass bd1_gazebo_env_interface::Step
  :super ros::object
  :slots ())

(setf (get bd1_gazebo_env_interface::Step :md5sum-) "648a9a46b996eb566b6958c8792202c4")
(setf (get bd1_gazebo_env_interface::Step :datatype-) "bd1_gazebo_env_interface/Step")
(setf (get bd1_gazebo_env_interface::Step :request) bd1_gazebo_env_interface::StepRequest)
(setf (get bd1_gazebo_env_interface::Step :response) bd1_gazebo_env_interface::StepResponse)

(defmethod bd1_gazebo_env_interface::StepRequest
  (:response () (instance bd1_gazebo_env_interface::StepResponse :init)))

(setf (get bd1_gazebo_env_interface::StepRequest :md5sum-) "648a9a46b996eb566b6958c8792202c4")
(setf (get bd1_gazebo_env_interface::StepRequest :datatype-) "bd1_gazebo_env_interface/StepRequest")
(setf (get bd1_gazebo_env_interface::StepRequest :definition-)
      "float64 step_duration_sec
float64[] action
---
float64[] state
float64 reward
bool done

")

(setf (get bd1_gazebo_env_interface::StepResponse :md5sum-) "648a9a46b996eb566b6958c8792202c4")
(setf (get bd1_gazebo_env_interface::StepResponse :datatype-) "bd1_gazebo_env_interface/StepResponse")
(setf (get bd1_gazebo_env_interface::StepResponse :definition-)
      "float64 step_duration_sec
float64[] action
---
float64[] state
float64 reward
bool done

")



(provide :bd1_gazebo_env_interface/Step "648a9a46b996eb566b6958c8792202c4")


