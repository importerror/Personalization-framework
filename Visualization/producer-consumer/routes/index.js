var config = require('../prod-cons-config');
var mongoose = require('mongoose');

mongoose.connect('mongodb://localhost/producerConsumer');

var VisitorModel = mongoose.model('visitor', { time: Date, count: Number });


exports.sendVisitorData = function (req, res) {
    VisitorModel
	.find()
	.select('time count')
	.sort('-time')
	.limit(config.totalVisitorCount)
	.exec(function (err, d) {
	    res.json(d);
	});
};
