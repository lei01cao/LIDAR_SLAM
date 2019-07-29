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

let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class GetPointMapROIRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.r = null;
      this.l_x = null;
      this.l_y = null;
      this.l_z = null;
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
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
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
      if (initObj.hasOwnProperty('l_z')) {
        this.l_z = initObj.l_z
      }
      else {
        this.l_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPointMapROIRequest
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float64(obj.r, buffer, bufferOffset);
    // Serialize message field [l_x]
    bufferOffset = _serializer.float64(obj.l_x, buffer, bufferOffset);
    // Serialize message field [l_y]
    bufferOffset = _serializer.float64(obj.l_y, buffer, bufferOffset);
    // Serialize message field [l_z]
    bufferOffset = _serializer.float64(obj.l_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPointMapROIRequest
    let len;
    let data = new GetPointMapROIRequest(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [l_x]
    data.l_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [l_y]
    data.l_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [l_z]
    data.l_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_msgs/GetPointMapROIRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '895f7e437a9a6dd225316872b187a303';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 z
    float64 r
    float64 l_x
    float64 l_y
    float64 l_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPointMapROIRequest(null);
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

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
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

    if (msg.l_z !== undefined) {
      resolved.l_z = msg.l_z;
    }
    else {
      resolved.l_z = 0.0
    }

    return resolved;
    }
};

class GetPointMapROIResponse {
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
        this.sub_map = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPointMapROIResponse
    // Serialize message field [sub_map]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.sub_map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPointMapROIResponse
    let len;
    let data = new GetPointMapROIResponse(null);
    // Deserialize message field [sub_map]
    data.sub_map = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.sub_map);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'map_msgs/GetPointMapROIResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '313769f8b0e724525c6463336cbccd63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 sub_map
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
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
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPointMapROIResponse(null);
    if (msg.sub_map !== undefined) {
      resolved.sub_map = sensor_msgs.msg.PointCloud2.Resolve(msg.sub_map)
    }
    else {
      resolved.sub_map = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPointMapROIRequest,
  Response: GetPointMapROIResponse,
  md5sum() { return 'd955594b5ccde9615cbe5aed9442f733'; },
  datatype() { return 'map_msgs/GetPointMapROI'; }
};
