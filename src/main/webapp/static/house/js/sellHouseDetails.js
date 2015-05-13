$.getScript(Cache + "cache/js/commonHouseDetails.js", function(a, d, b) {
	var c = 2;
	$(document).ready(function(e) {
		initCut();
		if (e(".bimgs ul li").length) {
			imgRun.init()
		}
		if (e("#pChart").length) {
			showPchart()
		}
		if (e("#zbMap").data != "") {
			zbMap.init()
		}
		if (e(".fxlist").length) {
			houseType.init()
		}
		addEvents(c);
		addLmTipEvent()
	})
});
