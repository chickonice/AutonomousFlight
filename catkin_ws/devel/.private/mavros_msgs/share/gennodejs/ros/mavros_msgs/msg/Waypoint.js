// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class Waypoint {
  constructor() {
    this.frame = 0;
    this.command = 0;
    this.is_current = false;
    this.autocontinue = false;
    this.param1 = 0.0;
    this.param2 = 0.0;
    this.param3 = 0.0;
    this.param4 = 0.0;
    this.x_lat = 0.0;
    this.y_long = 0.0;
    this.z_alt = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Waypoint
    // Serialize message field [frame]
    bufferInfo = _serializer.uint8(obj.frame, bufferInfo);
    // Serialize message field [command]
    bufferInfo = _serializer.uint16(obj.command, bufferInfo);
    // Serialize message field [is_current]
    bufferInfo = _serializer.bool(obj.is_current, bufferInfo);
    // Serialize message field [autocontinue]
    bufferInfo = _serializer.bool(obj.autocontinue, bufferInfo);
    // Serialize message field [param1]
    bufferInfo = _serializer.float32(obj.param1, bufferInfo);
    // Serialize message field [param2]
    bufferInfo = _serializer.float32(obj.param2, bufferInfo);
    // Serialize message field [param3]
    bufferInfo = _serializer.float32(obj.param3, bufferInfo);
    // Serialize message field [param4]
    bufferInfo = _serializer.float32(obj.param4, bufferInfo);
    // Serialize message field [x_lat]
    bufferInfo = _serializer.float64(obj.x_lat, bufferInfo);
    // Serialize message field [y_long]
    bufferInfo = _serializer.float64(obj.y_long, bufferInfo);
    // Serialize message field [z_alt]
    bufferInfo = _serializer.float64(obj.z_alt, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Waypoint
    let tmp;
    let len;
    let data = new Waypoint();
    // Deserialize message field [frame]
    tmp = _deserializer.uint8(buffer);
    data.frame = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [command]
    tmp = _deserializer.uint16(buffer);
    data.command = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [is_current]
    tmp = _deserializer.bool(buffer);
    data.is_current = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [autocontinue]
    tmp = _deserializer.bool(buffer);
    data.autocontinue = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param1]
    tmp = _deserializer.float32(buffer);
    data.param1 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param2]
    tmp = _deserializer.float32(buffer);
    data.param2 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param3]
    tmp = _deserializer.float32(buffer);
    data.param3 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [param4]
    tmp = _deserializer.float32(buffer);
    data.param4 = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [x_lat]
    tmp = _deserializer.float64(buffer);
    data.x_lat = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [y_long]
    tmp = _deserializer.float64(buffer);
    data.y_long = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [z_alt]
    tmp = _deserializer.float64(buffer);
    data.z_alt = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a0d2b53dcd6b7aff0aa748703e85e92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Waypoint.msg
    #
    # ROS representation of MAVLink MISSION_ITEM
    # See mavlink documentation
    
    
    
    # see enum MAV_FRAME
    uint8 frame
    uint8 FRAME_GLOBAL = 0
    uint8 FRAME_LOCAL_NED = 1
    uint8 FRAME_MISSION = 2
    uint8 FRAME_GLOBAL_REL_ALT = 3
    uint8 FRAME_LOCAL_ENU = 4
    
    # see enum MAV_CMD and CommandCode.msg
    uint16 command
    
    bool is_current
    bool autocontinue
    # meaning of this params described in enum MAV_CMD
    float32 param1
    float32 param2
    float32 param3
    float32 param4
    float64 x_lat
    float64 y_long
    float64 z_alt
    
    `;
  }

};

// Constants for message
Waypoint.Constants = {
  FRAME_GLOBAL: 0,
  FRAME_LOCAL_NED: 1,
  FRAME_MISSION: 2,
  FRAME_GLOBAL_REL_ALT: 3,
  FRAME_LOCAL_ENU: 4,
}

module.exports = Waypoint;
