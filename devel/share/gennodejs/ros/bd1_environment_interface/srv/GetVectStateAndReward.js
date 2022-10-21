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


//-----------------------------------------------------------

class GetVectStateAndRewardRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetVectStateAndRewardRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVectStateAndRewardRequest
    let len;
    let data = new GetVectStateAndRewardRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_environment_interface/GetVectStateAndRewardRequest';
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
    const resolved = new GetVectStateAndRewardRequest(null);
    return resolved;
    }
};

class GetVectStateAndRewardResponse {
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
        this.state = new Array(14).fill(0);
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
    // Serializes a message object of type GetVectStateAndRewardResponse
    // Check that the constant length array field [state] has the right length
    if (obj.state.length !== 14) {
      throw new Error('Unable to serialize array field state - length must be 14')
    }
    // Serialize message field [state]
    bufferOffset = _arraySerializer.float64(obj.state, buffer, bufferOffset, 14);
    // Serialize message field [reward]
    bufferOffset = _serializer.float64(obj.reward, buffer, bufferOffset);
    // Serialize message field [episode_end]
    bufferOffset = _serializer.bool(obj.episode_end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetVectStateAndRewardResponse
    let len;
    let data = new GetVectStateAndRewardResponse(null);
    // Deserialize message field [state]
    data.state = _arrayDeserializer.float64(buffer, bufferOffset, 14)
    // Deserialize message field [reward]
    data.reward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [episode_end]
    data.episode_end = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 121;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_environment_interface/GetVectStateAndRewardResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2372a06335f71544d81aba4da8f6263';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # state is: 
    # bd1_x bd1_y bd1_z bd1_R bd1_P bd1_Y 
    # neckP headP up_rP, mid_rP, feet_rP, up_lP, mid_lP, feet_lP
    float64[14] state
    float64 reward
    bool episode_end
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetVectStateAndRewardResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = new Array(14).fill(0)
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
  Request: GetVectStateAndRewardRequest,
  Response: GetVectStateAndRewardResponse,
  md5sum() { return 'd2372a06335f71544d81aba4da8f6263'; },
  datatype() { return 'bd1_environment_interface/GetVectStateAndReward'; }
};
