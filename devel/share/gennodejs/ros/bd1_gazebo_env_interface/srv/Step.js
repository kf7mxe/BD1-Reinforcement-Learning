// Auto-generated. Do not edit!

// (in-package bd1_gazebo_env_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StepRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.step_duration_sec = null;
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('step_duration_sec')) {
        this.step_duration_sec = initObj.step_duration_sec
      }
      else {
        this.step_duration_sec = 0.0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepRequest
    // Serialize message field [step_duration_sec]
    bufferOffset = _serializer.float64(obj.step_duration_sec, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _arraySerializer.float64(obj.action, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepRequest
    let len;
    let data = new StepRequest(null);
    // Deserialize message field [step_duration_sec]
    data.step_duration_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.action.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_gazebo_env_interface/StepRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e18c83a2373bd99092d97bd47bf7b38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 step_duration_sec
    float64[] action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepRequest(null);
    if (msg.step_duration_sec !== undefined) {
      resolved.step_duration_sec = msg.step_duration_sec;
    }
    else {
      resolved.step_duration_sec = 0.0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = []
    }

    return resolved;
    }
};

class StepResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.reward = null;
      this.done = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
      if (initObj.hasOwnProperty('reward')) {
        this.reward = initObj.reward
      }
      else {
        this.reward = 0.0;
      }
      if (initObj.hasOwnProperty('done')) {
        this.done = initObj.done
      }
      else {
        this.done = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepResponse
    // Serialize message field [state]
    bufferOffset = _arraySerializer.float64(obj.state, buffer, bufferOffset, null);
    // Serialize message field [reward]
    bufferOffset = _serializer.float64(obj.reward, buffer, bufferOffset);
    // Serialize message field [done]
    bufferOffset = _serializer.bool(obj.done, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepResponse
    let len;
    let data = new StepResponse(null);
    // Deserialize message field [state]
    data.state = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [reward]
    data.reward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [done]
    data.done = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.state.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_gazebo_env_interface/StepResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f17d66b0d8b3857d73b69cce45ea3648';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] state
    float64 reward
    bool done
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = []
    }

    if (msg.reward !== undefined) {
      resolved.reward = msg.reward;
    }
    else {
      resolved.reward = 0.0
    }

    if (msg.done !== undefined) {
      resolved.done = msg.done;
    }
    else {
      resolved.done = false
    }

    return resolved;
    }
};

module.exports = {
  Request: StepRequest,
  Response: StepResponse,
  md5sum() { return '648a9a46b996eb566b6958c8792202c4'; },
  datatype() { return 'bd1_gazebo_env_interface/Step'; }
};
