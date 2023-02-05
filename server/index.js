const express = require('express');

const app = express();

app.use(express.urlencoded({ extended: true }));

app.use(express.json());

const PORT = 6565;

const groupsCtrl = require('./controllers/groups.ctrl');

app.use('/api/groups', groupsCtrl);

const appointmentsCtrl = require('./controllers/appointment.ctrl');

app.use('/api/appointments', appointmentsCtrl);

app.use(express.static('./public'))


app.listen(PORT, () => console.log(`server up ${PORT}`));
