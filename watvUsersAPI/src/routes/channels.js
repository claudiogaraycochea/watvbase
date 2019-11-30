const { Router } = require('express');
const router = Router();

const { 
  getChannels,
  createChannel,
  removeChannel,
  updateChannel,
} = require('../controllers/channels.controller');

router.route('/')
  .get(getChannels)
  .post(createChannel);

router.route('/:id')
  .delete(removeChannel)
  .put(updateChannel)

module.exports = router;