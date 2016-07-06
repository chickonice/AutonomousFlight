// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class OverrideRCIn {
  constructor() {
    this.channels = new Array(8).fill(0);
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type OverrideRCIn
    // Serialize message field [channels]
    obj.channels.forEach((val) => {
      bufferInfo = _serializer.uint16(val, bufferInfo);
    });
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type OverrideRCIn
    let tmp;
    let len;
    let data = new OverrideRCIn();
    len = 8;
    // Deserialize message field [channels]
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.uint16(buffer);
      data.channels[i] = tmp.data;
      buffer = tmp.buffer;
    }
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/OverrideRCIn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73b27a463a40a3eda1f9fbb1fc86d6f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Override RC Input
    # Currently MAVLink defines override for 8 channel
    
    uint16 CHAN_RELEASE=0
    uint16 CHAN_NOCHANGE=65535
    
    uint16[8] channels
    
    `;
  }

};

// Constants for message
OverrideRCIn.Constants = {
  CHAN_RELEASE: 0,
  CHAN_NOCHANGE: 65535,
}

module.exports = OverrideRCIn;
