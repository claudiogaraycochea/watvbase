const profilesCtrl = {};

const Profile = require('../models/Profile');

/*
  getProfiles
  searchProfiles(query)
  getProfile(linkname)
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
  const { user_id, linkname, name, timezone, data, schedule } = req.body;
  const newProfile = new Profile ({
    user_id,
    linkname,
    name,
    timezone,
    data,
    schedule
  });
  await newProfile.save();
  console.log(newProfile);
  res.send({"status": "Profile Created 2"});
};

profilesCtrl.searchProfiles = async (req, res) => {
  console.log(req.params);
  const { query } = req.params;
  const profiles = await Profile.find({"name": new RegExp(".*"+query+".*", "i")});
  res.json(profiles);
};

profilesCtrl.getProfile = async (req, res) => {
  console.log(req.params);
  const { linkname } = req.params;
  const profiles = await Profile.findOne({"linkname": linkname});
  res.json(profiles);
};

module.exports = profilesCtrl;