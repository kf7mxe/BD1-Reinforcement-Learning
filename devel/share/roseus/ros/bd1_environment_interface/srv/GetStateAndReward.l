;; Auto-generated. Do not edit!


(when (boundp 'bd1_environment_interface::GetStateAndReward)
  (if (not (find-package "BD1_ENVIRONMENT_INTERFACE"))
    (make-package "BD1_ENVIRONMENT_INTERFACE"))
  (shadow 'GetStateAndReward (find-package "BD1_ENVIRONMENT_INTERFACE")))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::GETSTATEANDREWARD")
  (make-package "BD1_ENVIRONMENT_INTERFACE::GETSTATEANDREWARD"))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::GETSTATEANDREWARDREQUEST")
  (make-package "BD1_ENVIRONMENT_INTERFACE::GETSTATEANDREWARDREQUEST"))
(unless (find-package "BD1_ENVIRONMENT_INTERFACE::GETSTATEANDREWARDRESPONSE")
  (make-package "BD1_ENVIRONMENT_INTERFACE::GETSTATEANDREWARDRESPONSE"))

(in-package "ROS")





(defclass bd1_environment_interface::GetStateAndRewardRequest
  :super ros::object
  :slots ())

(defmethod bd1_environment_interface::GetStateAndRewardRequest
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

(defclass bd1_environment_interface::GetStateAndRewardResponse
  :super ros::object
  :slots (_state _reward _episode_end ))

(defmethod bd1_environment_interface::GetStateAndRewardResponse
  (:init
   (&key
    ((:state __state) (instance bd1_environment_interface::State :init))
    ((:reward __reward) 0.0)
    ((:episode_end __episode_end) nil)
    )
   (send-super :init)
   (setq _state __state)
   (setq _reward (float __reward))
   (setq _episode_end __episode_end)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:episode_end
   (&optional (__episode_end :null))
   (if (not (eq __episode_end :null)) (setq _episode_end __episode_end)) _episode_end)
  (:serialization-length
   ()
   (+
    ;; bd1_environment_interface/State _state
    (send _state :serialization-length)
    ;; float64 _reward
    8
    ;; bool _episode_end
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bd1_environment_interface/State _state
       (send _state :serialize s)
     ;; float64 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _episode_end
       (if _episode_end (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bd1_environment_interface/State _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; float64 _reward
     (setq _reward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _episode_end
     (setq _episode_end (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass bd1_environment_interface::GetStateAndReward
  :super ros::object
  :slots ())

(setf (get bd1_environment_interface::GetStateAndReward :md5sum-) "b4311283603913f545c123b92fee5b5c")
(setf (get bd1_environment_interface::GetStateAndReward :datatype-) "bd1_environment_interface/GetStateAndReward")
(setf (get bd1_environment_interface::GetStateAndReward :request) bd1_environment_interface::GetStateAndRewardRequest)
(setf (get bd1_environment_interface::GetStateAndReward :response) bd1_environment_interface::GetStateAndRewardResponse)

(defmethod bd1_environment_interface::GetStateAndRewardRequest
  (:response () (instance bd1_environment_interface::GetStateAndRewardResponse :init)))

(setf (get bd1_environment_interface::GetStateAndRewardRequest :md5sum-) "b4311283603913f545c123b92fee5b5c")
(setf (get bd1_environment_interface::GetStateAndRewardRequest :datatype-) "bd1_environment_interface/GetStateAndRewardRequest")
(setf (get bd1_environment_interface::GetStateAndRewardRequest :definition-)
      "---
bd1_environment_interface/State state
float64 reward
bool episode_end


================================================================================
MSG: bd1_environment_interface/State
float64 up_p_r
float64 up_p_l
float64 mid_p_r
float64 mid_p_l
float64 feet_p_r
float64 feet_p_l

#float64 up_v_r
#float64 up_v_l
#float64 mid_v_r
#float64 mid_v_l
#float64 feet_v_r
float64 feet_v_l

float64 neck_p
#float64 neck_v
float64 head_p
#float64 head_v

float64 pose_x
float64 pose_y
float64 pose_z
float64 rot_r
float64 rot_p
float64 rot_y

")

(setf (get bd1_environment_interface::GetStateAndRewardResponse :md5sum-) "b4311283603913f545c123b92fee5b5c")
(setf (get bd1_environment_interface::GetStateAndRewardResponse :datatype-) "bd1_environment_interface/GetStateAndRewardResponse")
(setf (get bd1_environment_interface::GetStateAndRewardResponse :definition-)
      "---
bd1_environment_interface/State state
float64 reward
bool episode_end


================================================================================
MSG: bd1_environment_interface/State
float64 up_p_r
float64 up_p_l
float64 mid_p_r
float64 mid_p_l
float64 feet_p_r
float64 feet_p_l

#float64 up_v_r
#float64 up_v_l
#float64 mid_v_r
#float64 mid_v_l
#float64 feet_v_r
float64 feet_v_l

float64 neck_p
#float64 neck_v
float64 head_p
#float64 head_v

float64 pose_x
float64 pose_y
float64 pose_z
float64 rot_r
float64 rot_p
float64 rot_y

")



(provide :bd1_environment_interface/GetStateAndReward "b4311283603913f545c123b92fee5b5c")


