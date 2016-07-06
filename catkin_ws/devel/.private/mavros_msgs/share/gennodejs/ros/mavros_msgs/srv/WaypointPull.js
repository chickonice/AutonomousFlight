// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WaypointPullRequest {
  constructor() {
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type WaypointPullRequest
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type WaypointPullRequest
    let tmp;
    let len;
    let data = new WaypointPullRequest();
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointPullRequest';
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

class WaypointPullResponse {
  constructor() {
    this.success = false;
    this.wp_received = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type WaypointPullResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    // Serialize message field [wp_received]
    bufferInfo = _serializer.uint32(obj.wp_received, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type WaypointPullResponse
    let tmp;
    let len;
    let data = new WaypointPullResponse();
    // Deserialize message field [success]
    tmp = _deserializer.bool(buffer);
    data.success = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [wp_received]
    tmp = _deserializer.uint32(buffer);
    data.wp_received = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/WaypointPullResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8d9ecef8fb37028d2db2a9aa4ed7e79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint32 wp_received
    
    
    `;
  }

};

module.exports = {
  Request: WaypointPullRequest,
  Response: WaypointPullResponse
};
