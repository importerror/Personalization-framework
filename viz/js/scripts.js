$(document).ready(function(e){
    var bubbleMap = new BubbleMap({
	dataFile: "data/data.json",
	selection: "#viz-container"
    });

    var lineChart = new LineChart ({
	dataFile: "data/line-data.json",
	selection: "#viz-container"
    });
    //    bubbleMap.renderMap();

    $('footer div.left').on('click', function () {
	bubbleMap.renderChart();
    });
    $('footer div.right').on('click', function () {
	lineChart.renderChart();
    });
});
