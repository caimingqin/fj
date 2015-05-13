(function(x) {
	var m = x("#Map");
	if (m.length == 0) {
		return
	}
	var C = function() {
		m.height(x(window).height() - m.offset().top)
	};
	C();
	x(window).resize(C);
	var t = x("#Province");
	var u = new BMap.Map("Map", {
		enableMapClick : false
	});
	var n = x("#Search").attr("provinceName") || x("#Province").text();
	u.centerAndZoom(n);
	var y;
	var K = {};
	var g = 5;
	var h;
	var I;
	var q = [];
	var i;
	var v;
	var a = [];
	var L;
	var H = [];
	var p;
	var o;
	var s;
	var F;
	var k = [];
	var D = x(
			'<p class="msg">\u5f88\u62b1\u6b49\uff0c\u6ca1\u6709\u627e\u5230\u5408\u9002\u7684\u623f\u6e90~<i title="\u5173\u95ed" class="Close"></i></p>')
			.appendTo(m);
	D.find(".Close").click(function() {
		D.hide()
	});
	var z = function(P) {
		var N = Num(Search.grade.val());
		var O = u.getOverlays();
		if (!P) {
			P = d(u.getZoom())
		}
		for (var M = 0; M < O.length; M++) {
			if (!(h == O[M] && P > 1) && !(I == O[M] && P == 3)
					&& !(i == O[M] && (N == 4 || N == 5)) && !(i && O[M].sites)
					&& !(i && p == O[M] && P >= 3)
					&& !(i && P >= 3 && o == O[M]) && !(F == O[M])) {
				u.removeOverlay(O[M])
			}
		}
	};
	var d = function(M) {
		if (!M) {
			M = u.getZoom()
		}
		if (M <= 13) {
			return 1
		} else {
			if (M >= 16) {
				return 3
			} else {
				return 2
			}
		}
	};
	var r = window.infoClose = function() {
		u.removeOverlay(I)
	};
	var w = function(P) {
		var Q = function(S, T) {
			var R = S.building == "" ? "\u72ec\u680b" : S.building;
			return "<li" + T + '><a href="' + Url + S.houseDetailUrl
					+ '" target="_blank"><i>' + S.bedroomSum + "\u5ba4"
					+ S.livingRoomSum + "\u5385</i><i>" + S.area
					+ " m\u00b2</i><i>" + S.floor + '</i><i class="Tr">'
					+ S.rentPrice + "\u5143/\u6708</i></a></li>"
		};
		var O = "<ul>";
		for (var M = 0, N; M < P.length; M++) {
			c = "";
			if (M < g) {
				if (M % 2 == 0) {
					c = ' class="g"'
				}
			} else {
				if (M % g == 0) {
					N = 0
				} else {
					N++
				}
				if (N % 2) {
					c = ' class="Dn"'
				} else {
					c = ' class="Dn g"'
				}
			}
			O += Q(P[M], c)
		}
		O += "</ul>";
		if (P.length > g) {
			O += '<p class="page"><b class="disabled" onclick="infoPage(this,-1)">\u4e0a\u4e00\u9875</b>';
			O += "<i>1</i> / " + Math.ceil(P.length / g);
			O += '<b onclick="infoPage(this,1)">\u4e0b\u4e00\u9875</b></p>'
		}
		return O
	};
	var A = window.infoPage = function(R, S) {
		if (R.className == "disabled") {
			return
		}
		var R = x(R);
		var N = R.parent().find("b");
		var Q = R.siblings("i");
		var O = (Num(Q.html()) || 1) + S;
		var M = R.parents(".info").find("ul>li");
		var P = Math.ceil(M.length / g);
		N.removeClass("disabled");
		if (O <= 1) {
			Q.html(1);
			N.first().addClass("disabled")
		} else {
			if (O >= P) {
				Q.html(P);
				N.last().addClass("disabled")
			} else {
				Q.html(O)
			}
		}
		M.each(function(U, T) {
			T = x(T);
			if ((U >= (O - 1) * g) && U < O * g) {
				T.show()
			} else {
				T.hide()
			}
		});
		return false
	};
	var e = function(U) {
		var Q = m.height();
		var W = m.width();
		var X = m.find(".info");
		var R = X.height();
		var M = X.width();
		if (R >= Q || M >= W) {
			return
		}
		var N = u.pointToPixel(U), Y, T, S;
		var P = M / 2 + 28 - N.x + 10;
		var V = M / 2 + 28 + N.x - W + 10;
		var O = x("#Filter").height() + 10;
		Y = R - N.y + I.getOffset().height + O + 69;
		T = P > 0 ? P : (V > 0 ? -V : 0);
		S = Y > 0 ? Y : 0;
		u.panBy(T, S)
	};
	var l = function(T) {
		var Q;
		if (T) {
			Q = T.markList
		}
		if (!T || Q.length == 0) {
			z();
			u.removeOverlay(I);
			if (!s) {
				D.show().css({
					top : (m.height() - D.height()) / 3,
					left : (m.width() - D.outerWidth()) / 2
				})
			}
			return
		}
		if (D.is(":visible")) {
			D.hide()
		}
		var S = [];
		var R = [];
		var P;
		var U = true;
		var M = d(K.level);
		var N = Num(Search.grade.val());
		z(M);
		if (!F && !h && !T.areaId && M > 1 && (N == 0 || N == 1 || N == 2)) {
			if (T.areaName) {
				P = T.areaName
			} else {
				if (Search.areaName.val()) {
					P = Search.areaName.val()
				} else {
					if (Search.kw) {
						P = Search.kw
					}
				}
			}
			if (P) {
				h = new BMap.Label('<p class="mark"><i>' + P + "</i></p>", {
					position : new BMap.Point(u.getCenter().lng,
							u.getCenter().lat)
				});
				h.setStyle({
					border : 0,
					background : ""
				});
				h.setZIndex(1);
				u.addOverlay(h)
			}
		}
		for (var O = 0; O < Q.length; O++) {
			R[O] = new BMap.Point(Q[O].lon, Q[O].lat);
			if (M == 1) {
				if (Q[O].houseNum > 9999) {
					P = "9999+"
				} else {
					P = Q[O].houseNum + "\u5957"
				}
				S[O] = new BMap.Label('<p class="point1">' + Q[O].areaName
						+ "<br>" + P + "</p>", {
					position : R[O]
				});
				S[O].areaId = Q[O].areaId;
				S[O].areaName = Q[O].areaName;
				S[O].lon = Q[O].lon;
				S[O].lat = Q[O].lat;
				S[O].addEventListener("click", function() {
					s = false;
					u.removeOverlay(h);
					h = null;
					u.removeOverlay(F);
					F = null;
					Search.lon = this.lon;
					Search.lat = this.lat;
					if (N == 0 || N == 1 || N == 2) {
						Search.grade.val(1);
						Search.areaId.val(this.areaId);
						Search.areaName.val(this.areaName);
						x("#Area>h4").html(Cut(this.areaName, 12)).addClass(
								"set")
					}
					j(15, this.lon, this.lat);
					J(this.areaId, M);
					logFn.actLog("33", this.areaId);
					logFn.Filter()
				});
				S[O].addEventListener("mouseover", function() {
					for (var W = k.length - 1; W >= 0; W--) {
						if (this != k[W]) {
							u.removeOverlay(k[W])
						}
					}
					if (this.hover == false) {
						return
					} else {
						if (this.hover) {
							u.addOverlay(this.hover)
						} else {
							if (!(F && F.area == this.areaId)) {
								J(this, M)
							}
						}
					}
				});
				S[O].addEventListener("mouseout", function() {
					for (var W = k.length - 1; W >= 0; W--) {
						u.removeOverlay(k[W])
					}
				})
			} else {
				if (M == 2) {
					if (Q[O].houseNum > 999) {
						P = "999+"
					} else {
						P = Q[O].houseNum + "\u5957"
					}
					S[O] = new BMap.Label('<p class="point2"><i>' + P
							+ "</i><b>" + Q[O].areaName + "</b></p>", {
						position : R[O]
					});
					S[O].areaId = Q[O].areaId;
					S[O].areaName = Q[O].areaName;
					S[O].lon = Q[O].lon;
					S[O].lat = Q[O].lat;
					S[O].addEventListener("click", function() {
						s = false;
						u.removeOverlay(h);
						h = null;
						u.removeOverlay(F);
						F = null;
						Search.lon = this.lon;
						Search.lat = this.lat;
						if (N == 0 || N == 1 || N == 2) {
							Search.grade.val(2);
							Search.areaId.val(this.areaId);
							Search.areaName.val(this.areaName);
							x("#Area>h4").html(Cut(this.areaName, 12))
									.addClass("set")
						}
						j(16, this.lon, this.lat);
						J(this.areaId, M);
						logFn.actLog("33", this.areaId);
						logFn.Filter()
					});
					S[O].addEventListener("mouseover", function() {
						for (var W = k.length - 1; W >= 0; W--) {
							if (this != k[W]) {
								u.removeOverlay(k[W])
							}
						}
						if (this.hover == false) {
							return
						} else {
							if (this.hover) {
								u.addOverlay(this.hover)
							} else {
								if (!(F && F.area == this.areaId)) {
									J(this, M)
								}
							}
						}
					});
					S[O].addEventListener("mouseout", function() {
						for (var W = k.length - 1; W >= 0; W--) {
							u.removeOverlay(k[W])
						}
					})
				} else {
					if (M >= 3) {
						for (var V = q.length - 1; V >= 0; V--) {
							if (q[V].areaId == Q[O].areaId) {
								S[O] = q[V];
								if (U && q[V].info == I) {
									U = false
								}
								if (!U) {
									break
								}
							}
						}
						if (!S[O]) {
							if (Q[O].houseNum > 99) {
								P = "99+"
							} else {
								P = Q[O].houseNum + "\u5957"
							}
							S[O] = new BMap.Label('<p class="point3">' + P
									+ "</p>", {
								position : R[O]
							});
							S[O].areaId = Q[O].areaId;
							S[O].ck = function() {
								s = false;
								u.removeOverlay(I);
								delete Search.infoId;
								var W = this;
								var X = W.getPosition();
								X = new BMap.Point(X.lng, X.lat);
								if (W.info) {
									I = W.info;
									u.addOverlay(I);
									e(X)
								} else {
									delete K.lngF;
									delete K.lngT;
									delete K.latF;
									delete K.latT;
									delete K.level;
									delete K.searchName;
									delete K.grade;
									delete K.subLineId;
									K.areaId = W.areaId;
									if (y) {
										y.abort()
									}
									y = new x.ajax(
											{
												url : Url
														+ "getHouseListByEstateId.action",
												data : K,
												cache : false,
												success : function(Z) {
													if (Z.status == 1) {
														y = null;
														var Y = Z.data.rows;
														if (Y.length) {
															W
																	.setContent('<p class="point4">'
																			+ W
																					.getContent()
																					.replace(
																							/(<.*?>)/g,
																							"")
																			+ "</p>");
															P = '<div class="info"><img src="'
																	+ Y[0].defaultPic
																	+ '"><dl><dt>'
																	+ Y[0].estateName
																	+ "</dt><dd><b>"
																	+ Y.length
																	+ "</b>\u5957\u7b26\u5408\u6761\u4ef6\u7684\u623f\u6e90</dd></dl>"
																	+ w(Y)
																	+ '<b></b><i class="Close" onclick="infoClose()"></i></div>';
															I = new BMap.Label(
																	P,
																	{
																		position : X
																	});
															I.setStyle({
																border : 0,
																background : ""
															});
															I.setZIndex(9);
															W.info = I;
															u.addOverlay(I);
															q.push(W);
															e(X)
														}
													}
												}
											})
								}
								return false
							};
							S[O].addEventListener("click", function() {
								this.ck();
								logFn.actLog("33", this.areaId);
								logFn.Filter()
							})
						}
						if (Search.infoId == S[O].areaId) {
							S[O].ck();
							u.removeOverlay(h)
						}
					}
				}
			}
			S[O].setStyle({
				border : 0,
				background : ""
			});
			S[O].setZIndex(2);
			u.addOverlay(S[O])
		}
		if (U) {
			u.removeOverlay(I)
		}
	};
	var b = function(M, N) {
		u.removeOverlay(p);
		u.removeOverlay(o);
		p = new BMap.Circle(new BMap.Point(M, N), 1000, {
			strokeColor : "#e84a01",
			strokeWeight : 2,
			strokeOpacity : 1,
			fillColor : "#000",
			fillOpacity : 0.1,
			enableClicking : false
		});
		u.addOverlay(p);
		o = new BMap.Label('<p class="remark">\u534a\u5f841km</p>', {
			position : new BMap.Point((parseFloat(M) + 0.0068),
					(parseFloat(N) + 0.0068))
		});
		o.setStyle({
			border : 0,
			background : ""
		});
		u.addOverlay(o)
	};
	var J = function(N, O) {
		var P, M;
		if (typeof N == "object") {
			P = N.areaId;
			M = {
				strokeWeight : 2,
				strokeColor : "#404dd0",
				fillColor : "#000",
				fillOpacity : 0.05,
				strokeOpacity : 0.8,
				enableClicking : false
			}
		} else {
			if (typeof N == "number") {
				P = N;
				M = {
					strokeWeight : 4,
					strokeColor : "#e84a01",
					fillColor : "#000",
					fillOpacity : 0.1,
					strokeOpacity : 1,
					enableClicking : false
				}
			}
		}
		x.ajax({
			url : Url + "getPathInfo.action",
			data : {
				areaId : P,
				grade : O
			},
			cache : false,
			success : function(S) {
				var Q = [];
				for (var R = 0; R < S.length; R++) {
					Q[R] = new BMap.Point(S[R].lon, S[R].lat)
				}
				if (Q.length) {
					if (typeof N == "object") {
						N.hover = new BMap.Polygon(Q, M);
						u.addOverlay(N.hover);
						k[k.length] = N.hover
					} else {
						F = new BMap.Polygon(Q, M);
						F.area = P;
						u.addOverlay(F)
					}
				} else {
					if (typeof N == "object") {
						N.hover = false
					} else {
						u.removeOverlay(F)
					}
				}
			}
		})
	};
	var j = function(S, R, Q, N) {
		if (!S) {
			S = u.getZoom()
		}
		if (S < 10) {
			S = 10
		} else {
			if (S > 18) {
				S = 18
			}
		}
		if (R && Q) {
			u.centerAndZoom(new BMap.Point(R, Q), S);
			if (N) {
				b(R, Q)
			}
			setTimeout(j, 200);
			return
		}
		if (S >= 13) {
			var O = u.getBounds();
			var P = O.getSouthWest();
			var M = O.getNorthEast();
			if (K.level
					&& K.level == S
					&& Math.abs(M.lat - K.latT) <= Math
							.abs((K.latT - K.latF) * 0.2)
					&& Math.abs(M.lng - K.lngT) <= Math
							.abs((K.lngT - K.lngF) * 0.2)) {
				return
			}
			K.lngF = P.lng;
			K.lngT = M.lng;
			K.latF = P.lat;
			K.latT = M.lat
		} else {
			delete K.lngF;
			delete K.lngT;
			delete K.latF;
			delete K.latT
		}
		delete K.areaId;
		delete K.searchName;
		delete K.grade;
		delete K.subLineId;
		delete K.drawline;
		K.level = S;
		x.ajax({
			url : Url + "houseMarkByLevel.action" + G(1),
			data : K,
			cache : false,
			success : function(T) {
				if (T.status == 1) {
					l(T.data)
				}
			}
		})
	};
	var E = function(Q, P, O) {
		var R = Num(Search.lineId.val()) || Num(Search.subLineId.val());
		var N = function() {
			delete K.lngF;
			delete K.lngT;
			delete K.latF;
			delete K.latT;
			delete K.level;
			delete K.areaId;
			delete K.searchName;
			K.grade = 4;
			v = K.subLineId = R;
			x.ajax({
				url : Url + "mapSearch.action",
				data : K,
				cache : false,
				success : function(W) {
					if (W.status == 1) {
						var V = u.getOverlays();
						for (var T = 0; T < V.length; T++) {
							if (V[T].sites) {
								u.removeOverlay(V[T])
							}
						}
						var U = W.data.markList;
						a = [];
						L = [];
						for (var T = 0, S; T < U.length; T++) {
							S = new BMap.Point(U[T].lon, U[T].lat);
							L[T] = new BMap.Label('<p class="dot"></p>', {
								position : S
							});
							L[T].sites = true;
							L[T].setStyle({
								border : 0,
								background : ""
							});
							u.addOverlay(L[T]);
							a[T] = new BMap.Label(
									'<p class="sites"><i class="l"></i><i>'
											+ U[T].stationName
											+ '</i><i class="r">'
											+ U[T].houseNum + "\u5957</i></p>",
									{
										position : S
									});
							a[T].sites = true;
							a[T].subLineId = U[T].stationId;
							a[T].subLineName = U[T].stationName;
							a[T].lon = U[T].lon;
							a[T].lat = U[T].lat;
							a[T].setStyle({
								border : 0,
								background : ""
							});
							a[T].setZIndex(3);
							a[T].ck = function(X) {
								s = false;
								Search.lon = this.lon;
								Search.lat = this.lat;
								Search.grade.val(5);
								Search.subLineId.val(this.subLineId);
								Search.subLineName.val(this.subLineName);
								x("#Line>h4").html(Cut(this.subLineName, 12))
										.addClass("set");
								j(16, this.lon, this.lat, 1)
							};
							a[T].addEventListener("click", function() {
								this.ck()
							});
							u.addOverlay(a[T])
						}
					}
				}
			})
		};
		if (Search.move && v != R) {
			u.centerAndZoom(n);
			H = [];
			var M = new BMap.BusLineSearch(u, {
				renderOptions : {
					map : u
				},
				onGetBusListComplete : function(S) {
					if (S) {
						M.getBusLine(S.getBusListItem(0))
					}
				}
			});
			M.disableAutoViewport();
			setTimeout(function() {
				M.getBusList(Search.lineName.val())
			}, 1000);
			M.setMarkersSetCallback(function(S) {
				for (var T = 0; T < S.length; T++) {
					u.removeOverlay(S[T])
				}
			});
			M.setPolylinesSetCallback(function(T) {
				for (var S = 0; S < T.getPath().length; S++) {
					H[S] = new BMap.Point(T.getPath()[S]["lng"],
							T.getPath()[S]["lat"])
				}
				i = new BMap.Polyline(H, {
					strokeColor : "#e84a01",
					strokeWeight : 4,
					strokeOpacity : 1
				});
				u.addOverlay(i);
				N();
				if (Q && P && O) {
					j(Q, P, O, 1)
				} else {
					u.setViewport(H);
					setTimeout(j, 200)
				}
			})
		} else {
			if (Search.move) {
				if (Q && P && O) {
					j(Q, P, O, 1)
				} else {
					u.setViewport(H);
					setTimeout(j, 200)
				}
			} else {
				N();
				setTimeout(j, 200)
			}
		}
	};
	var B = function() {
		delete K.lngF;
		delete K.lngT;
		delete K.latF;
		delete K.latT;
		delete K.level;
		delete K.areaId;
		delete K.grade;
		delete K.subLineId;
		delete K.drawline;
		if (Search.kw) {
			K.searchName = Search.kw
		}
		if (!Search.move) {
			setTimeout(j, 200);
			return
		}
		if (y) {
			y.abort()
		}
		y = new x.ajax({
			url : Url + "mapSearch.action" + G(),
			data : K,
			cache : false,
			success : function(M) {
				if (M.status == 1) {
					y = null;
					if (M.data && M.data.lon && M.data.lat) {
						if (Search.kw) {
							if (M.data.areaId) {
								Search.infoId = M.data.areaId
							} else {
								delete Search.infoId;
								if (M.data.areaName) {
									Search.areaName.val(M.data.areaName)
								}
							}
							if (M.data.drawline && Num(M.data.drawline.id)) {
								if (Num(M.data.drawline.greade) == 1) {
									j(12, M.data.lon, M.data.lat);
									J(Num(M.data.drawline.id), 1)
								} else {
									j(15, M.data.lon, M.data.lat);
									J(Num(M.data.drawline.id), 2)
								}
							} else {
								j(17, M.data.lon, M.data.lat)
							}
						} else {
							u.centerAndZoom(new BMap.Point(M.data.lon,
									M.data.lat), 12);
							l(M.data)
						}
					} else {
						l()
					}
				}
			}
		})
	};
	var f = window.initMap = function() {
		s = false;
		q = [];
		delete Search.infoId;
		if (Search.move) {
			u.removeOverlay(h);
			h = null;
			u.removeOverlay(F);
			F = null
		}
		K = {
			provinceId : Search.provinceId
		};
		if (Num(Search.startPrice.val())) {
			K.startPrice = Search.startPrice.val()
		}
		if (Num(Search.endPrice.val())) {
			K.endPrice = Search.endPrice.val()
		}
		if (Num(Search.roomNum.val())) {
			K.roomNum = Search.roomNum.val()
		}
		if (Val(Search.rentDate)) {
			K.rentFreeDate = Val(Search.rentDate)
		}
		var M = Search.kw;
		var N = Num(Search.grade.val());
		if (M == "") {
			if (N == 4) {
				E()
			} else {
				if (N == 5) {
					if (Search.move && Search.lon && Search.lat) {
						E(16, Search.lon, Search.lat)
					} else {
						E()
					}
				} else {
					if (N == 1) {
						v = 0;
						u.removeOverlay(i);
						i = null;
						if (Search.move) {
							j(12, Search.lon, Search.lat);
							J(Num(Search.areaId.val()), N)
						} else {
							setTimeout(j, 200)
						}
					} else {
						if (N == 2) {
							v = 0;
							u.removeOverlay(i);
							i = null;
							if (Search.move) {
								j(15, Search.lon, Search.lat);
								J(Num(Search.areaId.val()), N)
							} else {
								setTimeout(j, 200)
							}
						} else {
							v = 0;
							u.removeOverlay(i);
							i = null;
							B()
						}
					}
				}
			}
		} else {
			v = 0;
			u.removeOverlay(i);
			i = null;
			B()
		}
	};
	u.addEventListener("load", function() {
		u.setMinZoom(9);
		u.addControl(new BMap.NavigationControl());
		u.addControl(new BMap.ScaleControl());
		u.enableScrollWheelZoom();
		u.disableDoubleClickZoom();
		u.disableInertialDragging();
		u.addEventListener("mousedown", function() {
			if (D.is(":visible")) {
				D.hide()
			}
		});
		u.addEventListener("zoomstart", function() {
			s = true
		});
		u.addEventListener("zoomend", function() {
			if (D.is(":visible")) {
				D.hide()
			}
			if (s) {
				q = [];
				setTimeout(j, 200)
			}
		});
		u.addEventListener("dragend", function() {
			s = true;
			setTimeout(j, 200)
		});
		f()
	});
	var G = function(P) {
		var N = ((Search.fm != null && Search.fm != "" && P == 1) ? "fm="
				+ encodeURIComponent(Search.fm) + "&" : "");
		var M = (Search.queryType > 0 ? "t=" + Search.queryType : "");
		var O = (N + M == "") ? "" : ("?" + N + M);
		Search.queryType = 0;
		Search.fm = "";
		return O
	}
})(jQuery);
