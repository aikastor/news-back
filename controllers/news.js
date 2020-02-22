const express = require('express');
const multer = require('multer');
const nanoid = require('nanoid');
const path = require('path');

const config = require('../config');
const mysqlDb = require('../mysqlDb');

//--END OF EXPORTS--//

const router = express.Router();

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, config.uploadPath);
  },
  filename: (req, file, cb) => {
    cb(null, nanoid() + path.extname(file.originalname));
  }
});
const upload = multer({storage});

//--ROUTES--//

router.get('/', async (req,res) => {
  const items = await mysqlDb.getConnection().query(
      'SELECT `id`, `title`, `image`, `date` from `news`'
  );
  res.send(items)
});

router.get('/:id', async (req,res) => {

  const response = await mysqlDb.getConnection().query(
      'SELECT * FROM `news` WHERE `id` = ?', req.params.id
  );
  const item = response[0];

    !item ?
      res.status(404).send({message: 'News not found!'})
      :
      res.send(response)
});
router.post('/',upload.single('image'), async (req,res) => {
  const newsItem = req.body;

  if (newsItem.title && newsItem.text) {

    if (req.file) {
      newsItem.image = req.file.filename;
    }
    const result = await mysqlDb.getConnection().query(
        'INSERT INTO `news` ' +
        '(`title`, `text`, `image`, `date`) VALUES' +
        '(?, ?, ?, ?)',
        [newsItem.title, newsItem.text, newsItem.image, newsItem.date]
    );
    res.send({...newsItem,...{id: result.insertId}});
  } else {
    res.status(400).send({message: 'Some data is missing!'})
  }

});

router.delete('/:id', async (req,res) => {

    const result = await mysqlDb.getConnection().query(
        'DELETE FROM `news` WHERE `id`= ?', req.params.id
    );
    res.send(result)
});

module.exports = router;