const express = require('express');
var app = express();
const router = express.Router();
const bodyparser = require('body-parser');
app.use(bodyparser.json());

var db = require('.././db');

//Get all likes
router.get('/', (req, res) => {
    db.query('SELECT * FROM likes', (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Get a like
router.get('/:id', (req, res) => {
    db.query('SELECT * FROM likes WHERE id = ?', [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Delete a like
router.delete('/:id', (req, res) => {
    db.query('DELETE FROM likes WHERE id = ?', [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send('Deleted successfully.');
        else
            console.log(err);
    })
});

//Insert a like
router.post('/', (req, res) => {
        
    let emp = req.body;
    
    db.query('INSERT INTO likes SET ?', emp, (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Update a like
router.put('/:id', (req, res) => {
    
    var id = req.params.id;
    let emp = req.body;
    
    db.query('UPDATE likes SET ? WHERE id = ?', [emp, id], (err, rows, fields) => {
        if (!err)
            res.send('Updated successfully');
        else
            console.log(err);
    })
});

module.exports = router;