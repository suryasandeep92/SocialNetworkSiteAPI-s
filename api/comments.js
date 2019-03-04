const express = require('express');
const router = express.Router();

var db = require('.././db');

//Get all comments
router.get('/', (req, res) => {
    db.query('SELECT * FROM comments', (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Get a comment
router.get('/:id', (req, res) => {
    db.query('SELECT * FROM comments WHERE id = ?', [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Delete a comment
router.delete('/:id', (req, res) => {
    db.query('DELETE FROM comments WHERE id = ?', [req.params.id], (err, rows, fields) => {
        if (!err)
            res.send('Deleted successfully.');
        else
            console.log(err);
    })
});

//Insert a comment
router.post('/', (req, res) => {
        
    let emp = req.body;
    
    db.query('INSERT INTO comments SET ?', emp, (err, rows, fields) => {
        if (!err)
            res.send(rows);
        else
            console.log(err);
    })
});

//Update a comment
router.put('/:id', (req, res) => {
    
    var id = req.params.id;
    let emp = req.body;
    
    db.query('UPDATE comments SET ? WHERE id = ?', [emp, id], (err, rows, fields) => {
        if (!err)
            res.send('Updated successfully');
        else
            console.log(err);
    })
});

module.exports = router;