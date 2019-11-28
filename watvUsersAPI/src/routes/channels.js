const { Router } = require('express');
const router = Router();

const fetch = require('node-fetch');

router.get('/fetchtest', async (req, res) => {
  const response = await fetch('http://localhost:3000/api/users');
  const users = await response.json();
  console.log(users);
  res.send('users');
});

router.get('/', (req, res) => {
  res.send({"channel": "AmericaTV"});
});

router.post('/', (req, res) => {
  console.log(req.body);
  res.send({"status": "received2"});
});

router.delete('/:id', (req, res) => {
  console.log(req.params);
  res.send({"status": "deleted"});
});

router.put('/:id', (req, res) => {
  const { id } = req.params;
  console.log(id);
  res.send({"status": "updated"});
});

module.exports = router;