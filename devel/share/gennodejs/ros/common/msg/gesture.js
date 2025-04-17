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

class gesture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.IMUnum = null;
      this.EulerAngleX = null;
      this.EulerAngleY = null;
      this.EulerAngleZ = null;
    }
    else {
      if (initObj.hasOwnProperty('IMUnum')) {
        this.IMUnum = initObj.IMUnum
      }
      else {
        this.IMUnum = 0;
      }
      if (initObj.hasOwnProperty('EulerAngleX')) {
        this.EulerAngleX = initObj.EulerAngleX
      }
      else {
        this.EulerAngleX = 0.0;
      }
      if (initObj.hasOwnProperty('EulerAngleY')) {
        this.EulerAngleY = initObj.EulerAngleY
      }
      else {
        this.EulerAngleY = 0.0;
      }
      if (initObj.hasOwnProperty('EulerAngleZ')) {
        this.EulerAngleZ = initObj.EulerAngleZ
      }
      else {
        this.EulerAngleZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gesture
    // Serialize message field [IMUnum]
    bufferOffset = _serializer.uint16(obj.IMUnum, buffer, bufferOffset);
    // Serialize message field [EulerAngleX]
    bufferOffset = _serializer.float64(obj.EulerAngleX, buffer, bufferOffset);
    // Serialize message field [EulerAngleY]
    bufferOffset = _serializer.float64(obj.EulerAngleY, buffer, bufferOffset);
    // Serialize message field [EulerAngleZ]
    bufferOffset = _serializer.float64(obj.EulerAngleZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gesture
    let len;
    let data = new gesture(null);
    // Deserialize message field [IMUnum]
    data.IMUnum = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [EulerAngleX]
    data.EulerAngleX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [EulerAngleY]
    data.EulerAngleY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [EulerAngleZ]
    data.EulerAngleZ = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common/gesture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88d3ec4e2cf6db353d34286a6368badd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 IMUnum
    float64 EulerAngleX
    float64 EulerAngleY
    float64 EulerAngleZ
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gesture(null);
    if (msg.IMUnum !== undefined) {
      resolved.IMUnum = msg.IMUnum;
    }
    else {
      resolved.IMUnum = 0
    }

    if (msg.EulerAngleX !== undefined) {
      resolved.EulerAngleX = msg.EulerAngleX;
    }
    else {
      resolved.EulerAngleX = 0.0
    }

    if (msg.EulerAngleY !== undefined) {
      resolved.EulerAngleY = msg.EulerAngleY;
    }
    else {
      resolved.EulerAngleY = 0.0
    }

    if (msg.EulerAngleZ !== undefined) {
      resolved.EulerAngleZ = msg.EulerAngleZ;
    }
    else {
      resolved.EulerAngleZ = 0.0
    }

    return resolved;
    }
};

module.exports = gesture;
