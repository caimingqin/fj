(function(a) {
	a(document).ready(
			function() {
				a(".loginout").click(function() {
					a.ajax({
						url : Url + "loginout.action",
						cache : false,
						success : function(b) {
							if (b.status == 1) {
								location = Url
							}
						}
					})
				});
				a(".UserInfo .edit").click(function() {
					var b = a(this);
					b.hide();
					b.siblings(".Btn,.Sb").show();
					b.parent().parent().find(".info label,.info input").show();
					b.parent().parent().find(".info i").hide()
				});
				a(".UserInfo .Btn").click(
						function() {
							var b = a(this);
							var c = b.parent().parent().find(
									"input:radio:checked,input:text");
							var d, e = c.val();
							if (c.attr("name") == "realName") {
								d = {
									realName : e
								};
								if (!e) {
									e = "未填写"
								}
							} else {
								d = {
									gender : e
								};
								if (e) {
									e = c.parent().text()
								} else {
									e = "未选择"
								}
							}
							a.ajax({
								url : Url + "updateUserInfo.action",
								type : "post",
								cache : false,
								data : d,
								success : function(f) {
									if (f.status == 1) {
										if (e == "未填写"
												|| e == "未选择") {
											b.parent().parent().find(".info i")
													.html(e).addClass("Gray")
										} else {
											b.parent().parent().find(".info i")
													.html(e)
													.removeClass("Gray")
										}
										Alert("修改成功!");
										b.siblings(".Sb").click()
									} else {
										Alert("修改失败!")
									}
								}
							})
						});
				a(".UserInfo .Sb").click(function() {
					var b = a(this);
					b.hide();
					b.siblings(".Btn").hide();
					b.siblings(".edit").show();
					b.parent().parent().find(".info label,.info input").hide();
					b.parent().parent().find(".info i").show()
				})
			})
})(jQuery);
