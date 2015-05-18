(function(a) {
	a(document)
			.ready(
					function() {
						var b = a(".orderHouse");
						if (b.length == 0) {
							return
						}
						a.DateTime(b);
						a("#orderBack").click(function() {
							var c = a(':input[name="codehouseIds"]').val();
							FormSubmit(Url + "seeHouseList/", {
								selIds : c
							})
						});
						a(".radioBtn").click(function() {
							var c = a(this);
							a(".radioBtn.red").removeClass("red");
							c.addClass("red");
							a("input[name='gender']").val(c.attr("value"))
						});
						b.find(".sbt .Checkbox").click(function() {
							a("#subBtn").attr("disabled", !a(this).hasClass("checked"))
						});
						a("#subBtn").click(function() {
							b.submit()
						});
						a
								.getScript(
										Cache + "js/Verify.js",
										function() {
											b
													.submit(function(i) {
														i.stopPropagation();
														i.preventDefault();
														if (a.Verify()) {
															var g = a(this);
															var c = "";
															a(":input[name=date]").each(function(e, f) {
																if (f.value != "") {
																	if (c != "") {
																		c += ","
																	}
																	c += Val(a(f))
																}
															});
															var h = a(":input[name=houseIds]").val() + "";
															var d = {
																realName : Val(a(":input[name=realName]")),
																gender : a("input[name='gender']").val(),
																date : c,
																houseIds : h
															};
															a
																	.ajax({
																		url : Url + "submitOrderHouse.action",
																		type : g.attr("method"),
																		data : d,
																		success : function(m) {
																			if (m.status == 1) {
																				var f = window._mvq || [];
																				window._mvq = f;
																				f.push([ "$setAccount", "m-80613-0" ]);
																				f.push([ "$setGeneral", "ordercreate", "", m.userMobile, m.userId ]);
																				f.push([ "$logConversion" ]);
																				f.push([ "$addOrder", "ykf" + m.orderId, "", "", "", "", "3" ]);
																				if (m.houses && m.houses.length > 0) {
																					for (var e = 0; e < m.houses.length; e++) {
																						var j = m.houses[e];
																						f.push([ "$addItem", m.orderId, j.houseId, j.estateName,
																								j.rentPrice, j.hosueRoom ])
																					}
																				}
																				f.push([ "$logData" ]);
																				var l = {
																					agentPic : m.agentPic,
																					agentName : m.agentName,
																					mobile : m.mobile
																				};
																				FormSubmit(Url + "submitOrderHousePage/", {
																					jsonStr : JSON.stringify(l),
																					houseIds : h
																				})
																			} else {
																				var k;
																				if (m.status == 2) {
																					k = "\u60a8\u53ea\u80fd\u63d0\u4ea4\u4e00\u4e2a\u57ce\u5e02\u7684\u623f\u6e90\uff0c\u591a\u4e2a\u57ce\u5e02\u662f\u65e0\u6cd5\u7ea6\u770b\u7684!"
																				} else {
																					if (m.status == 3) {
																						k = "\u60a8\u53ea\u80fd\u63d0\u4ea4"
																								+ m.city
																								+ "\u5e02\u7684\u623f\u6e90\uff0c\u5176\u4ed6\u57ce\u5e02\u65e0\u6cd5\u7ea6\u770b!"
																					} else {
																						if (m.status == 4) {
																							k = "\u60a8\u7ea6\u770b\u7684\u623f\u6e90\u8d85\u989d\u4e86\uff0c\u8bf7\u8054\u7cfb\u770b\u623f\u987e\u95ee\u5904\u7406!"
																						} else {
																							if (m.status == 5) {
																								k = "\u9884\u7ea6\u770b\u623f\u7684\u6570\u91cf\u4e0d\u80fd\u8d85\u8fc710\u5957!"
																							}
																						}
																					}
																				}
																				Alert(k, 0, function() {
																				})
																			}
																		}
																	})
														}
													})
										})
					})
})(jQuery);
