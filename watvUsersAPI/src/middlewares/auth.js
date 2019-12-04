const authCtrl = {};

const jwt = require('jwt-simple');
const moment = require('moment');

authCtrl.isAuth = (req, res, next) => {
  console.log(req.params);
  const token1 = req.headers['x-access-token'] || req.headers['authorization']; 
  console.log('token1: ',token1);
  console.log('req.headers[authorization]: ', req.headers['authorization']);
  console.log('req.headers', req.headers);
  /*if (!req.headers.authorization) {
    return res.status(403).send({ message: 'Not authorized'})
  }
*/
  // const token = req.headers.authorization.split(' ')[1];
  const { token } = req.params;
  const payload = jwt.decode(token, process.env.SECRET_TOKEN);
  console.log('decoded payload:', payload);
  if (payload.exp < moment().unix()) {
    return res.status(401).send({ message: 'Token expired' });
  }

  req.user = payload.sub;
  next();
}

module.exports = authCtrl;