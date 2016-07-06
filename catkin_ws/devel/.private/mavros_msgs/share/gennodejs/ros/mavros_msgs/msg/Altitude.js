// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Altitude {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.monotonic = 0.0;
    this.amsl = 0.0;
    this.local = 0.0;
    this.relative = 0.0;
    this.terrain = 0.0;
    this.bottom_clearance = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Altitude
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [monotonic]
    bufferInfo = _serializer.float32(obj.monotonic, bufferInfo);
    // Serialize message field [amsl]
    bufferInfo = _serializer.float32(obj.amsl, bufferInfo);
    // Serialize message field [local]
    bufferInfo = _serializer.float32(obj.local, bufferInfo);
    // Serialize message field [relative]
    bufferInfo = _serializer.float32(obj.relative, bufferInfo);
    // Serialize message field [terrain]
    bufferInfo = _serializer.float32(obj.terrain, bufferInfo);
    // Serialize message field [bottom_clearance]
    bufferInfo = _serializer.float32(obj.bottom_clearance, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Altitude
    let tmp;
    let len;
    let data = new Altitude();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [monotonic]
    tmp = _deserializer.float32(buffer);
    data.monotonic = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [amsl]
    tmp = _deserializer.float32(buffer);
    data.amsl = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [local]
    tmp = _deserializer.float32(buffer);
    data.local = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [relative]
    tmp = _deserializer.float32(buffer);
    data.relative = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [terrain]
    tmp = _deserializer.float32(buffer);
    data.terrain = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [bottom_clearance]
    tmp = _deserializer.float32(buffer);
    data.bottom_clearance = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Altitude';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1296a05dc5b6160be0ae04ba9ed3a3fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Altitude information
    #
    # https://pixhawk.ethz.ch/mavlink/#ALTITUDE
    
    std_msgs/Header header
    
    float32 monotonic
    float32 amsl
    float32 local
    float32 relative
    float32 terrain
    float32 bottom_clearance
    
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

module.exports = Altitude;
