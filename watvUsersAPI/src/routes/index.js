const { Router } = require('express');
const router = Router();

router.get('/', (req, res) => {
  res.send({"firstname": "Claudio"});
});

module.exports = router;