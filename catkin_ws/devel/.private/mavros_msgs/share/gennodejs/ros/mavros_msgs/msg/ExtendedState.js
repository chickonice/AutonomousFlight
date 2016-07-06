// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ExtendedState {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.vtol_state = 0;
    this.landed_state = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ExtendedState
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [vtol_state]
    bufferInfo = _serializer.uint8(obj.vtol_state, bufferInfo);
    // Serialize message field [landed_state]
    bufferInfo = _serializer.uint8(obj.landed_state, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ExtendedState
    let tmp;
    let len;
    let data = new ExtendedState();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [vtol_state]
    tmp = _deserializer.uint8(buffer);
    data.vtol_state = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [landed_state]
    tmp = _deserializer.uint8(buffer);
    data.landed_state = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ExtendedState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2e3721f1a54980a39715b775091885e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Extended autopilot state
    #
    # http://mavlink.org/messages/common#EXTENDED_SYS_STATE
    
    uint8 VTOL_STATE_UNDEFINED = 0
    uint8 VTOL_STATE_TRANSITION_TO_FW = 1
    uint8 VTOL_STATE_TRANSITION_TO_MC = 2
    uint8 VTOL_STATE_MC = 3
    uint8 VTOL_STATE_FW = 4
    
    uint8 LANDED_STATE_UNDEFINED = 0
    uint8 LANDED_STATE_ON_GROUND = 1
    uint8 LANDED_STATE_IN_AIR = 2
    
    std_msgs/Header header
    uint8 vtol_state
    uint8 landed_state
    
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
    
    `;
  }

};

// Constants for message
ExtendedState.Constants = {
  VTOL_STATE_UNDEFINED: 0,
  VTOL_STATE_TRANSITION_TO_FW: 1,
  VTOL_STATE_TRANSITION_TO_MC: 2,
  VTOL_STATE_MC: 3,
  VTOL_STATE_FW: 4,
  LANDED_STATE_UNDEFINED: 0,
  LANDED_STATE_ON_GROUND: 1,
  LANDED_STATE_IN_AIR: 2,
}

module.exports = ExtendedState;
