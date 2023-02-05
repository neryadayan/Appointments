const express = require('express');
const mysql = require('mysql');

const router = express.Router();

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: 'appointment_mannagment'
});

con.connect(function (err) {
    if (err) throw err;
    console.log("SQL Connected!");
});

router.get('/', function (req, res) {
    const sql = `SELECT * FROM dev_groups`;
    con.query(sql, function (err, result) {
        if (err) throw err;
        res.send(result);
    });
});



module.exports = router;