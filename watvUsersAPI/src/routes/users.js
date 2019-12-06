const { Router } = require('express');
const router = Router();

const { 
  getUsers,
  loginUser,
  createUser,
  removeUser,
  updateUser,
} = require('../controllers/users.controller');

router.route('/')
  .get(getUsers)
  .post(createUser);

router.route('/login')
  .post(loginUser);

router.route('/:id')
  .delete(removeUser)
  .put(updateUser)

module.exports = router;