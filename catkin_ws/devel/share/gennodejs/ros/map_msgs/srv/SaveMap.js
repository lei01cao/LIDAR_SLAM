// Auto-generated. Do not edit!

// (in-package map_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filename = null;
    }
    else {
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMapRequest
    // Serialize message field [filename]
    bufferOffset = std_msgs.msg.String.serialize(obj.filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapRequest
    let len;
    let data = new SaveMapRequest(null);
    // Deserialize message field [filename]
    data.filename = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.filename);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_msgs/SaveMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '716e25f9d9dc76ceba197f93cbf05dc7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/String filename
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveMapRequest(null);
    if (msg.filename !== undefined) {
      resolved.filename = std_msgs.msg.String.Resolve(msg.filename)
    }
    else {
      resolved.filename = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class SaveMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMapResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMapResponse
    let len;
    let data = new SaveMapResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_msgs/SaveMapResponse';
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
    const resolved = new SaveMapResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SaveMapRequest,
  Response: SaveMapResponse,
  md5sum() { return '716e25f9d9dc76ceba197f93cbf05dc7'; },
  datatype() { return 'map_msgs/SaveMap'; }
};
