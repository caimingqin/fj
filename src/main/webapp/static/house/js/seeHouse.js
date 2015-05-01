(function(a) {
	a(document)
			.ready(
					function() {
						var c = a(".HouseTab"), e = a("#HouseFix"), g = a("#HouseEnd");
						var i = e.attr("status");
						if (!c.length || !e.length || !g.length) {
							return
						}
						var f, b;
						toEnd = function() {
							endHeigght = g.offset().top + g.outerHeight() + 0;
							b = a(window).height() + a(document).scrollTop()
									+ 0;
							if (endHeigght > b) {
								e.css({
									position : "relative",
									top : "auto",
									bottom : 0
								})
							} else {
								e.css({
									position : "",
									top : -1
								})
							}
						};
						a(window).bind("resize scroll", toEnd);
						toEnd();
						var h = c.find("th .Checkbox");
						var d;
						selectHouse = function() {
							d = c.find("td :checkbox:checked").length;
							a("#selectTotal").html(d);
							if (i != -4 && d) {
								e.find("button").attr("disabled", false)
							} else {
								e.find("button").attr("disabled", true)
							}
							if (d > 0 && c.find("td :checkbox").length == d) {
								if (!h.hasClass("checked")) {
									h.addClass("checked");
									h.find(":checkbox").prop("checked", true)
								}
							} else {
								if (h.hasClass("checked")) {
									h.removeClass("checked");
									h.find(":checkbox").prop("checked", false)
								}
							}
							if (c.find(".lea").length) {
								a("#delNoRent").attr("disabled", false)
							} else {
								a("#delNoRent").attr("disabled", true)
							}
						};
						selectHouse();
						c.find("td .Checkbox").unbind("click");
						c.find("tr>td").click(
								function() {
									var j = a(this).find(".Checkbox");
									if (j.hasClass("checked")) {
										j.removeClass("checked").find(
												":checkbox").prop("checked",
												false)
									} else {
										j.addClass("checked").find(":checkbox")
												.prop("checked", true)
									}
									selectHouse()
								});
						h.click(function() {
							if (h.hasClass("checked")) {
								c.find("td .Checkbox").addClass("checked")
										.find(":checkbox")
										.prop("checked", true)
							} else {
								c.find("td .checked").removeClass("checked")
										.find(":checkbox").prop("checked",
												false)
							}
							selectHouse()
						});
					
						c.find(".collection").on(
								"click",
								function(k) {
									var l = a(this).parents("tr").find(
											"input[name='houseIds']").val();
									var j = a(this).parents("tr").find(
											"input[name='houseIds']")
											.attr("ht");
									if (a(this).find(".iconRed").length) {
										houseUtil
												.delHouseCollect(k, this, l, j)
									} else {
										houseUtil
												.addHouseCollect(k, this, l, j)
									}
								});
				
					})
})(jQuery);
