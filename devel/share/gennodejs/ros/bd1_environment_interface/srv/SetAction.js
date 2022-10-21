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

class SetActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.up_p_r = null;
      this.up_p_l = null;
      this.mid_p_r = null;
      this.mid_p_l = null;
      this.feet_p_r = null;
      this.feet_p_l = null;
      this.up_v_r = null;
      this.up_v_l = null;
      this.mid_v_r = null;
      this.mid_v_l = null;
      this.feet_v_r = null;
      this.feet_v_l = null;
      this.neck_p = null;
      this.neck_v = null;
      this.head_p = null;
      this.head_v = null;
    }
    else {
      if (initObj.hasOwnProperty('up_p_r')) {
        this.up_p_r = initObj.up_p_r
      }
      else {
        this.up_p_r = 0.0;
      }
      if (initObj.hasOwnProperty('up_p_l')) {
        this.up_p_l = initObj.up_p_l
      }
      else {
        this.up_p_l = 0.0;
      }
      if (initObj.hasOwnProperty('mid_p_r')) {
        this.mid_p_r = initObj.mid_p_r
      }
      else {
        this.mid_p_r = 0.0;
      }
      if (initObj.hasOwnProperty('mid_p_l')) {
        this.mid_p_l = initObj.mid_p_l
      }
      else {
        this.mid_p_l = 0.0;
      }
      if (initObj.hasOwnProperty('feet_p_r')) {
        this.feet_p_r = initObj.feet_p_r
      }
      else {
        this.feet_p_r = 0.0;
      }
      if (initObj.hasOwnProperty('feet_p_l')) {
        this.feet_p_l = initObj.feet_p_l
      }
      else {
        this.feet_p_l = 0.0;
      }
      if (initObj.hasOwnProperty('up_v_r')) {
        this.up_v_r = initObj.up_v_r
      }
      else {
        this.up_v_r = 0.0;
      }
      if (initObj.hasOwnProperty('up_v_l')) {
        this.up_v_l = initObj.up_v_l
      }
      else {
        this.up_v_l = 0.0;
      }
      if (initObj.hasOwnProperty('mid_v_r')) {
        this.mid_v_r = initObj.mid_v_r
      }
      else {
        this.mid_v_r = 0.0;
      }
      if (initObj.hasOwnProperty('mid_v_l')) {
        this.mid_v_l = initObj.mid_v_l
      }
      else {
        this.mid_v_l = 0.0;
      }
      if (initObj.hasOwnProperty('feet_v_r')) {
        this.feet_v_r = initObj.feet_v_r
      }
      else {
        this.feet_v_r = 0.0;
      }
      if (initObj.hasOwnProperty('feet_v_l')) {
        this.feet_v_l = initObj.feet_v_l
      }
      else {
        this.feet_v_l = 0.0;
      }
      if (initObj.hasOwnProperty('neck_p')) {
        this.neck_p = initObj.neck_p
      }
      else {
        this.neck_p = 0.0;
      }
      if (initObj.hasOwnProperty('neck_v')) {
        this.neck_v = initObj.neck_v
      }
      else {
        this.neck_v = 0.0;
      }
      if (initObj.hasOwnProperty('head_p')) {
        this.head_p = initObj.head_p
      }
      else {
        this.head_p = 0.0;
      }
      if (initObj.hasOwnProperty('head_v')) {
        this.head_v = initObj.head_v
      }
      else {
        this.head_v = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetActionRequest
    // Serialize message field [up_p_r]
    bufferOffset = _serializer.float64(obj.up_p_r, buffer, bufferOffset);
    // Serialize message field [up_p_l]
    bufferOffset = _serializer.float64(obj.up_p_l, buffer, bufferOffset);
    // Serialize message field [mid_p_r]
    bufferOffset = _serializer.float64(obj.mid_p_r, buffer, bufferOffset);
    // Serialize message field [mid_p_l]
    bufferOffset = _serializer.float64(obj.mid_p_l, buffer, bufferOffset);
    // Serialize message field [feet_p_r]
    bufferOffset = _serializer.float64(obj.feet_p_r, buffer, bufferOffset);
    // Serialize message field [feet_p_l]
    bufferOffset = _serializer.float64(obj.feet_p_l, buffer, bufferOffset);
    // Serialize message field [up_v_r]
    bufferOffset = _serializer.float64(obj.up_v_r, buffer, bufferOffset);
    // Serialize message field [up_v_l]
    bufferOffset = _serializer.float64(obj.up_v_l, buffer, bufferOffset);
    // Serialize message field [mid_v_r]
    bufferOffset = _serializer.float64(obj.mid_v_r, buffer, bufferOffset);
    // Serialize message field [mid_v_l]
    bufferOffset = _serializer.float64(obj.mid_v_l, buffer, bufferOffset);
    // Serialize message field [feet_v_r]
    bufferOffset = _serializer.float64(obj.feet_v_r, buffer, bufferOffset);
    // Serialize message field [feet_v_l]
    bufferOffset = _serializer.float64(obj.feet_v_l, buffer, bufferOffset);
    // Serialize message field [neck_p]
    bufferOffset = _serializer.float64(obj.neck_p, buffer, bufferOffset);
    // Serialize message field [neck_v]
    bufferOffset = _serializer.float64(obj.neck_v, buffer, bufferOffset);
    // Serialize message field [head_p]
    bufferOffset = _serializer.float64(obj.head_p, buffer, bufferOffset);
    // Serialize message field [head_v]
    bufferOffset = _serializer.float64(obj.head_v, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetActionRequest
    let len;
    let data = new SetActionRequest(null);
    // Deserialize message field [up_p_r]
    data.up_p_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [up_p_l]
    data.up_p_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mid_p_r]
    data.mid_p_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mid_p_l]
    data.mid_p_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feet_p_r]
    data.feet_p_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feet_p_l]
    data.feet_p_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [up_v_r]
    data.up_v_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [up_v_l]
    data.up_v_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mid_v_r]
    data.mid_v_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mid_v_l]
    data.mid_v_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feet_v_r]
    data.feet_v_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [feet_v_l]
    data.feet_v_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [neck_p]
    data.neck_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [neck_v]
    data.neck_v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [head_p]
    data.head_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [head_v]
    data.head_v = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 128;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_environment_interface/SetActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '971ec173ddadd49b8b050bf728686fd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 up_p_r
    float64 up_p_l
    float64 mid_p_r
    float64 mid_p_l
    float64 feet_p_r
    float64 feet_p_l
    
    float64 up_v_r
    float64 up_v_l
    float64 mid_v_r
    float64 mid_v_l
    float64 feet_v_r
    float64 feet_v_l
    
    float64 neck_p
    float64 neck_v
    float64 head_p
    float64 head_v
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetActionRequest(null);
    if (msg.up_p_r !== undefined) {
      resolved.up_p_r = msg.up_p_r;
    }
    else {
      resolved.up_p_r = 0.0
    }

    if (msg.up_p_l !== undefined) {
      resolved.up_p_l = msg.up_p_l;
    }
    else {
      resolved.up_p_l = 0.0
    }

    if (msg.mid_p_r !== undefined) {
      resolved.mid_p_r = msg.mid_p_r;
    }
    else {
      resolved.mid_p_r = 0.0
    }

    if (msg.mid_p_l !== undefined) {
      resolved.mid_p_l = msg.mid_p_l;
    }
    else {
      resolved.mid_p_l = 0.0
    }

    if (msg.feet_p_r !== undefined) {
      resolved.feet_p_r = msg.feet_p_r;
    }
    else {
      resolved.feet_p_r = 0.0
    }

    if (msg.feet_p_l !== undefined) {
      resolved.feet_p_l = msg.feet_p_l;
    }
    else {
      resolved.feet_p_l = 0.0
    }

    if (msg.up_v_r !== undefined) {
      resolved.up_v_r = msg.up_v_r;
    }
    else {
      resolved.up_v_r = 0.0
    }

    if (msg.up_v_l !== undefined) {
      resolved.up_v_l = msg.up_v_l;
    }
    else {
      resolved.up_v_l = 0.0
    }

    if (msg.mid_v_r !== undefined) {
      resolved.mid_v_r = msg.mid_v_r;
    }
    else {
      resolved.mid_v_r = 0.0
    }

    if (msg.mid_v_l !== undefined) {
      resolved.mid_v_l = msg.mid_v_l;
    }
    else {
      resolved.mid_v_l = 0.0
    }

    if (msg.feet_v_r !== undefined) {
      resolved.feet_v_r = msg.feet_v_r;
    }
    else {
      resolved.feet_v_r = 0.0
    }

    if (msg.feet_v_l !== undefined) {
      resolved.feet_v_l = msg.feet_v_l;
    }
    else {
      resolved.feet_v_l = 0.0
    }

    if (msg.neck_p !== undefined) {
      resolved.neck_p = msg.neck_p;
    }
    else {
      resolved.neck_p = 0.0
    }

    if (msg.neck_v !== undefined) {
      resolved.neck_v = msg.neck_v;
    }
    else {
      resolved.neck_v = 0.0
    }

    if (msg.head_p !== undefined) {
      resolved.head_p = msg.head_p;
    }
    else {
      resolved.head_p = 0.0
    }

    if (msg.head_v !== undefined) {
      resolved.head_v = msg.head_v;
    }
    else {
      resolved.head_v = 0.0
    }

    return resolved;
    }
};

class SetActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetActionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetActionResponse
    let len;
    let data = new SetActionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_environment_interface/SetActionResponse';
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
    const resolved = new SetActionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetActionRequest,
  Response: SetActionResponse,
  md5sum() { return '971ec173ddadd49b8b050bf728686fd8'; },
  datatype() { return 'bd1_environment_interface/SetAction'; }
};
