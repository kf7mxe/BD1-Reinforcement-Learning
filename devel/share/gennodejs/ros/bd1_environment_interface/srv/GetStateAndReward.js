// Auto-generated. Do not edit!

// (in-package bd1_environment_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let State = require('../msg/State.js');

//-----------------------------------------------------------

class GetStateAndRewardRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStateAndRewardRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStateAndRewardRequest
    let len;
    let data = new GetStateAndRewardRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_environment_interface/GetStateAndRewardRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetStateAndRewardRequest(null);
    return resolved;
    }
};

class GetStateAndRewardResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.reward = null;
      this.episode_end = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new State();
      }
      if (initObj.hasOwnProperty('reward')) {
        this.reward = initObj.reward
      }
      else {
        this.reward = 0.0;
      }
      if (initObj.hasOwnProperty('episode_end')) {
        this.episode_end = initObj.episode_end
      }
      else {
        this.episode_end = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStateAndRewardResponse
    // Serialize message field [state]
    bufferOffset = State.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [reward]
    bufferOffset = _serializer.float64(obj.reward, buffer, bufferOffset);
    // Serialize message field [episode_end]
    bufferOffset = _serializer.bool(obj.episode_end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStateAndRewardResponse
    let len;
    let data = new GetStateAndRewardResponse(null);
    // Deserialize message field [state]
    data.state = State.deserialize(buffer, bufferOffset);
    // Deserialize message field [reward]
    data.reward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [episode_end]
    data.episode_end = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 129;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_environment_interface/GetStateAndRewardResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4311283603913f545c123b92fee5b5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetStateAndRewardResponse(null);
    if (msg.state !== undefined) {
      resolved.state = State.Resolve(msg.state)
    }
    else {
      resolved.state = new State()
    }

    if (msg.reward !== undefined) {
      resolved.reward = msg.reward;
    }
    else {
      resolved.reward = 0.0
    }

    if (msg.episode_end !== undefined) {
      resolved.episode_end = msg.episode_end;
    }
    else {
      resolved.episode_end = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetStateAndRewardRequest,
  Response: GetStateAndRewardResponse,
  md5sum() { return 'b4311283603913f545c123b92fee5b5c'; },
  datatype() { return 'bd1_environment_interface/GetStateAndReward'; }
};
