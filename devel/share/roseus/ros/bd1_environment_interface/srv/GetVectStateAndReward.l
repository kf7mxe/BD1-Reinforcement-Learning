;; Auto-generated. Do not edit!


(when (boundp 'bd1_environment_interface::GetVectStateAndReward)
  (if (not (find-package "BD1_ENVIRONMENT_INTERFACE"))
    (make-package "BD1_ENVIRONMENT_INTERFACE"))
  (shadow 'GetVectStateAndReward (find-package "BD1_ENVIRONMENT_INTERFACE")))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::GETVECTSTATEANDREWARD")
  (make-package "BD1_ENVIRONMENT_INTERFACE::GETVECTSTATEANDREWARD"))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::GETVECTSTATEANDREWARDREQUEST")
  (make-package "BD1_ENVIRONMENT_INTERFACE::GETVECTSTATEANDREWARDREQUEST"))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::GETVECTSTATEANDREWARDRESPONSE")
  (make-package "BD1_ENVIRONMENT_INTERFACE::GETVECTSTATEANDREWARDRESPONSE"))

(in-package "ROS")





(defclass bd1_environment_interface::GetVectStateAndRewardRequest
  :super ros::object
  :slots ())

(defmethod bd1_environment_interface::GetVectStateAndRewardRequest
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

(defclass bd1_environment_interface::GetVectStateAndRewardResponse
  :super ros::object
  :slots (_state _reward _episode_end ))

(defmethod bd1_environment_interface::GetVectStateAndRewardResponse
  (:init
   (&key
    ((:state __state) (make-array 14 :initial-element 0.0 :element-type :float))
    ((:reward __reward) 0.0)
    ((:episode_end __episode_end) nil)
    )
   (send-super :init)
   (setq _state __state)
   (setq _reward (float __reward))
   (setq _episode_end __episode_end)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:episode_end
   (&optional (__episode_end :null))
   (if (not (eq __episode_end :null)) (setq _episode_end __episode_end)) _episode_end)
  (:serialization-length
   ()
   (+
    ;; float64[14] _state
    (* 8    14)
    ;; float64 _reward
    8
    ;; bool _episode_end
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[14] _state
     (dotimes (i 14)
       (sys::poke (elt _state i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _episode_end
       (if _episode_end (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[14] _state
   (dotimes (i (length _state))
     (setf (elt _state i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _reward
     (setq _reward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _episode_end
     (setq _episode_end (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass bd1_environment_interface::GetVectStateAndReward
  :super ros::object
  :slots ())

(setf (get bd1_environment_interface::GetVectStateAndReward :md5sum-) "d2372a06335f71544d81aba4da8f6263")
(setf (get bd1_environment_interface::GetVectStateAndReward :datatype-) "bd1_environment_interface/GetVectStateAndReward")
(setf (get bd1_environment_interface::GetVectStateAndReward :request) bd1_environment_interface::GetVectStateAndRewardRequest)
(setf (get bd1_environment_interface::GetVectStateAndReward :response) bd1_environment_interface::GetVectStateAndRewardResponse)

(defmethod bd1_environment_interface::GetVectStateAndRewardRequest
  (:response () (instance bd1_environment_interface::GetVectStateAndRewardResponse :init)))

(setf (get bd1_environment_interface::GetVectStateAndRewardRequest :md5sum-) "d2372a06335f71544d81aba4da8f6263")
(setf (get bd1_environment_interface::GetVectStateAndRewardRequest :datatype-) "bd1_environment_interface/GetVectStateAndRewardRequest")
(setf (get bd1_environment_interface::GetVectStateAndRewardRequest :definition-)
      "---
# state is: 
# bd1_x bd1_y bd1_z bd1_R bd1_P bd1_Y 
# neckP headP up_rP, mid_rP, feet_rP, up_lP, mid_lP, feet_lP
float64[14] state
float64 reward
bool episode_end

")

(setf (get bd1_environment_interface::GetVectStateAndRewardResponse :md5sum-) "d2372a06335f71544d81aba4da8f6263")
(setf (get bd1_environment_interface::GetVectStateAndRewardResponse :datatype-) "bd1_environment_interface/GetVectStateAndRewardResponse")
(setf (get bd1_environment_interface::GetVectStateAndRewardResponse :definition-)
      "---
# state is: 
# bd1_x bd1_y bd1_z bd1_R bd1_P bd1_Y 
# neckP headP up_rP, mid_rP, feet_rP, up_lP, mid_lP, feet_lP
float64[14] state
float64 reward
bool episode_end

")



(provide :bd1_environment_interface/GetVectStateAndReward "d2372a06335f71544d81aba4da8f6263")


