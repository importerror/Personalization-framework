var mongoose = require('mongoose');
var config = require('./prod-cons-config');
mongoose.connect('mongodb://localhost/producerConsumer');

var VisitorModel = mongoose.model('visitor', { time: {type: Date}, count: {type: Number} });



for (var i = 0; i < config.totalVisitorCount; ++i) {
    var visitor = new VisitorModel({time: new Date(), count: parseInt(Math.random() * config.countLimit)});
    
    visitor.save(function () {
	console.log('New visitor saved');
    });
}
