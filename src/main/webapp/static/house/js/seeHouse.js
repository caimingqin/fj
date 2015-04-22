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
						e
								.find(".Fr button")
								.click(
										function() {
											if (d > 10) {
												Alert("\u9884\u7ea6\u770b\u623f\u5931\u8d25,\u9884\u7ea6\u770b\u623f\u7684\u6570\u91cf\u4e0d\u80fd\u8d85\u8fc710\u5957!");
												return
											}
											var j = a(this);
											j
													.attr("disabled", true)
													.html(
															"\u6b63\u5728\u63d0\u4ea4...");
											var k = [];
											c
													.find(
															"td :checkbox:checked")
													.each(
															function(m, n) {
																var o = a(n)
																		.val();
																var l = a(n)
																		.attr(
																				"ht");
																k
																		.push({
																			houseId : o,
																			houseType : l
																		})
															});
											k = JSON.stringify(k);
											a
													.ajax({
														url : Url
																+ "checkHasOrderNum.action",
														cache : false,
														data : {
															selHouseIdsNum : d,
															houseIds : k
														},
														success : function(m) {
															j.attr("disabled",
																	true);
															var l = m.bizType == 2 ? "\u4e8c\u624b\u623f"
																	: "\u79df\u623f";
															if (m.status == 1) {
																if (parseInt(m.hasOrderNum)
																		+ d > 50) {
																	j
																			.attr(
																					"disabled",
																					false)
																			.html(
																					"\u9884\u7ea6\u770b\u623f");
																	Alert("\u9884\u7ea6\u770b\u623f\u5931\u8d25,\u9884\u7ea6\u6b21\u6570\u4e0d\u80fd\u5927\u4e8e50!")
																} else {
																	FormSubmit(
																			Url
																					+ "chuzu/schedule/orderHouse",
																			{
																				houseIds : k
																			})
																}
															} else {
																if (m.status == -3) {
																	j
																			.attr(
																					"disabled",
																					false)
																			.html(
																					"\u9884\u7ea6\u770b\u623f");
																	Alert("\u4e8c\u624b\u623f\u4e1a\u52a1\u6682\u672a\u5f00\u653e\uff0c\u4e0d\u80fd\u63d0\u4ea4\u7ea6\u770b\uff01")
																} else {
																	if (m.status == -4) {
																		j
																				.attr(
																						"disabled",
																						false)
																				.html(
																						"\u9884\u7ea6\u770b\u623f");
																		Alert("\u6211\u4eec\u653e\u5047\u5566\uff0c2\u670828\u65e5\u5f00\u653e\u9884\u7ea6")
																	} else {
																		if (m.status == 3) {
																			j
																					.attr(
																							"disabled",
																							false)
																					.html(
																							"\u9884\u7ea6\u770b\u623f");
																			Alert("\u4e0d\u652f\u6301\u540c\u65f6\u7ea6\u770b\u4e8c\u624b\u623f\u4e0e\u79df\u623f\uff0c\u65e0\u6cd5\u7ea6\u770b!")
																		} else {
																			if (m.status == 4) {
																				j
																						.attr(
																								"disabled",
																								false)
																						.html(
																								"\u9884\u7ea6\u770b\u623f");
																				Alert("\u4e0d\u652f\u6301\u591a\u4e2a\u57ce\u5e02\u7684\u623f\u6e90\u540c\u65f6\u7ea6\u770b\uff0c\u65e0\u6cd5\u7ea6\u770b!")
																			} else {
																				if (m.status == 5) {
																					j
																							.attr(
																									"disabled",
																									false)
																							.html(
																									"\u9884\u7ea6\u770b\u623f");
																					Alert("\u4e0d\u652f\u6301\u591a\u4e2a\u57ce\u5e02\u7684\u623f\u6e90\u540c\u65f6\u7ea6\u770b\uff0c\u65e0\u6cd5\u7ea6\u770b!")
																				} else {
																					if (m.status == 6) {
																						j
																								.attr(
																										"disabled",
																										false)
																								.html(
																										"\u9884\u7ea6\u770b\u623f");
																						Alert("\u60a8\u7684\u770b\u623f\u987e\u95ee\u53ea\u5728"
																								+ m.city
																								+ "\u5e02\u63d0\u4f9b\u670d\u52a1\uff0c\u65e0\u6cd5\u7ea6\u770b!")
																					} else {
																						if (m.status == 7) {
																							j
																									.attr(
																											"disabled",
																											false)
																									.html(
																											"\u9884\u7ea6\u770b\u623f");
																							Alert("\u60a8\u7684\u770b\u623f\u987e\u95ee\u53ea\u63d0\u4f9b"
																									+ l
																									+ "\u670d\u52a1\uff0c\u65e0\u6cd5\u7ea6\u770b!")
																						} else {
																							if (m.status == 8) {
																								j
																										.attr(
																												"disabled",
																												false)
																										.html(
																												"\u9884\u7ea6\u770b\u623f");
																								Alert("\u60a8\u7684\u770b\u623f\u987e\u95ee\u65e0\u6cd5\u4e3a\u8be5\u623f\u6e90\u63d0\u4f9b\u670d\u52a1\uff0c\u65e0\u6cd5\u7ea6\u770b!")
																							} else {
																								if (m.status == 9) {
																									j
																											.attr(
																													"disabled",
																													false)
																											.html(
																													"\u9884\u7ea6\u770b\u623f");
																									Alert("\u9884\u7ea6\u770b\u623f\u5931\u8d25,\u9884\u7ea6\u6b21\u6570\u4e0d\u80fd\u5927\u4e8e50!!")
																								} else {
																									if (m.status == 10) {
																										j
																												.attr(
																														"disabled",
																														false)
																												.html(
																														"\u9884\u7ea6\u770b\u623f");
																										Alert("\u9884\u7ea6\u770b\u623f\u5931\u8d25,\u9884\u7ea6\u770b\u623f\u7684\u6570\u91cf\u4e0d\u80fd\u8d85\u8fc710\u5957!")
																									} else {
																										j
																												.attr(
																														"disabled",
																														false)
																												.html(
																														"\u9884\u7ea6\u770b\u623f");
																										Alert("\u9884\u7ea6\u770b\u623f\u5931\u8d25!")
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													})
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
						a(".delete, #delNoRent")
								.click(
										function() {
											var k = a(this);
											var m, n, l;
											var j = function() {
												var o = n.find(".load");
												if (o.length == 0) {
													n
															.addClass("del")
															.children(
																	"td:first-child")
															.prepend(
																	'<b class="load"></b>')
												} else {
													o.show()
												}
												a
														.ajax({
															url : Url
																	+ "deleteLookhouse.action",
															cache : false,
															data : {
																houseIds : m
															},
															success : function(
																	p) {
																if (p.status == 1) {
																	n.remove();
																	if (c
																			.find(".delete").length == 0) {
																		location
																				.reload();
																		return
																	}
																	selectHouse();
																	Update();
																	toEnd();
																	a(
																			"#houseTotal")
																			.html(
																					c
																							.find("img").length)
																} else {
																	n
																			.find(
																					".load")
																			.hide();
																	k
																			.parents(
																					"tr")
																			.removeClass(
																					"del");
																	Alert("\u5220\u9664\u5931\u8d25!")
																}
															}
														})
											};
											if (k.attr("id") == "delNoRent") {
												Confirm(
														"\u786e\u8ba4\u6e05\u9664\u5931\u6548\u623f\u6e90?",
														function() {
															m = [];
															n = c.find(".lea");
															c
																	.find(
																			".lea")
																	.each(
																			function(
																					o,
																					p) {
																				var q = a(
																						p)
																						.attr(
																								"val");
																				l = a(
																						p)
																						.attr(
																								"ht");
																				m
																						.push({
																							houseId : q,
																							houseType : l
																						})
																			});
															m = JSON
																	.stringify(m);
															j()
														})
											} else {
												Confirm(
														"\u786e\u8ba4\u5220\u9664?",
														function() {
															n = k.parents("tr");
															l = n.attr("ht");
															var o = n
																	.find(
																			":checkbox")
																	.val()
																	|| n
																			.find(
																					".over")
																			.attr(
																					"val");
															m = [ {
																houseId : o,
																houseType : l
															} ];
															m = JSON
																	.stringify(m);
															j()
														})
											}
										})
					})
})(jQuery);
