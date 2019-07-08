// Auto-generated. Do not edit!

// (in-package map_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let ProjectedMapInfo = require('../msg/ProjectedMapInfo.js');

//-----------------------------------------------------------

class SetMapProjectionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMapProjectionsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMapProjectionsRequest
    let len;
    let data = new SetMapProjectionsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_msgs/SetMapProjectionsRequest';
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
    const resolved = new SetMapProjectionsRequest(null);
    return resolved;
    }
};

class SetMapProjectionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.projected_maps_info = null;
    }
    else {
      if (initObj.hasOwnProperty('projected_maps_info')) {
        this.projected_maps_info = initObj.projected_maps_info
      }
      else {
        this.projected_maps_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetMapProjectionsResponse
    // Serialize message field [projected_maps_info]
    // Serialize the length for message field [projected_maps_info]
    bufferOffset = _serializer.uint32(obj.projected_maps_info.length, buffer, bufferOffset);
    obj.projected_maps_info.forEach((val) => {
      bufferOffset = ProjectedMapInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetMapProjectionsResponse
    let len;
    let data = new SetMapProjectionsResponse(null);
    // Deserialize message field [projected_maps_info]
    // Deserialize array length for message field [projected_maps_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.projected_maps_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.projected_maps_info[i] = ProjectedMapInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.projected_maps_info.forEach((val) => {
      length += ProjectedMapInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_msgs/SetMapProjectionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7980a33202421c8cd74565e57a4d229';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    map_msgs/ProjectedMapInfo[] projected_maps_info
    
    
    ================================================================================
    MSG: map_msgs/ProjectedMapInfo
    string frame_id
    float64 x
    float64 y
    float64 width
    float64 height
    float64 min_z
    float64 max_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetMapProjectionsResponse(null);
    if (msg.projected_maps_info !== undefined) {
      resolved.projected_maps_info = new Array(msg.projected_maps_info.length);
      for (let i = 0; i < resolved.projected_maps_info.length; ++i) {
        resolved.projected_maps_info[i] = ProjectedMapInfo.Resolve(msg.projected_maps_info[i]);
      }
    }
    else {
      resolved.projected_maps_info = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SetMapProjectionsRequest,
  Response: SetMapProjectionsResponse,
  md5sum() { return 'd7980a33202421c8cd74565e57a4d229'; },
  datatype() { return 'map_msgs/SetMapProjections'; }
};
