var mongoose = require('mongoose');

mongoose.connect('mongodb://localhost/producerConsumer');
exports.sendVisitorData = function (req, res) {
    console.log('here');
    res.send(200);
};
