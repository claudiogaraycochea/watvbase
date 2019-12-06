const channelsCtrl = {};

const Channel = require('../models/Channel');

channelsCtrl.getChannels = async (req, res) => {
  const channels = await Channel.find();
  res.json(channels);
};

channelsCtrl.createChannel = (req, res) => {
  console.log(req.body);
  res.send({"status": "Create Channel"});
};

channelsCtrl.removeChannel = (req, res) => {
  console.log(req.params);
  res.send({"status": "Remove Channel"});
};

channelsCtrl.updateChannel = (req, res) => {
  console.log(req.params);
  res.send({"status": "Update Channel"});
};

module.exports = channelsCtrl;