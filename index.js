const express = require('express');
var app = express();
const bodyparser = require('body-parser');

app.use(bodyparser.json());

const posts = require('./api/posts');
app.use('/api/posts',posts );

const users = require('./api/users');
app.use('/api/users',users );

const comments = require('./api/comments');
app.use('/api/comments',comments );

const likes = require('./api/likes');
app.use('/api/likes',likes );




app.listen(3000, () => console.log('Express server is runnig at port no : 3000'));


