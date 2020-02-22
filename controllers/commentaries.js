const express = require('express');
const mysqlDb = require('../mysqlDb');

const router = express.Router();

router.get('/', async (req,res) => {
  let comments;

  if(req.params.news_id) {
    comments = await mysqlDb.getConnection().query(
        'SELECT `author`, `comment` from `commentaries`' +
        'WHERE `news_id` = ?', req.params.news_id
    );
    res.send(comments)
  } else {
    comments = await mysqlDb.getConnection().query(
        'SELECT `author`, `comment` from `commentaries`'
    );
    res.send(comments)
  }

});

router.post('/',async (req,res) => {
  const comment = req.body;

  if (comment.comment && comment.news_id) {

    const result = await mysqlDb.getConnection().query(
        'INSERT INTO `commentaries` ' +
        '(`news_id`, `author`, `comment`) VALUES' +
        '(?, ?, ?)',
        [comment.news_id, comment.author, comment.comment]
    );
    res.send({...comment,...{id: result.insertId}});
  } else {
    res.status(400).send({message: 'Some data is missing!'})
  }

});

router.delete('/:id', async (req,res) => {

  const result = await mysqlDb.getConnection().query(
      'DELETE FROM `commentaries` WHERE `id`= ?', req.params.id
  );
  res.send(result)
});
module.exports = router;
