$(document).ready(function(e){
    var bubbleMap = new BubbleMap({
	dataFile: "data/data.json",
	selection: "#bubble-map-container"
    });

    var lineChart = new LineChart ({
	dataFile: "data/line-data.json",
	selection: "#line-chart-container"
    });

	bubbleMap.renderChart();
	lineChart.renderChart();
    // $('footer div.left').on('click', function () {
    // 	bubbleMap.renderChart();
    // });
    // $('footer div.right').on('click', function () {
    // 	lineChart.renderChart();
    // });
});
