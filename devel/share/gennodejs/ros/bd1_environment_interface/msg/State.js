// Auto-generated. Do not edit!

// (in-package bd1_environment_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.up_p_r = null;
      this.up_p_l = null;
      this.mid_p_r = null;
      this.mid_p_l = null;
      this.feet_p_r = null;
      this.feet_p_l = null;
      this.feet_v_l = null;
      this.neck_p = null;
      this.head_p = null;
      this.pose_x = null;
      this.pose_y = null;
      this.pose_z = null;
      this.rot_r = null;
      this.rot_p = null;
      this.rot_y = null;
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
      if (initObj.hasOwnProperty('head_p')) {
        this.head_p = initObj.head_p
      }
      else {
        this.head_p = 0.0;
      }
      if (initObj.hasOwnProperty('pose_x')) {
        this.pose_x = initObj.pose_x
      }
      else {
        this.pose_x = 0.0;
      }
      if (initObj.hasOwnProperty('pose_y')) {
        this.pose_y = initObj.pose_y
      }
      else {
        this.pose_y = 0.0;
      }
      if (initObj.hasOwnProperty('pose_z')) {
        this.pose_z = initObj.pose_z
      }
      else {
        this.pose_z = 0.0;
      }
      if (initObj.hasOwnProperty('rot_r')) {
        this.rot_r = initObj.rot_r
      }
      else {
        this.rot_r = 0.0;
      }
      if (initObj.hasOwnProperty('rot_p')) {
        this.rot_p = initObj.rot_p
      }
      else {
        this.rot_p = 0.0;
      }
      if (initObj.hasOwnProperty('rot_y')) {
        this.rot_y = initObj.rot_y
      }
      else {
        this.rot_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
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
    // Serialize message field [feet_v_l]
    bufferOffset = _serializer.float64(obj.feet_v_l, buffer, bufferOffset);
    // Serialize message field [neck_p]
    bufferOffset = _serializer.float64(obj.neck_p, buffer, bufferOffset);
    // Serialize message field [head_p]
    bufferOffset = _serializer.float64(obj.head_p, buffer, bufferOffset);
    // Serialize message field [pose_x]
    bufferOffset = _serializer.float64(obj.pose_x, buffer, bufferOffset);
    // Serialize message field [pose_y]
    bufferOffset = _serializer.float64(obj.pose_y, buffer, bufferOffset);
    // Serialize message field [pose_z]
    bufferOffset = _serializer.float64(obj.pose_z, buffer, bufferOffset);
    // Serialize message field [rot_r]
    bufferOffset = _serializer.float64(obj.rot_r, buffer, bufferOffset);
    // Serialize message field [rot_p]
    bufferOffset = _serializer.float64(obj.rot_p, buffer, bufferOffset);
    // Serialize message field [rot_y]
    bufferOffset = _serializer.float64(obj.rot_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
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
    // Deserialize message field [feet_v_l]
    data.feet_v_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [neck_p]
    data.neck_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [head_p]
    data.head_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pose_x]
    data.pose_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pose_y]
    data.pose_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pose_z]
    data.pose_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rot_r]
    data.rot_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rot_p]
    data.rot_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rot_y]
    data.rot_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'bd1_environment_interface/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'afe803c2f32ba818ba517f29ac23821c';
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
    const resolved = new State(null);
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

    if (msg.head_p !== undefined) {
      resolved.head_p = msg.head_p;
    }
    else {
      resolved.head_p = 0.0
    }

    if (msg.pose_x !== undefined) {
      resolved.pose_x = msg.pose_x;
    }
    else {
      resolved.pose_x = 0.0
    }

    if (msg.pose_y !== undefined) {
      resolved.pose_y = msg.pose_y;
    }
    else {
      resolved.pose_y = 0.0
    }

    if (msg.pose_z !== undefined) {
      resolved.pose_z = msg.pose_z;
    }
    else {
      resolved.pose_z = 0.0
    }

    if (msg.rot_r !== undefined) {
      resolved.rot_r = msg.rot_r;
    }
    else {
      resolved.rot_r = 0.0
    }

    if (msg.rot_p !== undefined) {
      resolved.rot_p = msg.rot_p;
    }
    else {
      resolved.rot_p = 0.0
    }

    if (msg.rot_y !== undefined) {
      resolved.rot_y = msg.rot_y;
    }
    else {
      resolved.rot_y = 0.0
    }

    return resolved;
    }
};

module.exports = State;
