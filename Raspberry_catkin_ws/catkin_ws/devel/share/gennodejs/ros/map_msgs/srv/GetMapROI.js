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

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class GetMapROIRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.l_x = null;
      this.l_y = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('l_x')) {
        this.l_x = initObj.l_x
      }
      else {
        this.l_x = 0.0;
      }
      if (initObj.hasOwnProperty('l_y')) {
        this.l_y = initObj.l_y
      }
      else {
        this.l_y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapROIRequest
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [l_x]
    bufferOffset = _serializer.float64(obj.l_x, buffer, bufferOffset);
    // Serialize message field [l_y]
    bufferOffset = _serializer.float64(obj.l_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapROIRequest
    let len;
    let data = new GetMapROIRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [l_x]
    data.l_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [l_y]
    data.l_y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_msgs/GetMapROIRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43c2ff8f45af555c0eaf070c401e9a47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 l_x
    float64 l_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapROIRequest(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.l_x !== undefined) {
      resolved.l_x = msg.l_x;
    }
    else {
      resolved.l_x = 0.0
    }

    if (msg.l_y !== undefined) {
      resolved.l_y = msg.l_y;
    }
    else {
      resolved.l_y = 0.0
    }

    return resolved;
    }
};

class GetMapROIResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sub_map = null;
    }
    else {
      if (initObj.hasOwnProperty('sub_map')) {
        this.sub_map = initObj.sub_map
      }
      else {
        this.sub_map = new nav_msgs.msg.OccupancyGrid();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapROIResponse
    // Serialize message field [sub_map]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.sub_map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMapROIResponse
    let len;
    let data = new GetMapROIResponse(null);
    // Deserialize message field [sub_map]
    data.sub_map = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.sub_map);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_msgs/GetMapROIResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d1986519c00d81967d2891a606b234c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/OccupancyGrid sub_map
    
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapROIResponse(null);
    if (msg.sub_map !== undefined) {
      resolved.sub_map = nav_msgs.msg.OccupancyGrid.Resolve(msg.sub_map)
    }
    else {
      resolved.sub_map = new nav_msgs.msg.OccupancyGrid()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMapROIRequest,
  Response: GetMapROIResponse,
  md5sum() { return '81aa75ecf00f4571a9be0d9dc6dea512'; },
  datatype() { return 'map_msgs/GetMapROI'; }
};
