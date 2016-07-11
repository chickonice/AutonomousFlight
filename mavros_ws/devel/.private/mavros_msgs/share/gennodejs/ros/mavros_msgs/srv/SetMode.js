// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetModeRequest {
  constructor() {
    this.base_mode = 0;
    this.custom_mode = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type SetModeRequest
    // Serialize message field [base_mode]
    bufferInfo = _serializer.uint8(obj.base_mode, bufferInfo);
    // Serialize message field [custom_mode]
    bufferInfo = _serializer.string(obj.custom_mode, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type SetModeRequest
    let tmp;
    let len;
    let data = new SetModeRequest();
    // Deserialize message field [base_mode]
    tmp = _deserializer.uint8(buffer);
    data.base_mode = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [custom_mode]
    tmp = _deserializer.string(buffer);
    data.custom_mode = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/SetModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd770431847cad3a8f50a81ec70ddf0e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    uint8 MAV_MODE_PREFLIGHT		= 0
    uint8 MAV_MODE_STABILIZE_DISARMED	= 80
    uint8 MAV_MODE_STABILIZE_ARMED		= 208
    uint8 MAV_MODE_MANUAL_DISARMED		= 64
    uint8 MAV_MODE_MANUAL_ARMED		= 192
    uint8 MAV_MODE_GUIDED_DISARMED		= 88
    uint8 MAV_MODE_GUIDED_ARMED		= 216
    uint8 MAV_MODE_AUTO_DISARMED		= 92
    uint8 MAV_MODE_AUTO_ARMED		= 220
    uint8 MAV_MODE_TEST_DISARMED		= 66
    uint8 MAV_MODE_TEST_ARMED		= 194
    
    uint8 base_mode
    string custom_mode
    
    `;
  }

};

// Constants for message
SetModeRequest.Constants = {
  MAV_MODE_PREFLIGHT: 0,
  MAV_MODE_STABILIZE_DISARMED: 80,
  MAV_MODE_STABILIZE_ARMED: 208,
  MAV_MODE_MANUAL_DISARMED: 64,
  MAV_MODE_MANUAL_ARMED: 192,
  MAV_MODE_GUIDED_DISARMED: 88,
  MAV_MODE_GUIDED_ARMED: 216,
  MAV_MODE_AUTO_DISARMED: 92,
  MAV_MODE_AUTO_ARMED: 220,
  MAV_MODE_TEST_DISARMED: 66,
  MAV_MODE_TEST_ARMED: 194,
}

class SetModeResponse {
  constructor() {
    this.success = false;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type SetModeResponse
    // Serialize message field [success]
    bufferInfo = _serializer.bool(obj.success, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type SetModeResponse
    let tmp;
    let len;
    let data = new SetModeResponse();
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
    return 'mavros_msgs/SetModeResponse';
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
  Request: SetModeRequest,
  Response: SetModeResponse
};
