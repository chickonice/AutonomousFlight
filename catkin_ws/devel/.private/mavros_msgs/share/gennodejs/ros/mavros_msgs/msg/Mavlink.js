// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Mavlink {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.framing_status = 0;
    this.magic = 0;
    this.len = 0;
    this.incompat_flags = 0;
    this.compat_flags = 0;
    this.seq = 0;
    this.sysid = 0;
    this.compid = 0;
    this.msgid = 0;
    this.checksum = 0;
    this.payload64 = [];
    this.signature = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Mavlink
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [framing_status]
    bufferInfo = _serializer.uint8(obj.framing_status, bufferInfo);
    // Serialize message field [magic]
    bufferInfo = _serializer.uint8(obj.magic, bufferInfo);
    // Serialize message field [len]
    bufferInfo = _serializer.uint8(obj.len, bufferInfo);
    // Serialize message field [incompat_flags]
    bufferInfo = _serializer.uint8(obj.incompat_flags, bufferInfo);
    // Serialize message field [compat_flags]
    bufferInfo = _serializer.uint8(obj.compat_flags, bufferInfo);
    // Serialize message field [seq]
    bufferInfo = _serializer.uint8(obj.seq, bufferInfo);
    // Serialize message field [sysid]
    bufferInfo = _serializer.uint8(obj.sysid, bufferInfo);
    // Serialize message field [compid]
    bufferInfo = _serializer.uint8(obj.compid, bufferInfo);
    // Serialize message field [msgid]
    bufferInfo = _serializer.uint32(obj.msgid, bufferInfo);
    // Serialize message field [checksum]
    bufferInfo = _serializer.uint16(obj.checksum, bufferInfo);
    // Serialize the length for message field [payload64]
    bufferInfo = _serializer.uint32(obj.payload64.length, bufferInfo);
    // Serialize message field [payload64]
    obj.payload64.forEach((val) => {
      bufferInfo = _serializer.uint64(val, bufferInfo);
    });
    // Serialize the length for message field [signature]
    bufferInfo = _serializer.uint32(obj.signature.length, bufferInfo);
    // Serialize message field [signature]
    bufferInfo.buffer.push(obj.signature);
    bufferInfo.length += obj.signature.length;
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Mavlink
    let tmp;
    let len;
    let data = new Mavlink();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [framing_status]
    tmp = _deserializer.uint8(buffer);
    data.framing_status = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [magic]
    tmp = _deserializer.uint8(buffer);
    data.magic = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [len]
    tmp = _deserializer.uint8(buffer);
    data.len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [incompat_flags]
    tmp = _deserializer.uint8(buffer);
    data.incompat_flags = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [compat_flags]
    tmp = _deserializer.uint8(buffer);
    data.compat_flags = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [seq]
    tmp = _deserializer.uint8(buffer);
    data.seq = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [sysid]
    tmp = _deserializer.uint8(buffer);
    data.sysid = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [compid]
    tmp = _deserializer.uint8(buffer);
    data.compid = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [msgid]
    tmp = _deserializer.uint32(buffer);
    data.msgid = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [checksum]
    tmp = _deserializer.uint16(buffer);
    data.checksum = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [payload64]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [payload64]
    data.payload64 = new Array(len);
    for (let i = 0; i < len; ++i) {
      tmp = _deserializer.uint64(buffer);
      data.payload64[i] = tmp.data;
      buffer = tmp.buffer;
    }
    // Deserialize array length for message field [signature]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [signature]
    data.signature = buffer.slice(0, len);
    buffer =  buffer.slice(len);
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/Mavlink';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41093e1fd0f3eea1da2aa33a177e5ba6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Mavlink message transport type.
    #
    # Used to transport mavlink_message_t via ROS topic
    #
    # :framing_status:
    #       Frame decoding status: OK, CRC error, bad Signature (mavlink v2.0)
    #       You may simply drop all non valid messages.
    #       Used for GCS Bridge to transport unknown messages.
    #
    # :magic:
    #       STX byte, used to determine protocol version v1.0 or v2.0.
    #
    # Please use mavros_msgs::mavlink::convert() from <mavros_msgs/mavlink_convert.h>
    # to convert between ROS and MAVLink message type
    
    # mavlink_framing_t enum
    uint8 FRAMING_OK = 1
    uint8 FRAMING_BAD_CRC = 2
    uint8 FRAMING_BAD_SIGNATURE = 3
    
    # stx values
    uint8 MAVLINK_V10 = 254
    uint8 MAVLINK_V20 = 253
    
    std_msgs/Header header
    uint8 framing_status
    
    uint8 magic		# STX byte
    uint8 len
    uint8 incompat_flags
    uint8 compat_flags
    uint8 seq
    uint8 sysid
    uint8 compid
    uint32 msgid		# 24-bit message id
    uint16 checksum
    uint64[] payload64
    uint8[] signature	# optional signature
    
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

// Constants for message
Mavlink.Constants = {
  FRAMING_OK: 1,
  FRAMING_BAD_CRC: 2,
  FRAMING_BAD_SIGNATURE: 3,
  MAVLINK_V10: 254,
  MAVLINK_V20: 253,
}

module.exports = Mavlink;
