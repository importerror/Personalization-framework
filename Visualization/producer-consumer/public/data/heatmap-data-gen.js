var fs = require('fs');

var data = fs.readFileSync('world.json');
var obj = JSON.parse(data.toString());

var arr = [];
obj.objects.subunits.geometries.forEach(function (d) {
    var id = d.properties.id;
    if (arr.indexOf(id) === -1) {
	 arr.push(id);
    }
});

data = [];
arr.forEach(function (d, i) {
    if (i % parseInt(Math.random() * 13) === 0) {
	data.push({
    	    country: d,
    	    customers: parseInt(Math.random() * 100)
	})
    }
});

console.log(JSON.stringify(data));
