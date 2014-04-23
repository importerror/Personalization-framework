var LineChart = function (options) {
    this.renderChart = function () {
	d3.select('header').text('Visitor Count');

        d3.json (options.dataFile, function (dataset) {
            draw(dataset);
        });
    };

    function draw (dataset) {
        var width = (function () {
	    var width = d3.select(options.selection).style('width');
	    return width.substring(0, width.length - 2);
	})();
        
	height = screen.availHeight * 0.4; // 10%
	margin = 40;

	var svg = d3.select(options.selection)
	    .append('svg')
	    .attr('width', width)
	    .attr('height', height);

	var xAxisLength = width - margin*2;
        var yAxisLength = height - margin*2;
 
        var xScale = d3.time.scale()
            .domain(d3.extent(dataset.map(function (d) {
                return Date.parse(d.x);
            })))
            .range([0, xAxisLength]);
	
        var xAxis = d3.svg.axis()
            .scale(xScale)
            .ticks(3)
            .tickFormat(function (d) {
		return '';//d.toDateString().split(' ')[3];
	    });
	
	var chartComponents = svg.append('g')
	    .attr('transform', 'translate(' + margin + ',' + margin + ')');

        chartComponents.append('g')
            .attr('transform', 'translate(0,' + yAxisLength + ')')
            .classed('pyk-line-chart-x-axis', true)
            .call(xAxis);

        var yScale = d3.scale.linear()
            .domain([0, d3.max(dataset.map(function (d) {
		return d.y;
	    }))])
            .range([yAxisLength, 0]);

        var yAxis = d3.svg.axis()
            .scale(yScale)
            .orient('left')
            .ticks(5)
            .tickSize(-xAxisLength);

        chartComponents.append('g')
            .classed('pyk-line-chart-y-axis', true)
            .call(yAxis);


	var line = d3.svg.line()
            .x(function(d, i) {  return xScale(Date.parse(d.x));})
            .y(function(d) { return yScale(d.y); })
            .interpolate("");

	chartComponents.append('g')
             .classed('line', true)
             .datum(dataset)
             .append("path")
             .attr("d", line)
             .attr('stroke', 'white')
             .attr('stroke-width', 2)
             .attr('fill', 'none');
    }
};
