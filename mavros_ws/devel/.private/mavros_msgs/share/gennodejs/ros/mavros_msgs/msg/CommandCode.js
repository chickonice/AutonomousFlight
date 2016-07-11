// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class CommandCode {
  constructor() {
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CommandCode
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CommandCode
    let tmp;
    let len;
    let data = new CommandCode();
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/CommandCode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7e54ea3892a961cc44c9350fdb0855e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Some MAV_CMD command codes.
    # Actual meaning and params you may find in MAVLink documentation
    # http://mavlink.org/messages/common#ENUM_MAV_CMD
    
    # some common MAV_CMD
    uint16 CMD_DO_SET_MODE = 176
    uint16 CMD_DO_JUMP = 177
    uint16 CMD_DO_CHANGE_SPEED = 178
    uint16 CMD_DO_SET_HOME = 179
    uint16 CMD_DO_SET_RELAY = 181
    uint16 CMD_DO_REPEAT_RELAY = 182
    uint16 CMD_DO_SET_SERVO = 183
    uint16 CMD_DO_REPEAT_SERVO = 184
    uint16 CMD_DO_CONTROL_VIDEO = 200
    uint16 CMD_DO_SET_ROI = 201
    uint16 CMD_DO_MOUNT_CONTROL = 205
    uint16 CMD_DO_SET_CAM_TRIGG_DIST = 206
    uint16 CMD_DO_FENCE_ENABLE = 207
    uint16 CMD_DO_PARACHUTE = 208
    uint16 CMD_DO_INVERTED_FLIGHT = 210
    uint16 CMD_DO_MOUNT_CONTROL_QUAT = 220
    uint16 CMD_PREFLIGHT_CALIBRATION = 241
    uint16 CMD_MISSION_START = 300
    uint16 CMD_COMPONENT_ARM_DISARM = 400
    uint16 CMD_START_RX_PAIR = 500
    uint16 CMD_REQUEST_AUTOPILOT_CAPABILITIES = 520
    uint16 CMD_DO_TRIGGER_CONTROL = 2003
    
    # Waypoint related commands
    uint16 NAV_WAYPOINT = 16
    uint16 NAV_LOITER_UNLIM = 17
    uint16 NAV_LOITER_TURNS = 18
    uint16 NAV_LOITER_TIME = 19
    uint16 NAV_RETURN_TO_LAUNCH = 20
    uint16 NAV_LAND = 21
    uint16 NAV_TAKEOFF = 22
    
    
    `;
  }

};

// Constants for message
CommandCode.Constants = {
  CMD_DO_SET_MODE: 176,
  CMD_DO_JUMP: 177,
  CMD_DO_CHANGE_SPEED: 178,
  CMD_DO_SET_HOME: 179,
  CMD_DO_SET_RELAY: 181,
  CMD_DO_REPEAT_RELAY: 182,
  CMD_DO_SET_SERVO: 183,
  CMD_DO_REPEAT_SERVO: 184,
  CMD_DO_CONTROL_VIDEO: 200,
  CMD_DO_SET_ROI: 201,
  CMD_DO_MOUNT_CONTROL: 205,
  CMD_DO_SET_CAM_TRIGG_DIST: 206,
  CMD_DO_FENCE_ENABLE: 207,
  CMD_DO_PARACHUTE: 208,
  CMD_DO_INVERTED_FLIGHT: 210,
  CMD_DO_MOUNT_CONTROL_QUAT: 220,
  CMD_PREFLIGHT_CALIBRATION: 241,
  CMD_MISSION_START: 300,
  CMD_COMPONENT_ARM_DISARM: 400,
  CMD_START_RX_PAIR: 500,
  CMD_REQUEST_AUTOPILOT_CAPABILITIES: 520,
  CMD_DO_TRIGGER_CONTROL: 2003,
  NAV_WAYPOINT: 16,
  NAV_LOITER_UNLIM: 17,
  NAV_LOITER_TURNS: 18,
  NAV_LOITER_TIME: 19,
  NAV_RETURN_TO_LAUNCH: 20,
  NAV_LAND: 21,
  NAV_TAKEOFF: 22,
}

module.exports = CommandCode;
