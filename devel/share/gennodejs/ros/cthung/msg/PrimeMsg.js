// Auto-generated. Do not edit!

// (in-package cthung.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PrimeMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Number = null;
      this.Prime = null;
      this.InputID = null;
      this.OutputID = null;
    }
    else {
      if (initObj.hasOwnProperty('Number')) {
        this.Number = initObj.Number
      }
      else {
        this.Number = '';
      }
      if (initObj.hasOwnProperty('Prime')) {
        this.Prime = initObj.Prime
      }
      else {
        this.Prime = '';
      }
      if (initObj.hasOwnProperty('InputID')) {
        this.InputID = initObj.InputID
      }
      else {
        this.InputID = '';
      }
      if (initObj.hasOwnProperty('OutputID')) {
        this.OutputID = initObj.OutputID
      }
      else {
        this.OutputID = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrimeMsg
    // Serialize message field [Number]
    bufferOffset = _serializer.string(obj.Number, buffer, bufferOffset);
    // Serialize message field [Prime]
    bufferOffset = _serializer.string(obj.Prime, buffer, bufferOffset);
    // Serialize message field [InputID]
    bufferOffset = _serializer.string(obj.InputID, buffer, bufferOffset);
    // Serialize message field [OutputID]
    bufferOffset = _serializer.string(obj.OutputID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrimeMsg
    let len;
    let data = new PrimeMsg(null);
    // Deserialize message field [Number]
    data.Number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Prime]
    data.Prime = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [InputID]
    data.InputID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [OutputID]
    data.OutputID = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Number.length;
    length += object.Prime.length;
    length += object.InputID.length;
    length += object.OutputID.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cthung/PrimeMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef51907d5528f928e78a87cf1db99905';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Number
    string Prime
    string InputID
    string OutputID
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrimeMsg(null);
    if (msg.Number !== undefined) {
      resolved.Number = msg.Number;
    }
    else {
      resolved.Number = ''
    }

    if (msg.Prime !== undefined) {
      resolved.Prime = msg.Prime;
    }
    else {
      resolved.Prime = ''
    }

    if (msg.InputID !== undefined) {
      resolved.InputID = msg.InputID;
    }
    else {
      resolved.InputID = ''
    }

    if (msg.OutputID !== undefined) {
      resolved.OutputID = msg.OutputID;
    }
    else {
      resolved.OutputID = ''
    }

    return resolved;
    }
};

module.exports = PrimeMsg;
