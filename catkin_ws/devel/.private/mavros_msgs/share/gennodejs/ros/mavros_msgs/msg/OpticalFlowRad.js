// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OpticalFlowRad {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.integration_time_us = 0;
    this.integrated_x = 0.0;
    this.integrated_y = 0.0;
    this.integrated_xgyro = 0.0;
    this.integrated_ygyro = 0.0;
    this.integrated_zgyro = 0.0;
    this.temperature = 0;
    this.quality = 0;
    this.time_delta_distance_us = 0;
    this.distance = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type OpticalFlowRad
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [integration_time_us]
    bufferInfo = _serializer.uint32(obj.integration_time_us, bufferInfo);
    // Serialize message field [integrated_x]
    bufferInfo = _serializer.float32(obj.integrated_x, bufferInfo);
    // Serialize message field [integrated_y]
    bufferInfo = _serializer.float32(obj.integrated_y, bufferInfo);
    // Serialize message field [integrated_xgyro]
    bufferInfo = _serializer.float32(obj.integrated_xgyro, bufferInfo);
    // Serialize message field [integrated_ygyro]
    bufferInfo = _serializer.float32(obj.integrated_ygyro, bufferInfo);
    // Serialize message field [integrated_zgyro]
    bufferInfo = _serializer.float32(obj.integrated_zgyro, bufferInfo);
    // Serialize message field [temperature]
    bufferInfo = _serializer.int16(obj.temperature, bufferInfo);
    // Serialize message field [quality]
    bufferInfo = _serializer.uint8(obj.quality, bufferInfo);
    // Serialize message field [time_delta_distance_us]
    bufferInfo = _serializer.uint32(obj.time_delta_distance_us, bufferInfo);
    // Serialize message field [distance]
    bufferInfo = _serializer.float32(obj.distance, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type OpticalFlowRad
    let tmp;
    let len;
    let data = new OpticalFlowRad();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [integration_time_us]
    tmp = _deserializer.uint32(buffer);
    data.integration_time_us = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [integrated_x]
    tmp = _deserializer.float32(buffer);
    data.integrated_x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [integrated_y]
    tmp = _deserializer.float32(buffer);
    data.integrated_y = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [integrated_xgyro]
    tmp = _deserializer.float32(buffer);
    data.integrated_xgyro = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [integrated_ygyro]
    tmp = _deserializer.float32(buffer);
    data.integrated_ygyro = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [integrated_zgyro]
    tmp = _deserializer.float32(buffer);
    data.integrated_zgyro = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [temperature]
    tmp = _deserializer.int16(buffer);
    data.temperature = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [quality]
    tmp = _deserializer.uint8(buffer);
    data.quality = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [time_delta_distance_us]
    tmp = _deserializer.uint32(buffer);
    data.time_delta_distance_us = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [distance]
    tmp = _deserializer.float32(buffer);
    data.distance = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/OpticalFlowRad';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65d93e03c6188c7ee30415b2a39ad40d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # OPTICAL_FLOW_RAD message data
    
    std_msgs/Header header
    
    uint32 integration_time_us
    float32 integrated_x
    float32 integrated_y
    float32 integrated_xgyro
    float32 integrated_ygyro
    float32 integrated_zgyro
    int16 temperature
    uint8 quality
    uint32 time_delta_distance_us
    float32 distance
    
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

module.exports = OpticalFlowRad;
