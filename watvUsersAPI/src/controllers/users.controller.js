const usersCtrl = {};

usersCtrl.getUsers = (req, res) => res.json({message: []});

usersCtrl.createUser = (req, res) => {
  console.log(req.body);
  res.send({"status": "post received2"});
};

usersCtrl.removeUser = (req, res) => {
  console.log(req.params);
  res.send({"status": "deleted"});
};

usersCtrl.updateUser = (req, res) => {
  console.log(req.params);
  res.send({"status": "updated"});
};

module.exports = usersCtrl;