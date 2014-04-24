var mongoose = require('mongoose');
var config = require('./prod-cons-config');

mongoose.connect('mongodb://localhost/producerConsumer');

var VisitorModel = mongoose.model('visitor', { time: {type: Date}, count: {type: Number} });

var timeSlice = config.interval / (config.newVisitorCount + 1);

setInterval(function () {
    VisitorModel
	.find()
	.sort('time')
	.limit(config.newVisitorCount)
	.exec(function (err, d) {
	    d.forEach(function (d) {
		console.log('Old visitor removed');
		d.remove();
	    });
	});

    var visitor = new VisitorModel({time: new Date(), count: parseInt(Math.random() * config.countLimit)});

    visitor.save(function () {
	console.log('New visitor saved');
    });

}, timeSlice);
