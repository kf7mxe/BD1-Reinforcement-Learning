// Auto-generated. Do not edit!

// (in-package bd1_simple_moves.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLegsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.up_l = null;
      this.up_r = null;
      this.mid_l = null;
      this.mid_r = null;
      this.feet_l = null;
      this.feet_r = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('up_l')) {
        this.up_l = initObj.up_l
      }
      else {
        this.up_l = 0.0;
      }
      if (initObj.hasOwnProperty('up_r')) {
        this.up_r = initObj.up_r
      }
      else {
        this.up_r = 0.0;
      }
      if (initObj.hasOwnProperty('mid_l')) {
        this.mid_l = initObj.mid_l
      }
      else {
        this.mid_l = 0.0;
      }
      if (initObj.hasOwnProperty('mid_r')) {
        this.mid_r = initObj.mid_r
      }
      else {
        this.mid_r = 0.0;
      }
      if (initObj.hasOwnProperty('feet_l')) {
        this.feet_l = initObj.feet_l
      }
      else {
        this.feet_l = 0.0;
      }
      if (initObj.hasOwnProperty('feet_r')) {
        this.feet_r = initObj.feet_r
      }
      else {
        this.feet_r = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLegsRequest
    // Serialize message field [up_l]
    bufferOffset = _serializer.float64(obj.up_l, buffer, bufferOffset);
    // Serialize message field [up_r]
    bufferOffset = _serializer.float64(obj.up_r, buffer, bufferOffset);
    // Serialize message field [mid_l]
    bufferOffset = _serializer.float64(obj.mid_l, buffer, bufferOffset);
    // Serialize message field [mid_r]
    bufferOffset = _serializer.float64(obj.mid_r, buffer, bufferOffset);
    // Serialize message field [feet_l]
    bufferOffset = _serializer.float64(obj.feet_l, buffer, bufferOffset);
    // Serialize message field [feet_r]
    bufferOffset = _serializer.float64(obj.feet_r, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLegsRequest
    let len;
    let data = new SetLegsRequest(null);
    // Deserialize message field [up_l]
    data.up_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [up_r]
    data.up_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mid_l]
    data.mid_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mid_r]
    data.mid_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feet_l]
    data.feet_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feet_r]
    data.feet_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_simple_moves/SetLegsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d9a80bd490b256de1b51b4977337d66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 up_l
    float64 up_r
    float64 mid_l
    float64 mid_r
    float64 feet_l
    float64 feet_r
    float64 speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLegsRequest(null);
    if (msg.up_l !== undefined) {
      resolved.up_l = msg.up_l;
    }
    else {
      resolved.up_l = 0.0
    }

    if (msg.up_r !== undefined) {
      resolved.up_r = msg.up_r;
    }
    else {
      resolved.up_r = 0.0
    }

    if (msg.mid_l !== undefined) {
      resolved.mid_l = msg.mid_l;
    }
    else {
      resolved.mid_l = 0.0
    }

    if (msg.mid_r !== undefined) {
      resolved.mid_r = msg.mid_r;
    }
    else {
      resolved.mid_r = 0.0
    }

    if (msg.feet_l !== undefined) {
      resolved.feet_l = msg.feet_l;
    }
    else {
      resolved.feet_l = 0.0
    }

    if (msg.feet_r !== undefined) {
      resolved.feet_r = msg.feet_r;
    }
    else {
      resolved.feet_r = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

class SetLegsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLegsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLegsResponse
    let len;
    let data = new SetLegsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_simple_moves/SetLegsResponse';
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
    const resolved = new SetLegsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetLegsRequest,
  Response: SetLegsResponse,
  md5sum() { return '8d9a80bd490b256de1b51b4977337d66'; },
  datatype() { return 'bd1_simple_moves/SetLegs'; }
};
