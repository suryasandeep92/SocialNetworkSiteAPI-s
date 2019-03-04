const express = require('express');
var app = express();
const router = express.Router();
const bodyparser = require('body-parser');
app.use(bodyparser.json());

var db = require('.././db');

//Get all posts
router.get('/', (req, res) => {
    db.query('SELECT * FROM posts', (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Get a post
router.get('/:id', (req, res) => {
    db.query('SELECT * FROM posts WHERE id = ?', [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Delete a post
router.delete('/:id', (req, res) => {
    db.query('DELETE FROM posts WHERE id = ?', [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send('Deleted successfully.');
        else
            console.log(err);
    })
});

//Insert a post
router.post('/', (req, res) => {
        
    let emp = req.body;
    
    db.query('INSERT INTO posts SET ?', emp, (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Update a post
router.put('/:id', (req, res) => {
    
    var id = req.params.id;
    let emp = req.body;
    
    db.query('UPDATE posts SET ? WHERE id = ?', [emp, id], (err, rows, fields) => {
        if (!err)
            res.send('Updated successfully');
        else
            console.log(err);
    })
});

module.exports = router;