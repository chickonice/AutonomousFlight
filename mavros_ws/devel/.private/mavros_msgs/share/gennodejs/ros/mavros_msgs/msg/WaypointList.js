// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let Waypoint = require('./Waypoint.js');

//-----------------------------------------------------------

class WaypointList {
  constructor() {
    this.waypoints = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type WaypointList
    // Serialize the length for message field [waypoints]
    bufferInfo = _serializer.uint32(obj.waypoints.length, bufferInfo);
    // Serialize message field [waypoints]
    obj.waypoints.forEach((val) => {
      bufferInfo = Waypoint.serialize(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type WaypointList
    let tmp;
    let len;
    let data = new WaypointList();
    // Deserialize array length for message field [waypoints]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [waypoints]
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = Waypoint.deserialize(buffer);
      data.waypoints[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/WaypointList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2a7f3a6be7e0cbb0a52883d59e82ee9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mavros_msgs/Waypoint[] waypoints
    
    ================================================================================
    MSG: mavros_msgs/Waypoint
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

module.exports = WaypointList;
