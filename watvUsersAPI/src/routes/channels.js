const { Router } = require('express');
const router = Router();

router.get('/', (req, res) => {
  res.send({"channel": "AmericaTV"});
});

router.post('/', (req, res) => {
  console.log(req.body);
  res.send({"status": "received2"});
});

module.exports = router;