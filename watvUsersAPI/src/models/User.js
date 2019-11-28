const { Schema, model } = require('mongoose');

const userSchema = new Schema({
  firstname: {
    type: String,
    required: true,
  },
  lastname: String,
  email: {
    type: String,
    trim: true,
    unique: true
  },
  password: String,
}, {
  timestamps: true,
});

module.exports('User', userSchema);
