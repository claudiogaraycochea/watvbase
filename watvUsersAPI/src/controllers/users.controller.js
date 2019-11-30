const usersCtrl = {};

const User = require('../models/User');

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

usersCtrl.createUser = async (req, res) => {
  console.log(req.body);
  const { firstname, lastname, email, password } = req.body;
  const newUser = new User ({
    firstname,
    lastname,
    email,
    password,
  })
  await newUser.save();
  console.log(newUser);
  res.send({"status": "User Created"});
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