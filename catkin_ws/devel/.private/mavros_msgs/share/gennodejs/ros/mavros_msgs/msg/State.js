// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class State {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.connected = false;
    this.armed = false;
    this.guided = false;
    this.mode = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type State
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [connected]
    bufferInfo = _serializer.bool(obj.connected, bufferInfo);
    // Serialize message field [armed]
    bufferInfo = _serializer.bool(obj.armed, bufferInfo);
    // Serialize message field [guided]
    bufferInfo = _serializer.bool(obj.guided, bufferInfo);
    // Serialize message field [mode]
    bufferInfo = _serializer.string(obj.mode, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type State
    let tmp;
    let len;
    let data = new State();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [connected]
    tmp = _deserializer.bool(buffer);
    data.connected = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [armed]
    tmp = _deserializer.bool(buffer);
    data.armed = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [guided]
    tmp = _deserializer.bool(buffer);
    data.guided = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [mode]
    tmp = _deserializer.string(buffer);
    data.mode = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e3d873fae342c8f48a8bd64c53d991e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Current autopilot state
    #
    # Known modes listed here:
    # http://wiki.ros.org/mavros/CustomModes
    
    std_msgs/Header header
    bool connected
    bool armed
    bool guided
    string mode
    
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

module.exports = State;
