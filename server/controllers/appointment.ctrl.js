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

router.get('/:id', function (req, res) {
    const sql = `SELECT * FROM appointments WHERE group_id = ${req.params.id}`;
    con.query(sql, function (err, result) {
        if (err) throw err;
        res.send(result);
    });
});

router.post('/', function (req, res) {
    console.log(req.body)
    const sql = `INSERT INTO appointments(group_id, start_time, end_time, description, room) VALUES (?,?,?,?,?)`;
    con.query(sql, [req.body.group_id, req.body.start_time, req.body.end_time, req.body.description, req.body.room], function (err, result) {
        if (err) throw err;
        res.send(result);
    });
});

module.exports = router;