// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class CamIMUStamp {
  constructor() {
    this.frame_stamp = {secs: 0, nsecs: 0};
    this.frame_seq_id = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type CamIMUStamp
    // Serialize message field [frame_stamp]
    bufferInfo = _serializer.time(obj.frame_stamp, bufferInfo);
    // Serialize message field [frame_seq_id]
    bufferInfo = _serializer.int32(obj.frame_seq_id, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type CamIMUStamp
    let tmp;
    let len;
    let data = new CamIMUStamp();
    // Deserialize message field [frame_stamp]
    tmp = _deserializer.time(buffer);
    data.frame_stamp = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [frame_seq_id]
    tmp = _deserializer.int32(buffer);
    data.frame_seq_id = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/CamIMUStamp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac22af9031671dd528a56f12d0986660';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # IMU-Camera synchronisation data
    
    time frame_stamp		# Timestamp when the camera was triggered
    int32 frame_seq_id		# Sequence number of the image frame
    
    `;
  }

};

module.exports = CamIMUStamp;
