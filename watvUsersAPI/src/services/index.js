const createTokenCtrl = {};

const jwt = require('jwt-simple');
const moment = require('moment');

createTokenCtrl.createToken = (user) => {
  const payload = {
    sub: user._id,
    iat: moment().unix(),
    exp: moment().add(14, 'days').unix(),
  }
  console.log('createTokenCtrl: payload:', payload);
  return jwt.encode(payload, process.env.SECRET_TOKEN);
}

module.exports = createTokenCtrl;