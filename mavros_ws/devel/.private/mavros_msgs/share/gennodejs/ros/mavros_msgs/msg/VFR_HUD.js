// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VFR_HUD {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.airspeed = 0.0;
    this.groundspeed = 0.0;
    this.heading = 0;
    this.throttle = 0.0;
    this.altitude = 0.0;
    this.climb = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type VFR_HUD
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [airspeed]
    bufferInfo = _serializer.float32(obj.airspeed, bufferInfo);
    // Serialize message field [groundspeed]
    bufferInfo = _serializer.float32(obj.groundspeed, bufferInfo);
    // Serialize message field [heading]
    bufferInfo = _serializer.int16(obj.heading, bufferInfo);
    // Serialize message field [throttle]
    bufferInfo = _serializer.float32(obj.throttle, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.float32(obj.altitude, bufferInfo);
    // Serialize message field [climb]
    bufferInfo = _serializer.float32(obj.climb, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type VFR_HUD
    let tmp;
    let len;
    let data = new VFR_HUD();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [airspeed]
    tmp = _deserializer.float32(buffer);
    data.airspeed = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [groundspeed]
    tmp = _deserializer.float32(buffer);
    data.groundspeed = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [heading]
    tmp = _deserializer.int16(buffer);
    data.heading = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [throttle]
    tmp = _deserializer.float32(buffer);
    data.throttle = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.float32(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [climb]
    tmp = _deserializer.float32(buffer);
    data.climb = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/VFR_HUD';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f55e210c3d39fe105d44d8dc963655f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Metrics typically displayed on a HUD for fixed wing aircraft
    #
    # VFR_HUD message
    
    std_msgs/Header header
    float32 airspeed	# m/s
    float32 groundspeed	# m/s
    int16 heading		# degrees 0..360
    float32 throttle		# normalized to 0.0..1.0
    float32 altitude		# MSL
    float32 climb		# current climb rate m/s
    
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

module.exports = VFR_HUD;
