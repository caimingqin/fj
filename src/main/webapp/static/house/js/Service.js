(function(a) {
	a(document)
			.ready(
					function() {
						var d = a(".Service");
						d.find(":radio[name=city]").parent().click(function() {
							var e = a(this);
							e.nextAll(".Tips").html(e.attr("tips") || "")
						});
						d.find(".Tr .Checkbox").click(
								function() {
									d.find(".Tr button:submit").attr(
											"disabled",
											!a(this).hasClass("checked"))
								});
						var b = d.find('input[name="mobile"]'), c = d
								.find('input[name="code"]');
						b.btn = b.next();
						b.btn.txt = b.btn.html();
						b.err = b.parent().next();
						c.err = c.parent().next();
						b
								.keyup(function(g) {
									if (b.attr("readonly")) {
										return
									}
									if (g.keyCode == 13) {
										b.btn.click();
										return false
									} else {
										b.err.html("")
									}
									var f = b.val();
									if (f.length == b.attr("maxlength")) {
										if (!/^1[3|5|7|8]\d{9}$/.test(f)) {
											b.err
													.html("\u624b\u673a\u53f7\u7801\u4e0d\u6b63\u786e!")
										}
									} else {
										if (!/^\d*$/.test(f)) {
											b.err
													.html("\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801!")
										}
									}
								});
						b.btn
								.click(function() {
									if (b.val() == b.attr("placeholder")) {
										b.val("")
									}
									if (Ks(b.val()) == "") {
										b.focus();
										b.err
												.html("\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a!");
										return false
									}
									if (!/^1[3|5|7|8]\d{9}$/.test(b.val())) {
										b.focus();
										b.err
												.html("\u624b\u673a\u53f7\u7801\u4e0d\u6b63\u786e!");
										return false
									}
									a
											.ajax({
												type : "post",
												dataType : "text",
												url : Url + "getToken.action",
												cache : false,
												data : {
													mobile : b.val()
												},
												success : function(e) {
													if (e == "") {
														return
													}
													b.btn
															.attr("disabled",
																	true)
															.html(
																	"\u6b63\u5728\u63d0\u4ea4...");
													b.attr("readonly", true);
													b.err.html("");
													a
															.ajax({
																type : "post",
																url : Url
																		+ "sendCode.action",
																cache : false,
																data : {
																	mobile : b
																			.val(),
																	uuid : e,
																	flag : 2
																},
																error : function() {
																	b
																			.attr(
																					"readonly",
																					false);
																	b.btn
																			.attr(
																					"disabled",
																					false)
																			.html(
																					b.btn.txt);
																	b.err
																			.html("\u7cfb\u7edf\u9519\u8bef,"
																					+ b.btn.txt
																					+ "\u5931\u8d25!")
																},
																success : function(
																		f) {
																	if (f.status == 1) {
																		b.btn.play = function() {
																			if (b.btn.tim) {
																				clearTimeout(b.btn.tim)
																			}
																			var j = /^.*?(\d+)$/, i = b.btn
																					.html();
																			if (j
																					.test(i)) {
																				var g = parseInt(i
																						.replace(
																								j,
																								"$1"));
																				if (g > 0) {
																					g--
																				}
																				if (g > 0) {
																					b.btn
																							.html("\u91cd\u53d1\u9a8c\u8bc1\u7801 "
																									+ g);
																					b.btn.tim = setTimeout(
																							b.btn.play,
																							1000)
																				} else {
																					if (c
																							&& c
																									.attr("readonly")) {
																						b.btn
																								.html(b.btn.txt)
																					} else {
																						b.btn
																								.html(
																										b.btn.txt)
																								.attr(
																										"disabled",
																										false);
																						b
																								.attr(
																										"readonly",
																										false)
																					}
																				}
																			} else {
																				b.btn
																						.html("\u91cd\u53d1\u9a8c\u8bc1\u7801 60");
																				setTimeout(
																						b.btn.play,
																						1000)
																			}
																		};
																		b.btn
																				.play()
																	} else {
																		b
																				.attr(
																						"readonly",
																						false);
																		b.btn
																				.attr(
																						"disabled",
																						false)
																				.html(
																						b.btn.txt);
																		b.err
																				.html("\u7cfb\u7edf\u9519\u8bef,"
																						+ b.btn.txt
																						+ "\u5931\u8d25!")
																	}
																}
															})
												}
											})
								});
						c
								.keyup(function() {
									if (c.val().length == c.attr("maxlength")
											&& /^1[3|5|7|8]\d{9}$/
													.test(b.val())) {
										if (c.txt && c.txt == c.val()) {
											return false
										} else {
											c.txt = c.val()
										}
										c.attr("mobile", "");
										a
												.ajax({
													type : "get",
													url : Url
															+ "checkCode.action",
													cache : false,
													data : {
														mobile : b.val(),
														code : c.txt
													},
													error : function() {
														c.err
																.html("\u8bfb\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25!")
													},
													success : function(e) {
														if (e.status == 1) {
															c.attr("mobile", b
																	.val());
															c.err.html("")
														} else {
															c.err
																	.html("\u9a8c\u8bc1\u7801\u9519\u8bef!")
														}
													}
												})
									} else {
										c.err.html("")
									}
								});
						d.find(".ver :text,.ver input[type=tel]").not(
								"[name=code]").not("[name=mobile]").keyup(
								function() {
									var e = a(this).parents("dl");
									if (a.Verify(e, 1)) {
										e.find(".Rr").html("")
									}
								});
						d.find(".ver select").change(function() {
							var e = a(this).parents("dl");
							if (a.Verify(e, 1)) {
								e.find(".Rr").html("")
							}
						});
						d.find(".ver :radio").click(function() {
							var e = a(this).parents("dl");
							if (a.Verify(e, 1)) {
								e.find(".Rr").html("")
							}
						});
						a
								.getScript(
										Cache + "js/Verify.js?a=00",
										function() {
											d
													.submit(function() {
														if (a.Verify()) {
															if (c
																	.attr("mobile") == b
																	.val()) {
																d
																		.find(
																				".Tr button:submit")
																		.html(
																				"\u6b63\u5728\u63d0\u4ea4...")
																		.attr(
																				"disabled",
																				true)
															} else {
																c
																		.val("")
																		.focus();
																c.err
																		.html("\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801!");
																return false
															}
														} else {
															return false
														}
													})
										})
					})
})(jQuery);
