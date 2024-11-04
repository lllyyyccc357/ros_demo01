// Auto-generated. Do not edit!

// (in-package common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
      this.PWM = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0;
      }
      if (initObj.hasOwnProperty('PWM')) {
        this.PWM = initObj.PWM
      }
      else {
        this.PWM = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor
    // Serialize message field [num]
    bufferOffset = _serializer.uint16(obj.num, buffer, bufferOffset);
    // Serialize message field [PWM]
    bufferOffset = _serializer.float64(obj.PWM, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor
    let len;
    let data = new motor(null);
    // Deserialize message field [num]
    data.num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [PWM]
    data.PWM = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common/motor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcb8db8f718aced907ae4911d3282034';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 num
    # BCM coding : 5 6 12 13 16 19 20 21
    float64 PWM
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0
    }

    if (msg.PWM !== undefined) {
      resolved.PWM = msg.PWM;
    }
    else {
      resolved.PWM = 0.0
    }

    return resolved;
    }
};

module.exports = motor;
