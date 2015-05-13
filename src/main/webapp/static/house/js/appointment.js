(function(b) {
	var a = [];
	a[0] = '<p class="Fl">\u5f85\u786e\u8ba4</p><button class="Fr" style="width:240px" onclick="confirmSeeTime(this)">\u786e\u8ba4\u770b\u623f\u65f6\u95f4</button>';
	a[1] = '<p class="Fl">\u5f85\u770b\u623f</p><P class="Fr Dn"><i class="Sb" onclick="State(this)">\u6539\u671f</i><i class="Sb" onclick="State(this)">\u53d6\u6d88\u770b\u623f</i></P><div class="Dn"><h3>\u6539\u671f</h3><p class="content"><input type="text" class="DateTime" placeholder="\u8bf7\u9009\u62e9\u6539\u671f\u65f6\u95f4"><button onclick="State(this)" disabled>\u786e\u8ba4\u6539\u671f</button></p></div><div class="Dn"><h3>\u53d6\u6d88\u770b\u623f</h3><p class="content"><label><input type="radio" name="reason" value="1">\u6211\u5df2\u79df\u5230\u623f\u5b50</label><label><input type="radio" name="reason" value="2">\u6211\u4e0d\u79df\u4e86</label><label><input type="radio" name="reason" value="3">\u5176\u5b83\u539f\u56e0</label><textarea style="display:none" placeholder="\u8bf7\u8f93\u5165\u539f\u56e0"></textarea><button disabled>\u53d6\u6d88\u770b\u623f</button></p></div><script>reason()<\/script>';
	a[2] = '<p class="Flw">\u5f85\u770b\u623f<i>\u60a8\u7684\u770b\u623f\u987e\u95ee\u5df2\u5230\u78b0\u5934\u5730\u70b9\u4e86~</i></p>';
	a[3] = '<p class="Fl">\u672a\u770b\u623f</p>';
	a[4] = '<p class="Fl">\u672a\u770b\u623f</p>';
	var c = '<i class="iconfont nb">&#xe616;</i><i class="iconfont nb">&#xe616;</i><i class="iconfont nb">&#xe616;</i><i class="iconfont nb">&#xe616;</i><i class="iconfont nb">&#xe616;</i>';
	a[5] = '<p class="Fl">\u5f85\u8bc4\u4ef7</p><button class="Fr" onclick="State(this)">\u8bc4\u4ef7\u6211\u4eec</button><div class="Dn"><h3><img src="'
			+ Cache
			+ 'img/null.png" class="agentPhoto">\u8bf7\u7ed9<i class="agentName"></i>\u8bc4\u4ef7</h3><p class="content">\u4e13\u4e1a\u77e5\u8bc6<b class="Star ability">'
			+ c
			+ '</b><br>\u804c\u4e1a\u5f62\u50cf<b class="Star appearance">'
			+ c
			+ '</b><br>\u670d\u52a1\u6001\u5ea6<b class="Star attitude">'
			+ c
			+ '</b><br><textarea placeholder="\u8fd8\u60f3\u8bf4\u70b9\u4ec0\u4e48?"></textarea><button disabled>\u8bc4\u4ef7</button></p></div>';
	a[9] = '<p class="Fl">\u5df2\u8bc4\u4ef7</p><i class="Fr Sb" onclick="State(this)">\u67e5\u770b\u8bc4\u4ef7</i><div class="Dn"><h3><img src="'
			+ Cache
			+ 'img/null.png" class="agentPhoto">\u67e5\u770b<i class="agentName"></i>\u8bc4\u4ef7</h3><div class="content">\u4e13\u4e1a\u77e5\u8bc6<b class="Star"><i style="width:160px" class="ability"></i></b><br>\u804c\u4e1a\u5f62\u50cf<b class="Star"><i style="width:160px" class="appearance"></i></b><br>\u670d\u52a1\u6001\u5ea6<b class="Star"><i style="width:160px" class="attitude"></i></b><br><p class="commentWord"></p><p class="appraiseDate"></p></div></div>';
	a[6] = '<p class="Fl">\u5df2\u6539\u671f</p>';
	a[7] = '<p class="Fl Gray">\u5df2\u53d6\u6d88</p>';
	reason = function() {
		b(".content .DateTime").bind("change keyup", function() {
			if (b(this).val() == "") {
				b(this).siblings("button").attr("disabled", true)
			} else {
				b(this).siblings("button").attr("disabled", false)
			}
		});
		var d = b(".content label");
		Radio(d);
		d.click(function(g) {
			g.stopPropagation();
			var f = b(this);
			if (f.find(":radio").val() == 3) {
				f.siblings("textarea").show();
				if (f.siblings("textarea").val() == "") {
					f.siblings("button").attr("disabled", true)
				}
			} else {
				f.siblings("button").attr("disabled", false);
				f.siblings("textarea").hide()
			}
		});
		b(".content textarea").bind("change keyup", function() {
			if (b(this).val() == "") {
				b(this).siblings("button").attr("disabled", true)
			} else {
				b(this).siblings("button").attr("disabled", false)
			}
		})
	};
	confirmSeeTime = function(f) {
		var e = b(f).parent();
		var d = '<table class="seeTimeConf"><tr><th colspan="2">'
				+ e.attr("appointmentTime")
				+ '</th></tr><tr><td class="label">\u78b0\u5934\u5730\u70b9</td><td class="cont">'
				+ e.attr("meetAddress")
				+ '</td></tr><tr><td class="label">\u5907\u6ce8</td><td class="cont">'
				+ e.attr("memo") + "</td></tr></table>";
		Pop('<div class="Alert"><h3>\u786e\u8ba4\u770b\u623f\u65f6\u95f4</h3>'
				+ d
				+ '<p class="end"><i class="Sb Btn">\u53d6\u6d88</i><i class="Btn">\u786e\u5b9a</i></p></div>');
		b("http://resource.iwjw.com/2.2/cache/js/.Pop .end .Btn").last().click(
				function() {
					State(f)
				})
	};
	State = function(m) {
		var m = b(m);
		var g = m.parents("td.state");
		var f = parseInt(g.attr("step")), l = g.attr("acode"), h = g
				.find(".Dn");
		if (f == 1) {
			b.ajax({
				url : Url + "appointment/appointmentUserConfirm.action",
				cache : false,
				data : {
					acode : l
				},
				success : function(n) {
					if (n.status == 1) {
						g.attr("step", 2).html(a[1]);
						b.DateTime(g)
					} else {
						Alert(n.msg)
					}
				}
			})
		} else {
			if (m.html() == "\u6539\u671f") {
				h = h.eq(0);
				h
						.find("button")
						.unbind("click")
						.bind(
								"click",
								function() {
									var n = b(this);
									n.attr("disabled", true).html(
											"\u6b63\u5728\u63d0\u4ea4...");
									var r = h.find(":text").val();
									var p = {
										acode : l,
										reason : r
									};
									var o = n.parents("td").attr("ht"), q = n
											.parents("td").attr("agentId");
									p.houseType = o;
									p.agentId = q;
									b
											.ajax({
												url : Url
														+ "appointment/appointmentUserChangeDate.action",
												cache : false,
												data : p,
												success : function(s) {
													if (s.status == 1) {
														Alert("\u6539\u671f\u6210\u529f!");
														h.find(".Close")
																.click();
														m
																.parents(
																		".SeeTab")
																.find(".Gray")
																.html(
																		"\u770b\u623f\u987e\u95ee\u5c06\u91cd\u65b0\u4e3a\u60a8\u5b89\u6392\u770b\u623f");
														m
																.parents(
																		".SeeTab")
																.find("dl")
																.append(
																		'<dt>\u6539\u671f\u65f6\u95f4</dt><dd class="rreason">'
																				+ Cut(
																						r,
																						84)
																				+ "</dd>");
														g.html(a[6]);
														Update()
													} else {
														Alert(s.msg);
														n
																.attr(
																		"disabled",
																		false)
																.html(
																		"\u786e\u8ba4\u6539\u671f")
													}
												}
											})
								});
				Pop(h)
			} else {
				if (m.html() == "\u53d6\u6d88\u770b\u623f") {
					h = h.eq(1);
					h
							.find("button")
							.unbind("click")
							.bind(
									"click",
									function() {
										var o = b(this);
										o.attr("disabled", true).html(
												"\u6b63\u5728\u63d0\u4ea4...");
										var r, q = o
												.parents(".Dn")
												.find(
														':radio[name="reason"]:checked')
												.val();
										var p = o.parents("td").attr("ht"), s = o
												.parents("td").attr("agentId");
										var n = o
												.parents(".Dn")
												.find(
														':radio[name="reason"]:checked')
												.parent().text();
										if (q == 3) {
											r = {
												acode : l,
												cancelValue : q,
												reason : o.parents(".Dn").find(
														"textarea").val()
											};
											n = o.parents(".Dn").find(
													"textarea").val()
										} else {
											r = {
												acode : l,
												cancelValue : q
											}
										}
										r.houseType = p;
										r.agentId = s;
										b
												.ajax({
													url : Url
															+ "appointment/appointmentUserCancel.action",
													cache : false,
													data : r,
													success : function(t) {
														if (t.status == 1) {
															Alert("\u53d6\u6d88\u770b\u623f\u6210\u529f!");
															h.find(".Close")
																	.click();
															m
																	.parents(
																			".SeeTab")
																	.find(
																			".Gray")
																	.html(
																			"\u672c\u6b21\u770b\u623f\u65e5\u7a0b\u5df2\u53d6\u6d88");
															m
																	.parents(
																			".SeeTab")
																	.find("dl")
																	.append(
																			'<dt>\u53d6\u6d88\u539f\u56e0</dt><dd class="rreason">'
																					+ Cut(
																							n,
																							84)
																					+ "</dd>");
															g.html(a[7]);
															Update()
														} else {
															Alert(t.msg);
															o
																	.attr(
																			"disabled",
																			false)
																	.html(
																			"\u53d6\u6d88\u770b\u623f")
														}
													}
												})
									});
					Pop(h)
				} else {
					if (m.html() == "\u8bc4\u4ef7\u6211\u4eec") {
						h.find(".agentPhoto").attr("src",
								Cache + "img/server.png");
						h.find(".agentName").html(g.attr("agentName"));
						var j = h.find(".Star");
						j.find("i").addClass("nb");
						j.find("i").unbind("mouseover mouseout").bind(
								"mouseover mouseout", function() {
									var n = b(this);
									n.prevAll().removeClass("nb");
									n.removeClass("nb");
									n.nextAll().addClass("nb")
								});
						j.find("i").unbind("click").bind("click", function() {
							var n = b(this), p = false;
							n.parent().attr("val", n.index() + 1);
							for (var o = j.length - 1; o >= 0; o--) {
								if (!j.eq(o).attr("val")) {
									p = true;
									break
								}
							}
							n.parents(".Dn").find("button").attr("disabled", p)
						});
						j.unbind("mouseout").bind("mouseout", function(q) {
							var n = b(this);
							var p = n.find("i");
							var r = parseInt(n.attr("val"));
							if (isNaN(r)) {
								r = 0
							}
							for (var o = p.length - 1; o >= 0; o--) {
								if (o < r) {
									p.eq(o).removeClass("nb")
								} else {
									p.eq(o).addClass("nb")
								}
							}
						});
						h
								.find("button")
								.unbind("click")
								.bind(
										"click",
										function() {
											var p = b(this);
											var s = h.find(".ability").attr(
													"val");
											var n = h.find(".appearance").attr(
													"val");
											var o = h.find(".attitude").attr(
													"val");
											var r = h.find("textarea").val();
											var q = p.parents("td").attr("ht");
											p
													.attr("disabled", true)
													.html(
															"\u6b63\u5728\u63d0\u4ea4...");
											b
													.ajax({
														url : Url
																+ "appointment/appointmentAppraise.action",
														cache : false,
														data : {
															acode : l,
															ability : s,
															appearance : n,
															attitude : o,
															commentWord : r,
															ht : q
														},
														success : function(t) {
															if (t.status == 1) {
																Update();
																h
																		.find(
																				".Close")
																		.click();
																g
																		.attr(
																				"ability",
																				s)
																		.attr(
																				"appearance",
																				n)
																		.attr(
																				"attitude",
																				o)
																		.attr(
																				"commentWord",
																				r)
																		.html(
																				a[9])
															} else {
																Alert(t.msg)
															}
														}
													})
										});
						Pop(h)
					} else {
						if (m.html() == "\u67e5\u770b\u8bc4\u4ef7") {
							h.find(".agentPhoto").attr("src",
									Cache + "img/server.png");
							h.find(".agentName").html(g.attr("agentName"));
							h.find(".commentWord").html(g.attr("commentWord"));
							h.find(".appraiseDate")
									.html(g.attr("appraiseDate"));
							function e(q) {
								var o = "";
								for (var p = 0; p < q; p++) {
									o += '<i class="iconfont">&#xe616;</i>'
								}
								return o
							}
							var k = g.attr("ability");
							var i = g.attr("appearance");
							var d = g.attr("attitude");
							h.find(".ability").html(e(k));
							h.find(".appearance").html(e(i));
							h.find(".attitude").html(e(d));
							Pop(h)
						}
					}
				}
			}
		}
	};
	b(document)
			.ready(
					function() {
						initCut();
						b(".SeeTab .rreason").each(function() {
							b(this).html(Cut(b(this).html(), 84))
						});
						b(".state").each(function(g, k) {
							var k = b(k), j = parseInt(k.attr("step")) - 1;
							if (j == 5) {
								var h = k.attr("appraiseTime");
								if (h == "") {
									k.html(a[5])
								} else {
									k.html(a[9])
								}
							} else {
								k.html(a[j]);
								if (j == 1 && b(".Adviser").attr("ht") != 2) {
									k.find(".Fr").removeClass("Dn")
								}
							}
						});
						b.DateTime();
						Place();
						var f = b(".LeaHouse"), e = b(".Appointment"), d = f
								.find(".Fl i");
						f
								.find("#delNoRent")
								.click(
										function() {
											var g = b(this);
											Confirm(
													"\u786e\u8ba4\u6e05\u9664\u5931\u6548\u623f\u6e90?",
													function() {
														var j = e.find(".lea");
														var k = "", h = b(
																".Adviser")
																.attr("ht");
														j.each(function(m, n) {
															var l = b(n).attr(
																	"val");
															if (l) {
																if (k) {
																	k += ","
																			+ l
																} else {
																	k += l
																}
															}
														});
														var i = j.find(".load");
														if (i.length == 0) {
															j
																	.addClass(
																			"del")
																	.children(
																			"td:first-child")
																	.prepend(
																			'<b class="load"></b>')
														} else {
															i.show()
														}
														b
																.ajax({
																	url : Url
																			+ "appointment/deletelookhouse.action",
																	cache : false,
																	data : {
																		acodes : k,
																		ht : h
																	},
																	success : function(
																			m) {
																		if (m.status == 1) {
																			j
																					.remove();
																			var l = e
																					.find("tr").length;
																			if (l == 1) {
																				location
																						.reload();
																				return
																			}
																			g
																					.attr(
																							"disabled",
																							true);
																			d
																					.html((l - 1));
																			Update()
																		} else {
																			j
																					.find(
																							".load")
																					.hide();
																			j
																					.removeClass("del");
																			Alert(m.msg)
																		}
																	}
																})
													})
										});
						d.html(e.find("tr").length - 1);
						if (e.find(".lea").length > 0) {
							f.find("#delNoRent").attr("disabled", false)
						}
					})
})(jQuery);
