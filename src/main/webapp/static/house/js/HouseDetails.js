$.getScript(Cache + "cache/js/commonHouseDetails.js", function(a, d, b) {
	var c = 1;
	$(document).ready(function(e) {
		initCut();
		if (e(".bimgs ul li").length) {
			imgRun.init()
		}
		if (e("#zbMap").data != "") {
			zbMap.init()
		}
		addEvents(c)
	})
});
