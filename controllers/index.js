const express = require('express');
const router = express.Router();

router.use('/news',require('./news'));
// router.use('/commentaries', require('./commentaries'));

module.exports = router;