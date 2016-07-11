// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GlobalPositionTarget {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.coordinate_frame = 0;
    this.type_mask = 0;
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.altitude = 0.0;
    this.velocity = new geometry_msgs.msg.Vector3();
    this.acceleration_or_force = new geometry_msgs.msg.Vector3();
    this.yaw = 0.0;
    this.yaw_rate = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type GlobalPositionTarget
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [coordinate_frame]
    bufferInfo = _serializer.uint8(obj.coordinate_frame, bufferInfo);
    // Serialize message field [type_mask]
    bufferInfo = _serializer.uint16(obj.type_mask, bufferInfo);
    // Serialize message field [latitude]
    bufferInfo = _serializer.float64(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float64(obj.longitude, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.float32(obj.altitude, bufferInfo);
    // Serialize message field [velocity]
    bufferInfo = geometry_msgs.msg.Vector3.serialize(obj.velocity, bufferInfo);
    // Serialize message field [acceleration_or_force]
    bufferInfo = geometry_msgs.msg.Vector3.serialize(obj.acceleration_or_force, bufferInfo);
    // Serialize message field [yaw]
    bufferInfo = _serializer.float32(obj.yaw, bufferInfo);
    // Serialize message field [yaw_rate]
    bufferInfo = _serializer.float32(obj.yaw_rate, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type GlobalPositionTarget
    let tmp;
    let len;
    let data = new GlobalPositionTarget();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [coordinate_frame]
    tmp = _deserializer.uint8(buffer);
    data.coordinate_frame = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [type_mask]
    tmp = _deserializer.uint16(buffer);
    data.type_mask = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [latitude]
    tmp = _deserializer.float64(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float64(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.float32(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [velocity]
    tmp = geometry_msgs.msg.Vector3.deserialize(buffer);
    data.velocity = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [acceleration_or_force]
    tmp = geometry_msgs.msg.Vector3.deserialize(buffer);
    data.acceleration_or_force = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw]
    tmp = _deserializer.float32(buffer);
    data.yaw = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw_rate]
    tmp = _deserializer.float32(buffer);
    data.yaw_rate = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/GlobalPositionTarget';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '076ded0190b9e045f9c55264659ef102';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for SET_POSITION_TARGET_GLOBAL_INT
    #
    # Some complex system requires all feautures that mavlink
    # message provide. See issue #402, #415.
    
    std_msgs/Header header
    
    uint8 coordinate_frame
    uint8 FRAME_GLOBAL_INT = 5
    uint8 FRAME_GLOBAL_REL_ALT = 6
    uint8 FRAME_GLOBAL_TERRAIN_ALT = 11
    
    uint16 type_mask
    uint16 IGNORE_LATITUDE = 1	# Position ignore flags
    uint16 IGNORE_LONGITUDE = 2
    uint16 IGNORE_ALTITUDE = 4
    uint16 IGNORE_VX = 8	# Velocity vector ignore flags
    uint16 IGNORE_VY = 16
    uint16 IGNORE_VZ = 32
    uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags
    uint16 IGNORE_AFY = 128
    uint16 IGNORE_AFZ = 256
    uint16 FORCE = 512	# Force in af vector flag
    uint16 IGNORE_YAW = 1024
    uint16 IGNORE_YAW_RATE = 2048
    
    float64 latitude
    float64 longitude
    float32 altitude	# in meters, AMSL or above terrain
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 acceleration_or_force
    float32 yaw
    float32 yaw_rate
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

};

// Constants for message
GlobalPositionTarget.Constants = {
  FRAME_GLOBAL_INT: 5,
  FRAME_GLOBAL_REL_ALT: 6,
  FRAME_GLOBAL_TERRAIN_ALT: 11,
  IGNORE_LATITUDE: 1,
  IGNORE_LONGITUDE: 2,
  IGNORE_ALTITUDE: 4,
  IGNORE_VX: 8,
  IGNORE_VY: 16,
  IGNORE_VZ: 32,
  IGNORE_AFX: 64,
  IGNORE_AFY: 128,
  IGNORE_AFZ: 256,
  FORCE: 512,
  IGNORE_YAW: 1024,
  IGNORE_YAW_RATE: 2048,
}

module.exports = GlobalPositionTarget;
