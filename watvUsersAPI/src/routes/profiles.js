const { Router } = require('express');
const router = Router();

const { 
  getProfiles,
  createProfile,
  searchProfiles,
  getProfile,
} = require('../controllers/profiles.controller');

router.route('/')
  .get(getProfiles)
  .post(createProfile);

router.route('/search/:query')
  .get(searchProfiles);

router.route('/:linkname')
  .get(getProfile);

module.exports = router;