var fs = require('fs');

fs.readFile('data/data.csv', function (err, content) {
    console.log('[');
    console.log(content.toString().split('\n').forEach(function (d) {
        console.log('{');
        var line = d.split(',');
        console.log('"code": "' + line[0] + '",');
        console.log('"name": "' + line[2] + '",');
        console.log('"gdp": "' + line[3] + '"');
        console.log('},');
    }));
    console.log(']');
});
