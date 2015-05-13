var houseUtil = {};
houseUtil.addHouseCollect = function(d, f, c, a) {
	d.preventDefault();
	var b = $(f);
	if (a == null) {
		a = 1
	}
	$
			.ajax({
				type : "GET",
				url : Url + "addHouseCollect.action",
				data : {
					houseId : c,
					ht : a
				},
				dataType : "json",
				cache : false,
				success : function(e) {
					switch (e.status) {
					case -1:
						Alert("出错，请重试");
						break;
					case 1:
						if (!b.hasClass(".iconStarFav")) {
							b.removeClass("iconStar").addClass("iconStarFav");
							houseUtil.showColTip(1, b)
						}
						if (b.hasClass("collection")) {
							b
									.html('<i class="iconfont iconRed">&#xe616;</i> 已收藏');
							houseUtil.showColTip(1, b)
						}
						if (b.hasClass("sellBtnFav")) {
							b.find(".iconfont").addClass("red");
							houseUtil.showColTip(1, b)
						}
						Update();
						break;
					case 2:
						Alert("您已收藏过此房");
						Update();
						break;
					case 3:
						Alert("收藏夹已满");
						Update();
						break;
					case 5:
						Login(function() {
							b.click()
						});
						break
					}
				}
			})
};
houseUtil.delHouseCollect = function(f, h, d, a) {
	f.preventDefault();
	if (a == null) {
		a = 1
	}
	var b = $(h);
	var c = true;
	if (c) {
		var g = d;
		$
				.ajax({
					url : Url + "deleteHouseCollect.action",
					data : {
						houseIds : g,
						ht : a
					},
					cache : false,
					success : function(e) {
						switch (e.status) {
						case -1:
							Alert("删除失败");
							break;
						case 1:
							if (b.hasClass("collection")) {
								b
										.html('<i class="iconfont iconGray">&#xe616;</i> 收藏');
								houseUtil.showColTip(0, b)
							} else {
								if (b.hasClass("sellBtnFav")) {
									b.find(".iconfont").removeClass("red");
									houseUtil.showColTip(0, b)
								} else {
									if (b.hasClass("iconStarFav")) {
										b.removeClass("iconStarFav").addClass(
												"iconStar");
										houseUtil.showColTip(0, b)
									} else {
										b.parents("tr").remove();
										CollUtils.list()
									}
								}
							}
							Update();
							break;
						case 5:
							Confirm("请先登录", Login);
							break
						}
					}
				})
	}
};
houseUtil.showColTip = function(b, a) {
	$(".colTip").remove();
	var c;
	if (b == 0) {
		c = $('<div class="colTip qxsc Dn"><i class="arrow"></i><span>已取消收藏</span></div>')
	} else {
		c = $('<div class="colTip Dn"><i class="arrow"></i><span>已收藏</span></div>')
	}
	a.parent().prepend(c);
	c.fadeIn("slow");
	setTimeout(function() {
		c.fadeOut("slow", function() {
			c.remove()
		})
	}, 2000)
};
houseUtil.addLookhouse = function(d, f, c, a) {
	d.preventDefault();
	if (a == null) {
		a = 1
	}
	var b = $(f);
	$
			.ajax({
				type : "GET",
				url : Url + "addLookhouse.action",
				data : {
					houseId : c,
					ht : a
				},
				dataType : "json",
				cache : false,
				success : function(g) {
					switch (g.status) {
					case -4:
						houseUtil
								.AlertYk(
										"\u4e8c\u624b\u623f\u4e1a\u52a1\u6682\u672a\u5f00\u653e\uff0c\u4e0d\u80fd\u63d0\u4ea4\uff01",
										c, a);
						if (b.hasClass("btnView")) {
							b
									.after(
											'<button class="btnFav">\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355</button>')
									.remove()
						} else {
							if (b.hasClass("btnSee")) {
								b
										.after(
												'<span class="btn btnRented">\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355</span>')
										.remove()
							} else {
								if (b.hasClass("sellBtnView")) {
									b
											.after(
													'<button class="sellBtnView1">\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355</button>')
											.remove()
								}
							}
						}
						Update();
						break;
					case -1:
						Alert("\u51fa\u9519\uff0c\u8bf7\u91cd\u8bd5");
						break;
					case 1:
						houseUtil
								.AlertYk(
										"\u6210\u529f\u52a0\u5165\u7ea6\u770b\u6e05\u5355",
										c, a);
						if (b.hasClass("btnView")) {
							b
									.after(
											'<button class="btnFav">\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355</button>')
									.remove()
						} else {
							if (b.hasClass("btnSee")) {
								b
										.after(
												'<span class="btn btnRented">\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355</span>')
										.remove()
							} else {
								if (b.hasClass("sellBtnView")) {
									b
											.after(
													'<button class="sellBtnView1">\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355</button>')
											.remove()
								}
							}
						}
						Update();
						var e = window._mvq || [];
						window._mvq = e;
						e.push([ "$setAccount", "m-80613-0" ]);
						e.push([ "$addOrder", "ykqd" + Math.random(), "", "",
								"", "", "1" ]);
						e.push([ "custom", "jzqu1", "ykqd" + Math.random() ]);
						e.push([ "$logConversion" ]);
						e.push([ "$setGeneral", "cartview", "", g.mobile,
								g.userId ]);
						e.push([ "$logConversion" ]);
						e.push([ "$addItem", "", g.houseId ]);
						e.push([ "$logData" ]);
						break;
					case 2:
						houseUtil.AlertYk(
								"\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355",
								c, a);
						if (b.hasClass("btnView")) {
							b
									.after(
											'<button class="btnFav">\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355</button>')
									.remove()
						} else {
							if (b.hasClass("btnSee")) {
								b
										.after(
												'<span class="btn btnRented">\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355</span>')
										.remove()
							} else {
								if (b.hasClass("sellBtnView")) {
									b
											.after(
													'<button class="sellBtnView1">\u5df2\u52a0\u5165\u7ea6\u770b\u6e05\u5355</button>')
											.remove()
								}
							}
						}
						Update();
						break;
					case 3:
						houseUtil
								.AlertYk("\u7ea6\u770b\u6e05\u5355\u90fd\u6ee1\u4e86\uff0c\u5feb\u53bb\u63d0\u4ea4\u7ea6\u770b\u5427!");
						break;
					case 5:
						Login(function() {
							b.click()
						});
						break
					}
				}
			})
};
houseUtil.AlertYk = function(b, c, a) {
	Pop('<div class="Alert"><p class="des">'
			+ b
			+ '</p><p class="end"><i class="Btn" style="width:140px">\u7acb\u5373\u9884\u7ea6\u770b\u623f\u65f6\u95f4</i></p></div>');
	$("http://resource.iwjw.com/2.2/cache/js/.Pop .Btn").click(function() {
		var d = null;
		if (c != null) {
			d = {
				selIds : '[{"houseId":"' + c + '","houseType":"' + a + '"}]'
			}
		}
		FormSubmit(Url + "seeHouseList/", d)
	})
};
houseUtil.AlertYkH = function(b, c, a) {
	Pop('<div class="Alert"><p class="des">' + b + "</p></div>");
	$("http://resource.iwjw.com/2.2/cache/js/.Pop .Btn").click(function() {
		var d = null;
		if (c != null) {
			d = {
				selIds : '[{"houseId":"' + c + '","houseType":"' + a + '"}]'
			}
		}
		FormSubmit(Url + "seeHouseList/", d)
	})
};
var CollUtils = {};
$(document)
		.ready(
				function() {
					var a = $("#favoritesList");
					var b = function() {
						var e, d, c;
						e = a.find(".btnSee"), d = a.find(".btnDel"), c = a
								.find(".btnClear");
						var f = function() {
							if (a.find(".rented").length > 0) {
								a.find(".btnClear").attr("disabled", false)
							} else {
								a.find(".btnClear").attr("disabled", true)
							}
						};
						f();
						CollUtils.list = function() {
							if (a.find(".HouseTab tr").length < 2) {
								window.location.reload()
							} else {
								f()
							}
						};
						e.on("click", function(i) {
							var h = $(this).parents("tr").attr("id");
							var g = $(this).parents("tr").attr("ht");
							houseUtil.addLookhouse(i, this, h, g)
						});
						d.on("click", function(h) {
							var i = $(this).parents("tr").attr("id");
							var g = $(this).parents("tr").attr("ht");
							houseUtil.delHouseCollect(h, this, i, g)
						});
						c
								.on(
										"click",
										function(g) {
											g.preventDefault();
											Confirm(
													"\u786e\u8ba4\u6e05\u9664\u5931\u6548\u623f\u6e90?",
													function() {
														$
																.ajax({
																	url : Url
																			+ "deleteFailHouses.action",
																	cache : false,
																	success : function(
																			h) {
																		switch (h.status) {
																		case 1:
																			$(a)
																					.find(
																							"tr.rented")
																					.remove();
																			Alert("\u6e05\u9664\u6210\u529f");
																			CollUtils
																					.list();
																			break;
																		case 5:
																			Alert("\u672a\u767b\u9646");
																			break;
																		default:
																			Alert("\u51fa\u9519\uff0c\u8bf7\u91cd\u8bd5");
																			break
																		}
																	}
																})
													})
										})
					};
					if (a.length > 0) {
						b()
					}
				});
