const { Schema, model } = require('mongoose');

const userSchema = new Schema({
  firstname: {
    type: String,
  },
  lastname: String,
  email: {
    type: String,
    trim: true,
    unique: true,
    required: true,
  },
  password: String,
}, {
  timestamps: true,
});

module.exports = model('User', userSchema);
