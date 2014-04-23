window.addEventListener('load', function () {
    var bubbleMap = new BubbleMap({
	dataFile: "data/data.json",
	selection: "#bubble-map-container"
    });

    var lineChart = new LineChart ({
	dataFile: "data/line-data.json",
	selection: "#line-chart-container"
    });

  //  bubbleMap.renderChart();
//    lineChart.renderChart();
    
}, false);
