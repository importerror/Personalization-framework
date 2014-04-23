window.addEventListener('load', function () {
    var heatMap = new HeatMap({
	dataFile: "data/heatmap-data.json",
	selection: "#heat-map-container"
    });

    var lineChart = new LineChart ({
	dataFile: "data/line-data.json",
	selection: "#line-chart-container"
    });

   heatMap.renderChart();
   lineChart.renderChart();
    
}, false);
