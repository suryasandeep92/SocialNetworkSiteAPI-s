const mysql = require('mysql');

var mysqlConnection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'nodesn',
    multipleStatements: true
});

mysqlConnection.connect((err) => {
    if (err)
        console.log('DB connection failed.');
});

module.exports = mysqlConnection;