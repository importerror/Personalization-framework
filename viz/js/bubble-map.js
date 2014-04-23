var BubbleMap = function (options) {
    this.renderChart = function () {

        d3.select('header').text('Geo Location');

        d3.json (options.dataFile, function (dataset) {
            draw(dataset);
        });
    };


    function draw (dataset) {
        /** 
         * Color Pallete:
         * Cherry Cheesecake (https://kuler.adobe.com/Cherry-Cheesecake-color-theme-2354/)
         */
        var BUBBLEFILL = '#BD8D46',
            RED = '#B9121B',
            GDPCOLOR = '#4C1B1B',
            BUBBLESTROKE = '#F6E497',
            INITIALCOLOR = '#FCFAE1';

        var width = parseInt($(options.selection).css('width')),
            height = screen.availHeight * 0.5;//parseInt($(options.selection).css('height')) ||
//                screen.availHeight;

        var SCALEFACTOR = height / screen.availHeight;


        //----- SVG holder
	d3.select(options.selection).html("");
        var svg = d3.select(options.selection).append("svg")
            .attr("width", width)
            .attr("height", height);

        //---- Map projection configuration
        var projection = d3.geo.mercator()
            //.scale(150 * SCALEFACTOR)
	.scale(200)
            .translate([width / 2, height / 2]);

        //---- Path generator
        var path = d3.geo.path()
            .projection(projection);

        /** 
        * Bubbles for file1
        */
        var rScale = d3.scale.linear()
                .domain(d3.extent(dataset.map(function (d) {
                    return +d.gdp;
                })))
                .range([1, 10]);

        //--- Reading TopoJSON file
        d3.json("data/world.json", function (error, world) {
            var countries = svg.selectAll("path")
                    .data(topojson.feature(world, world.objects.subunits).features)
                    .enter()
                    .append("path")
                    .attr("d", path)
                    .attr('fill', INITIALCOLOR)
                    .style('opacity', 1)
                    .classed('boundary', true);

                // // Associating tooltip to mouse events
                // .on("mouseover", function(d, i){
                //     var tooltip = d3.select("#world-tooltip");
                //     tooltip.html('<div> Dataset2 </div>' + '<div>' +
                //                  d.properties.name + '</div><div>' +
                //                  that.file2gdp[d.properties.id] + '</div>');
                //     tooltip.style("visibility", "visible");
                // })
                // .on("mousemove", function(){
                //     var tooltip = d3.select("#world-tooltip");
                //     var yReduce = parseInt(tooltip.style("height")) + 40;
                //     var xReduce = parseInt(tooltip.style("width")) / 2;
                //     tooltip.style("top", (d3.event.pageY- yReduce)+"px")
                //         .style("left",(d3.event.pageX-xReduce)+"px");
                // })
                // .on("mouseout", function(){
                //     var tooltip = d3.select("#world-tooltip");
                //     tooltip.style("visibility", "hidden");
                // });

            var bubbles = svg.selectAll("circle")
                .data(topojson.feature(world, world.objects.subunits).features)
                .enter()
                .append('circle')
                .attr('r', 0)
                .attr('cx', function(d){
                    return path.centroid(d)[0];
                })
                .attr('cy', function(d){
                    return path.centroid(d)[1];
                })
                .attr('fill',BUBBLEFILL)
                .attr('stroke', BUBBLESTROKE)
                // .on("mouseover", function(d, i){
                //     var tooltip = d3.select("#world-tooltip");
                //     tooltip.html('<div> Dataset1 </div>' + '<div>' +
                //                  d.properties.name + '</div>' + '<div>' +
                //                  that.file1gdp[d.properties.id] + '</div>');
                //     tooltip.style("visibility", "visible");
                // })
                // .on("mousemove", function(){
                //     var tooltip = d3.select("#world-tooltip");
                //     var yReduce = parseInt(tooltip.style("height")) + 40;
                //     var xReduce = parseInt(tooltip.style("width")) / 2;
                //     tooltip.style("top", (d3.event.pageY- yReduce)+"px")
                //         .style("left",(d3.event.pageX-xReduce)+"px");
                // })
                // .on("mouseout", function(){
                //     var tooltip = d3.select("#world-tooltip");
                //     tooltip.style("visibility", "hidden");
                // });

            countries.transition()
                .delay(0)
                .duration(1000)
                .ease('bounce')
                .attr('fill', function (d, i) {
                        return GDPCOLOR;
                })
                .style('opacity', 1);

            bubbles.transition()
            .delay(2000)
            .duration(3000)
            .ease('bounce')
            .attr('r', function (d) {
                // return rScale(+d.gdp); // After gdp is added to the geojson
                return 5;
            });
        });
    }
};
