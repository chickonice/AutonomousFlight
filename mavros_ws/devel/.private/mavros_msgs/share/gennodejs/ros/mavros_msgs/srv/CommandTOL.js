// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommandTOLRequest {
  constructor() {
    this.min_pitch = 0.0;
    this.yaw = 0.0;
    this.latitude = 0.0;
    this.longitude = 0.0;
    this.altitude = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CommandTOLRequest
    // Serialize message field [min_pitch]
    bufferInfo = _serializer.float32(obj.min_pitch, bufferInfo);
    // Serialize message field [yaw]
    bufferInfo = _serializer.float32(obj.yaw, bufferInfo);
    // Serialize message field [latitude]
    bufferInfo = _serializer.float32(obj.latitude, bufferInfo);
    // Serialize message field [longitude]
    bufferInfo = _serializer.float32(obj.longitude, bufferInfo);
    // Serialize message field [altitude]
    bufferInfo = _serializer.float32(obj.altitude, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CommandTOLRequest
    let tmp;
    let len;
    let data = new CommandTOLRequest();
    // Deserialize message field [min_pitch]
    tmp = _deserializer.float32(buffer);
    data.min_pitch = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw]
    tmp = _deserializer.float32(buffer);
    data.yaw = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [latitude]
    tmp = _deserializer.float32(buffer);
    data.latitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [longitude]
    tmp = _deserializer.float32(buffer);
    data.longitude = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [altitude]
    tmp = _deserializer.float32(buffer);
    data.altitude = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandTOLRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5aec7e34bcfe9ec68949aebae7bcd1ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float32 min_pitch
    float32 yaw
    float32 latitude
    float32 longitude
    float32 altitude
    
    `;
  }

};

class CommandTOLResponse {
  constructor() {
    this.success = false;
    this.result = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CommandTOLResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [result]
    bufferInfo = _serializer.uint8(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CommandTOLResponse
    let tmp;
    let len;
    let data = new CommandTOLResponse();
    // Deserialize message field [success]
    tmp = _deserializer.bool(buffer);
    data.success = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [result]
    tmp = _deserializer.uint8(buffer);
    data.result = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/CommandTOLResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cd894375e4e3d2861d2222772894fdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 result
    
    
    `;
  }

};

module.exports = {
  Request: CommandTOLRequest,
  Response: CommandTOLResponse
};
