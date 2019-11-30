const { Router } = require('express');
const router = Router();

const { 
  getProfiles,
  createProfile,
} = require('../controllers/profiles.controller');

router.route('/')
  .get(getProfiles)
  .post(createProfile);

module.exports = router;