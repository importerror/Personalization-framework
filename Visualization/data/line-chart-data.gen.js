var x = 0, slope = 0.35, ii = 8 * 30; // 2 months x 30 days

var d = new Date();
var variance = 0.1;

console.log('[');
for (var i = 0; i < ii; i++) {

    var baseLine = slope * i + 100;
    var point = i % 3 === 1 ? baseLine - variance*i * Math.random():
        baseLine + variance*i * Math.random(); 
    console.log('{ "x": "' + d.toDateString() + '",');
    console.log('"y": ' + point + ' },');
    d = new Date(d.getTime() +  + (24  * 60 * 60) * 1000);

}
console.log('{ "x": "' + d.toDateString() + '",');
console.log('"y": ' + baseLine + ' }]');
