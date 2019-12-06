const { Schema, model } = require('mongoose');
const shortId = require('shortid');

const profileSchema = new Schema({
  profile_id: {
    type: String,
    default: shortId.generate,
    index: true
  },
  user_id: {
    type: String,
  },
  linkname: {
    type: String,
    required: true,
    trim: true,
    unique: true,
    index: true,
    lowercase: true
  },
  name: {
    type: String,
  },
  timezone: {
    type: String,
  },
  data: {
    profile_type: {
      type: Number,
    },
    image: {
      type: String,
    }
  },
  schedule: [
    {
      name: String,
      url: String,
      execute_time: String
    }
  ]
}, {
  timestamps: true,
});

module.exports = model('Profile', profileSchema);