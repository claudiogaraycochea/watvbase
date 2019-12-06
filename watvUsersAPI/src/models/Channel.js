const { Schema, model } = require('mongoose');

const channelSchema = new Schema({
  name: {
    type: String,
    required: true,
  },
  linkname: {
    type: String,
    required: true,
    trim: true,
    unique: true,
  },
  schedule: {
    type: String,
    required: true,
  },
}, {
  timestamps: true,
});

module.exports = model('Channel', channelSchema);