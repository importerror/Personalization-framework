var LineChart = function (options) {
    // yellow from https://kuler.adobe.com/Nights-Thunder-color-theme-65854/
    var YELLOW = '#FFBA0F';

    this.renderChart = function () {
	d3.select('header').text('Visitor Count');
	initialize();
        setInterval(function () {
	    d3.json (options.dataFile, function (dataset) {
		draw(dataset);
            });
	}, 2000);
    };
    var svg, height, width, margin, xAxisLength, yAxisLength, chartComponents, xScale, yScale;

    function initialize () {

	// Preparing empty dataset
	var dataset = [];
	for (var i = 0; i < 100; ++i) {
	    dataset.push({
		time: new Date(),
		count: 0
	    });
	}
	
	width = (function () {
	    var width = d3.select(options.selection).style('width');
	    return +width.substring(0, width.length - 2);
	})();

	height = height ? height:  screen.availHeight * 0.3; // 20%
	margin = 40;
	d3.select(options.selection).html("");
	svg = d3.select(options.selection)
	    .append('svg')
	    .attr('width', width)
	    .attr('height', height);

	xAxisLength = width - margin*2;
        yAxisLength = height - margin*2;

        xScale = d3.time.scale()
	    .domain(d3.extent(dataset.map(function (d) {
                return Date.parse(d.time);
	    })))
	    .range([0, xAxisLength]);
	
        var xAxis = d3.svg.axis()
	    .scale(xScale)
	    .ticks(3)
	    .tickFormat(function (d) {
		return '';//d.toDateString().split(' ')[3];
	    });
	
	chartComponents = svg.append('g')
	    .attr('transform', 'translate(' + margin + ',' + margin + ')');

        chartComponents.append('g')
	    .attr('transform', 'translate(0,' + yAxisLength + ')')
	    .classed('pyk-line-chart-x-axis', true)
	   .call(xAxis);

        yScale = d3.scale.linear()
	    .domain([0, d3.max(dataset.map(function (d) {
		return d.count;
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
	    .x(function(d, i) {  return xScale(Date.parse(d.time));})
	    .y(function(d) { return yScale(d.count); })
	    .interpolate("");

	chartComponents.append('g')
	    .classed('line', true)
	    .datum(dataset)
	    .append("path")
		    .transition()
	    .attr("d", line)
	    .attr('stroke', YELLOW)
	    .attr('stroke-width', 2)
	    .attr('fill', 'none');

    }

    function draw (dataset) {

        xScale = d3.time.scale()
	    .domain(d3.extent(dataset.map(function (d) {
                return Date.parse(d.time);
	    })))
	    .range([0, xAxisLength]);
	
        var xAxis = d3.svg.axis()
	    .scale(xScale)
	    .ticks(3)
	    .tickFormat(function (d) {
		return '';//d.toDateString().split(' ')[3];
	    });

        chartComponents.select('g.pyk-line-chart-x-axis')
	   .call(xAxis);

        yScale = d3.scale.linear()
	    .domain([0, d3.max(dataset.map(function (d) {
		return d.count;
	    }))])
	    .range([yAxisLength, 0]);

        var yAxis = d3.svg.axis()
	    .scale(yScale)
	    .orient('left')
	    .ticks(5)
	    .tickSize(-xAxisLength);

        chartComponents.select('g.pyk-line-chart-y-axis')
	   .call(yAxis);

	var line = d3.svg.line()
	    .x(function(d, i) {  return xScale(Date.parse(d.time));})
	    .y(function(d) { return yScale(d.count); })
	    .interpolate("");

	chartComponents.select('g.line')
	    .datum(dataset)
	    .select("path")
	    .transition()
	    .attr("d", line);
    }
};
