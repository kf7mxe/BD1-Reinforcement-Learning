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

class SetVectActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vector_action = null;
    }
    else {
      if (initObj.hasOwnProperty('vector_action')) {
        this.vector_action = initObj.vector_action
      }
      else {
        this.vector_action = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetVectActionRequest
    // Check that the constant length array field [vector_action] has the right length
    if (obj.vector_action.length !== 8) {
      throw new Error('Unable to serialize array field vector_action - length must be 8')
    }
    // Serialize message field [vector_action]
    bufferOffset = _arraySerializer.float64(obj.vector_action, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetVectActionRequest
    let len;
    let data = new SetVectActionRequest(null);
    // Deserialize message field [vector_action]
    data.vector_action = _arrayDeserializer.float64(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_environment_interface/SetVectActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd5ea8395bbd5a6d6460390474bdccf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # assume that they goas like
    # [up_p_r mid_p_r feet_p_r up_p_l mid_p_l feet_p_l neck_p head_p]
    float64[8] vector_action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetVectActionRequest(null);
    if (msg.vector_action !== undefined) {
      resolved.vector_action = msg.vector_action;
    }
    else {
      resolved.vector_action = new Array(8).fill(0)
    }

    return resolved;
    }
};

class SetVectActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetVectActionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetVectActionResponse
    let len;
    let data = new SetVectActionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_environment_interface/SetVectActionResponse';
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
    const resolved = new SetVectActionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetVectActionRequest,
  Response: SetVectActionResponse,
  md5sum() { return 'cd5ea8395bbd5a6d6460390474bdccf0'; },
  datatype() { return 'bd1_environment_interface/SetVectAction'; }
};
