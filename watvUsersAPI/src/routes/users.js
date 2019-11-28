const { Router } = require('express');
const router = Router();

const { 
  getUsers,
  createUser,
  removeUser,
  updateUser,
} = require('../controllers/users.controller');

router.route('/')
  .get(getUsers)
  .post(createUser);

router.route('/:id')
  .delete(removeUser)
  .put(updateUser)

module.exports = router;