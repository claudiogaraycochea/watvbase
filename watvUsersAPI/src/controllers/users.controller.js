const usersCtrl = {};

const User = require('../models/User');
const service = require('../services');

/*
  getUsers()
  login(email, password)
  createUser(data)
  removeUser(id)
  updateUser(id, data)
*/

usersCtrl.getUsers = async (req, res) => {
  const users = await User.find();
  res.json(users);
};

usersCtrl.loginUser = async (req, res) => {
  const { email, password } = req.body;

  try {
    const user = await User.findOne({"email": email, "password": password});
    if (!user) {
      return res.status(404).send({status: false, message: 'The user can\'t be logged'});
    }
    const token = service.createToken(user);
    req.headers.Authentication = `Bearer ${token}`;
    return res.status(200).send({status: true, token: token});

  } catch (err) {
    return res.status(404).send({ status: false, error: err.errmsg, message: 'No logged!'});
  }
};

usersCtrl.createUser = async (req, res) => {
  /*console.log(req.body);
  const { firstname, lastname, email, password } = req.body;
  const newUser = new User ({
    firstname,
    lastname,
    email,
    password
  })
  await newUser.save((err) => {
    if (err) res.status(500).send({ message: `Error on createUser: ${err}` });
    return res.status(200).send({"status": "User Created"});
  });
  console.log(newProfile);
  res.send({"status": "Profile Created"});*/
  const { firstname, lastname, email, password } = req.body;
  const newUser = new User ({
    firstname,
    lastname,
    email,
    password
  });

  try {
    const data = await newUser.save();
    if (!data) {
      return res.status(404).send({status: false, message: 'The user can\'t be created'});
    }
    return res.status(200).send({status: true, message: 'User created succefully!'});

  } catch (err) {
    return res.status(404).send({ status: false, error: err.errmsg, message: 'User already exists!'});
  }
};

usersCtrl.removeUser = (req, res) => {
  console.log(req.params);
  res.send({"status": "Remove User"});
};

usersCtrl.updateUser = (req, res) => {
  console.log(req.params);
  res.send({"status": "Update User"});
};

module.exports = usersCtrl;