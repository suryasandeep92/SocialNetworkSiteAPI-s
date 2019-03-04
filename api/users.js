
const express = require('express');
var app = express();
const router = express.Router();

const bodyparser = require('body-parser');

app.use(bodyparser.json());

var db = require('.././db');

//Get all users
router.get('/', (req, res) => {
    db.query('SELECT * FROM users', (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Get a user
router.get('/:id', (req, res) => {
    db.query('SELECT * FROM users WHERE id = ?', [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Delete a user
router.delete('/:id', (req, res) => {
    db.query('DELETE FROM users WHERE id = ?', [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send('Deleted successfully.');
        else
            console.log(err);
    })
});

//Insert a user
router.post('/', (req, res) => {
        
    let emp = req.body;
    
    db.query('INSERT INTO users SET ?', emp, (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Update a user
router.put('/:id', (req, res) => {
    
    var id = req.params.id;
    let emp = req.body;
    
    db.query('UPDATE users SET ? WHERE id = ?', [emp, id], (err, rows, fields) => {
        if (!err)
            res.send('Updated successfully');
        else
            console.log(err);
    })
});

module.exports = router;