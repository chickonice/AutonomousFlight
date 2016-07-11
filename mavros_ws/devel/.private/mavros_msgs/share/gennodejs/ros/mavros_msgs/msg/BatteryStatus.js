// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BatteryStatus {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.voltage = 0.0;
    this.current = 0.0;
    this.remaining = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type BatteryStatus
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [voltage]
    bufferInfo = _serializer.float32(obj.voltage, bufferInfo);
    // Serialize message field [current]
    bufferInfo = _serializer.float32(obj.current, bufferInfo);
    // Serialize message field [remaining]
    bufferInfo = _serializer.float32(obj.remaining, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type BatteryStatus
    let tmp;
    let len;
    let data = new BatteryStatus();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [voltage]
    tmp = _deserializer.float32(buffer);
    data.voltage = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [current]
    tmp = _deserializer.float32(buffer);
    data.current = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [remaining]
    tmp = _deserializer.float32(buffer);
    data.remaining = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/BatteryStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ba4ae7c602c5ae6a7e8f3ffb652dc5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Represent battery status from SYSTEM_STATUS
    #
    # To be replaced when sensor_msgs/BatteryState PR will be merged
    # https://github.com/ros/common_msgs/pull/74
    
    std_msgs/Header header
    float32 voltage # [V]
    float32 current # [A]
    float32 remaining # 0..1
    
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

module.exports = BatteryStatus;
