$(document).ready(function(e){
	var k = new BubbleMap({
		dataFile: "data/data.json",
		selection: "#viz-container"
	});
	k.renderMap();
});
