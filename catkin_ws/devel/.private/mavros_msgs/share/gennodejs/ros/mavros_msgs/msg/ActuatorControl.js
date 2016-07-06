// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ActuatorControl {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.group_mix = 0;
    this.controls = new Array(8).fill(0);
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type ActuatorControl
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [group_mix]
    bufferInfo = _serializer.uint8(obj.group_mix, bufferInfo);
    // Serialize message field [controls]
    obj.controls.forEach((val) => {
      bufferInfo = _serializer.float32(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type ActuatorControl
    let tmp;
    let len;
    let data = new ActuatorControl();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [group_mix]
    tmp = _deserializer.uint8(buffer);
    data.group_mix = tmp.data;
    buffer = tmp.buffer;
    len = 8;
    // Deserialize message field [controls]
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.float32(buffer);
      data.controls[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/ActuatorControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9eea0a80c88944fe2fb67f3b3768854b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # raw servo values for direct actuator controls
    #
    # about groups, mixing and channels:
    # https://pixhawk.org/dev/mixing
    
    # constant for mixer group
    uint8 PX4_MIX_FLIGHT_CONTROL = 0
    uint8 PX4_MIX_FLIGHT_CONTROL_VTOL_ALT = 1
    uint8 PX4_MIX_PAYLOAD = 2
    uint8 PX4_MIX_MANUAL_PASSTHROUGH = 3
    #uint8 PX4_MIX_FC_MC_VIRT = 4
    #uint8 PX4_MIX_FC_FW_VIRT = 5
    
    std_msgs/Header header
    uint8 group_mix
    float32[8] controls
    
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
ActuatorControl.Constants = {
  PX4_MIX_FLIGHT_CONTROL: 0,
  PX4_MIX_FLIGHT_CONTROL_VTOL_ALT: 1,
  PX4_MIX_PAYLOAD: 2,
  PX4_MIX_MANUAL_PASSTHROUGH: 3,
}

module.exports = ActuatorControl;
