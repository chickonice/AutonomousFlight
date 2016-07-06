// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WaypointClearRequest {
  constructor() {
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type WaypointClearRequest
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type WaypointClearRequest
    let tmp;
    let len;
    let data = new WaypointClearRequest();
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointClearRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

};

class WaypointClearResponse {
  constructor() {
    this.success = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type WaypointClearResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type WaypointClearResponse
    let tmp;
    let len;
    let data = new WaypointClearResponse();
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
    return 'mavros_msgs/WaypointClearResponse';
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
  Request: WaypointClearRequest,
  Response: WaypointClearResponse
};
