// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WaypointSetCurrentRequest {
  constructor() {
    this.wp_seq = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type WaypointSetCurrentRequest
    // Serialize message field [wp_seq]
    bufferInfo = _serializer.uint16(obj.wp_seq, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type WaypointSetCurrentRequest
    let tmp;
    let len;
    let data = new WaypointSetCurrentRequest();
    // Deserialize message field [wp_seq]
    tmp = _deserializer.uint16(buffer);
    data.wp_seq = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointSetCurrentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9541369175e0776b0fef1c988db6840f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    uint16 wp_seq
    
    `;
  }

};

class WaypointSetCurrentResponse {
  constructor() {
    this.success = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type WaypointSetCurrentResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type WaypointSetCurrentResponse
    let tmp;
    let len;
    let data = new WaypointSetCurrentResponse();
    // Deserialize message field [success]
    tmp = _deserializer.bool(buffer);
    data.success = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointSetCurrentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

};

module.exports = {
  Request: WaypointSetCurrentRequest,
  Response: WaypointSetCurrentResponse
};
