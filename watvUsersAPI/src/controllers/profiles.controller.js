const profilesCtrl = {};

const Profile = require('../models/Profile');

/*
  getUsers()
  login(email, password)
  createUser(data)
  removeUser(id)
  updateUser(id, data)
*/

profilesCtrl.getProfiles = async (req, res) => {
  const profiles = await Profile.find();
  res.json(profiles);
};

profilesCtrl.createProfile = async (req, res) => {
  console.log(req.body);
  const { user_id, linkname, name, timezone } = req.body;
  const newProfile = new Profile ({
    //profile_id: shortId(Profile),
    user_id,
    linkname,
    name,
    timezone
  });
  await newProfile.save();
  console.log(newProfile);
  res.send({"status": "Profile Created 2"});
};

module.exports = profilesCtrl;