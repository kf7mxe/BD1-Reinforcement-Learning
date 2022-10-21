// Auto-generated. Do not edit!

// (in-package bd1_train.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveAgentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveAgentRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveAgentRequest
    let len;
    let data = new SaveAgentRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_train/SaveAgentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveAgentRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class SaveAgentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.directory_path = null;
    }
    else {
      if (initObj.hasOwnProperty('directory_path')) {
        this.directory_path = initObj.directory_path
      }
      else {
        this.directory_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveAgentResponse
    // Serialize message field [directory_path]
    bufferOffset = _serializer.string(obj.directory_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveAgentResponse
    let len;
    let data = new SaveAgentResponse(null);
    // Deserialize message field [directory_path]
    data.directory_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.directory_path);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'bd1_train/SaveAgentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90dcb560b000b228109ef2e71a0336c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string directory_path
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveAgentResponse(null);
    if (msg.directory_path !== undefined) {
      resolved.directory_path = msg.directory_path;
    }
    else {
      resolved.directory_path = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SaveAgentRequest,
  Response: SaveAgentResponse,
  md5sum() { return '641c24cd18aefc7a57649fc1a8a53333'; },
  datatype() { return 'bd1_train/SaveAgent'; }
};
