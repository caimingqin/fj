var HOME="http://moonkingcai.xicp.net/chuzu/search";
var Url = "/chuzu/";
var Cache = "http://moonkingcai.xicp.net/static/house/";
var VideoClientId = "17f7d65e0b6fe662";
$.ajaxSetup({
    dataType : "json", type : "get", cache : false
});
function Ks(a) 
{
    if (a) {
        return a.replace(/(^\s*|(\s*$))/g, "") 
    }
    else {
        return "" ;
    }
}
function cutN(a) 
{
    if (/^([\-\d+]).*$/.test(a)) {
        return parseInt(a.replace(/^(\d+).*$/, "$1")) 
    }
    else {
        return 0 ;
    }
}
function Kh(a) 
{
    return Ks(a.replace(/(<.*>.*<\/.*>)|(<.*>)/g, ""))
}
function Gs(c, a) 
{
    if (!a) {
        var a = location.search 
    }
    var b = new RegExp("^\\?(?:" + c + "=|.+=.*&" + c + "=)([^&]+).*", "i");
    if (b.test(a)) {
        return decodeURI(a.replace(b, "$1")) 
    }
    else {
        return "" ;
    }
}
function Num(a) 
{
    if (isNaN(a)) {
        return 0 
    }
    else {
        return Number(a) ;
    }
}
function isNum(a) 
{
    return  / ^([1 - 9]\d *| 0)$/.test(a)
}
function Len(c) {
 var a = 0;
 if (c) {
  for (var b = 0; b < c.length; b++) {
   a++;
   if (c.charCodeAt(b) < 0 || c.charCodeAt(b) > 255) {
    a++
   }
  }
 }
 return a
}
function Cut(d, a) {
 if (Len(d) > a) {
  var c = "";
  for (var b = 0; b < d.length; b++) {
   if (Len(c + d.substr(b, 1)) >= a - 2) {
    return c + d.substr(b, 1) + "\u2026";
    break
   } else {
    c += d.substr(b, 1)
   }
  }
 } else {
  return d
 }
}
function initCut() {
 $(".needCut").each(function() {
  var a = $(this).attr("len");
  a = a == "" ? 10 : a;
  var b = Cut($(this).text(), a);
  $(this).html(b)
 })
}
function Val(a) {
 a = $(a);
 var b = Ks(a.val());
 if (b == a.attr("placeholder")) {
  return ""
 } else {
  return b
 }
}
if (Gs("tpa")) {
 $.ajax({
  url : Url + "iwStatistics.action",
  cache : false,
  data : {
   tpa : Gs("tpa"),
   ref : document.referrer
  }
 })
}
function IE() {
 var c = navigator.userAgent, a;
 var b = /. +? MSIE (\d + )\.0. +/;
 if (b.test(c)) {
  a = parseInt(c.replace(b, "$1"))
 } else {
  a = 0
 }
 return a
}
function Pop(d, a) {
 if (typeof d == "object") {
  d.addClass("Pop");
  if (d.find(".Close").length == 0) {
   d.append('<i class="Close"></i > ')
  }
 } else {
  d = $(' < div class = "Pop" > ').appendTo("body").html(
    d + ' < i class = "Close" ></i>')
 }
 d.show();
 var c = $(".Mask");
 if (c.length == 0) {
  c = $('<div class="Mask">').appendTo("body")
 }
 c.show().height($(document).height());
 d.css({
  top : ($(window).height() - d.height()) / 3, 
    left : ($(window).width() - d.width())  / 2
});
$(".Pop .Close,.Pop .Btn").click(function () 
{
    $(this).parents(".Pop").hide();
    if ($(".Pop:visible").length == 0) {
        $(".Mask").remove() 
    }
    if (a instanceof Function) {
        a() 
    }
})
}
function Alert(d, c, a) 
{
if (c) {
    d = '<i class="war"></i>' + d 
}
Pop('<div class="Alert"><p class="des">' + d + '</p><p class="end"><i class="Btn">\u786e\u5b9a</i></p></div>', 
a)
}
function Confirm(d, a) 
{
Alert(d, 1);
var c = $(".Pop .end .Btn").last();
c.before( c.clone(true).addClass("Sb").removeClass("Btn") .html("\u53d6\u6d88")).click(function () 
{
    if (a instanceof Function) {
        a() 
    }
})
}
function FormSubmit(a, c) 
{
var b = $('<form method="post" action="' + a + '"></form>');
if (c != null) {
    for ( var d in c) {
        b.append('<input type="hidden" name="' + d + '" value=' + c[d] + ">") 
    }
}
b.appendTo("body");
b.submit()
}
function Login(g) 
{
var c;
var f = $("#Login");
if (f.length == 0) {
    f = $('<form method="post" action="" id="Login"></form>').appendTo( "body") 
}
var a = [];
a[0] = "<h3>注册/登录</h3>";
a[1] = '<ul><li><i class="Ib">手机号码</i>';
a[2] = '<input type="tel" name="mobile" value="18577601805" maxlength="11" placeholder="请输入手机号码">';
a[3] = '<input type="password"  name="pwd" value="admin" maxlength="16" placeholder="请输入密码">';
a[4] = '<button type="submit" url="' + Url + 'login.action">登录</button></li><li class="Rr"></li></ul>';
f.html(a.join(""));
Place(f);
var b = f.find('input[name="mobile"]'), e = f.find(".Rr"), d,$password;
$password=f.find('input[name="pwd"]')
b.btn = f.find("button:first");
b.btn.txt = b.btn.html();
b .keyup( function (i) 
{
    if (b.attr("readonly")) {
        return 
    }
    var h = b.val();
    if (i.keyCode != 13) {
        e.html("") 
    }
    if (h.length == b.attr("maxlength")) 
    {
        if (!/^1[3|5|7|8]\d{9}$/.test(h)) {
            e .html("手机号码不正确!") 
        }
    }
    else 
    {
        if (!/^\d*$/.test(h)) {
            e .html("手机号码只能为数字!") 
        }
    }
}).keydown(function (h) 
{
    if (d && h.keyCode == 9) {
        d.focus() 
    }
});
f.submit(function () 
{
    if (d) {
        d.btn.click() 
    }
    else {
        b.btn.click() 
    }
    return false ;
});
b.btn .click(function () 
{
    if (b.val() == b.attr("placeholder")) {
        b.val("") 
    }
    if (Ks(b.val()) == "") 
    {
        b.focus();
        e.html("手机号码不能为空!");
        return false 
    }
    if (!/^1[3|5|7|8]\d{9}$/.test(b.val())) {
        b.focus();
        e.html("手机号码不正确!");
        return false 
    }
    var postData={ mobile : b.val(), pwd:$password.val()};
    //console.log(postData);
    $ .ajax(
    {
        type : "post", dataType : "json", url : Url + "/login", cache : false, data : postData,
        success : function (r) 
        {
        	//console.log(r);
          if(r.status=="success"){
        	/*	f.css("display","none");
        		$(".Mask").css("opacity", "0");
        		Update();*/
        	  FormSubmit(HOME);
           }else{
        	   f.append(r.msg);
           }
          
        }
    });
    return false ;
});
Pop(f);
$(".Mask").css("opacity", "0.65")
}
//设置菜单选中
function checkNavBar(){
	//设置css样式
	var href = window.location.href;
	if (href.indexOf("/chuzu/favorite") !=- 1 || href.indexOf("/chuzu/userInfo") !=- 1 ) {
	    $("#setUserInfoCss").addClass("act");
	}
}
function checkLogin(a) 
{
//if (a.status == 1) {
if (a.status == "success")
{
	var user=a.content;
    a.uname = user.mobile;
    if (a.uname) 
    {
        $("#Top .login") .html( '<a id="setUserInfoCss"  mark="setCss" href="' + Url + 'userInfo/"><i class="iconfont">&#xe602;</i>' + a.uname + '<i class="iconfont" style="font-size:12px;margin-left:5px">&#xe61f;</i></a>');
        $("#Top .login") .after( '<b><i></i><a href="' + Url + 'favorite/">\u6211\u7684\u6536\u85cf</a><a href="' + Url + 'userInfo/">\u6211\u7684\u8d26\u53f7</a><a href="javascript:loginOut()">\u9000\u51fa\u767b\u5f55</a></b>') 
    }
    if (a.kfNum != null) 
    {
        if ($("#Showings span").length > 0) {
            if (a.kfNum > 0) {
                $("#Showings span").html(a.kfNum) 
            }
            else {
                $("#Showings span").remove() 
            }
        }
        else {
            if (a.kfNum > 0) {
                $("#Showings").append("<span>" + a.kfNum + "</span>") 
            }
        }
    }
    if (a.ykNum != null) 
    {
        if ($("#Itinerary span").length > 0) 
        {
            if (a.ykNum > 0) {
                $("#Itinerary span").html(a.ykNum) 
            }
            else {
                $("#Itinerary span").remove() 
            }
        }
        else {
            if (a.ykNum > 0) {
                $("#Itinerary").append("<span>" + a.ykNum + "</span>") 
            }
        }
    }
    if (a.reffer) {
        location = a.reffer ;
    }
}
else 
{
    $("#Top .login").html("注册/登录").attr("href", "javascript:Login()");
    $("#Itinerary span").remove();
    $("#Showings span").remove() 
}
checkNavBar();
}
function loginOut() 
{
$.ajax(
{
    url : Url + "/loginOut", cache : false,
    success : function (a) 
    {
        if (a.status == "success") {
            location = HOME ;
        }
    }
})
}
(function (a) 
{
a.getStyle = function (b, d) 
{
    var c = a("link");
    if (c.each(function (e, f) 
    {
        if (a(f).attr("href") == b) {
            return true ;
        }
    })) 
    {
        c = document.createElement("link");
        c.setAttribute("rel", "stylesheet");
        c.setAttribute("href", b);
        document.getElementsByTagName("head")[0].insertBefore(c, null);
        c.onload = function () 
        {
            if (d instanceof Function) {
                d() 
            }
        }
    }
    else {
        if (d instanceof Function) {
            d() 
        }
    }
};
a.DateTime = function (e, g) 
{
    if (!g) 
    {
        var c = new Date();
        c.setMinutes(0);
        var b = new Date(c);
        b.setDate(b.getDate() + 7);
        g = 
        {
            format : "yyyy-mm-dd hh:ii", autoclose : true, startView : 2, minView : 1, todayHighlight : true, 
            startDate : c, endDate : b, initialDate : c 
        }
    }
    if (!e) {
        e = a(".DateTime") 
    }
    else {
        if (!e.hasClass("DateTime")) {
            e = e.find(".DateTime") ;
        }
    }
    a.getStyle(Cache + "css/DateTime.css", function () 
    {
        a.getScript(Cache + "js/DateTime.js", function () 
        {
            e.datetimepicker(g) 
        }) 
    }) 
}
})(jQuery);
function Update() 
{
$.ajax(
{
    url : Url + "/checkLogin", cache : false,
    error : function (a) 
    {
        checkLogin(a) 
    },
    success : function (a) 
    {
    	debugger;
        checkLogin(a) ;
        
    }
})
}
function Place(a) 
{
if (IE() < 6 || IE() > 9) {
    return 
}
if (a) {
    a = a.find(":text,input[type=tel],textarea") 
}
else {
    a = $(":text,input[type=tel],textarea") 
}
a.each(function (b, c) 
{
    var d = $(c);
    if (!d.attr("Place")) 
    {
        d.attr("Place", true);
        var e = (d.attr("placeholder"));
        d.focus(function () 
        {
            if (e == d.val()) {
                d.val("") 
            }
            d.css("color", "") 
        });
        d.blur(function () 
        {
            if (d.val() == "") {
                d.val(e).css("color", "#aaa") 
            }
        });
        if (!d.val() && e) {
            d.val(e).css("color", "#aaa") 
        }
        $(c.form).submit(function () 
        {
            if (d.val() == e) {
                d.val("") 
            }
        }) 
    }
})
}
function Checkbox(a) 
{
if (a) {
    a = a.find(':checkbox:not(".chklist")') 
}
else {
    a = $(':checkbox:not(".chklist")') 
}
a.each(function (b, c) 
{
    c = $(c);
    var d = c.parent();
    if (!d.hasClass("Checkbox")) 
    {
        if (c.prop("checked")) {
            d.addClass("checked") 
        }
        c.click(function (f) 
        {
            f.stopPropagation();
            return false ;
        });
        d.addClass("Checkbox").click(function () 
        {
            if (d.hasClass("checked")) {
                d.removeClass("checked");
                c.prop("checked", false) 
            }
            else {
                d.addClass("checked");
                c.prop("checked", true) 
            }
        }) 
    }
})
}
function Radio(a) 
{
if (a) {
    a = a.find(":radio") 
}
else {
    a = $(":radio") 
}
a.each(function (b, c) 
{
    c = $(c);
    var d = c.parent();
    if (!d.hasClass("Radio")) 
    {
        if (c.prop("checked")) {
            d.addClass("checked") 
        }
        c.click(function (f) 
        {
            f.stopPropagation();
            return false ;
        });
        d.addClass("Radio").click( function () 
        {
            $(":radio[name=" + c.attr("name") + "]").prop( "checked", false).parent().removeClass( "checked");
            d.addClass("checked");
            c.prop("checked", true) 
        }) 
    }
})
}
function Top() 
{
var a = $("#Province");
if (Num(a.attr("provinceId")) == 0 || !a.attr("provincePy")) 
{
    $.ajax(
    {
        url : Url + "getProvinceId.action",
        success : function (b) 
        {
            a.parent(".city").removeClass("none");
            a.attr({
                provinceId : b.id, provincePy : b.py 
            }).html(b.text + '<i class="iconfont">&#xe61f;</i>') 
        }
    }) 
}
Update()
}
function setProvince(a) 
{
$.ajax(
{
    url : Url + "changeCity.action", data : {
        provinceId : a 
    },
    success : function (b) 
    {
        if (b.url) {
            location = b.url 
        }
        else {
            location = Url ;
        }
    }
})
}
var Fixed;
$(document).ready( function () 
{
Place();
Checkbox();
Radio();
Fixed = $(".Fixed");
if (Fixed.length) {
    Fixed.offTop = Fixed.offset().top;
    Fixed.fixTop = Num(Fixed.attr("top")) 
}
if (localStorage.getItem("registMobile") && localStorage.getItem("registUserId")) 
{
    var a = window._mvq || [];
    window._mvq = a;
    a.push([ "$setAccount", "m-80613-0" ]);
    a.push([ "$setGeneral", "registered", "", localStorage.getItem("registMobile"), localStorage.getItem("registUserId") ]);
    a.push([ "$logConversion" ]);
    localStorage.removeItem("registMobile");
    localStorage.removeItem("registUserId") 
}
}).keydown(function (b) 
{
var a = b.keyCode;
if ($(".Mask").length) {
    if (a == 27) {
        $(".Pop .Close").click();
        return false 
    }
    else {
        if (a == 9) {
            return false ;
        }
    }
}
if ($(".Alert").length) {
    if (a == 13) {
        $(".Alert .Btn").click();
        return false ;
    }
}
});
$(window).bind( "load resize scroll", function () 
{
var b = $(window).height(), d = $(window).width(), c = $(document) .scrollTop();
if (Fixed && Fixed.offTop) 
{
    if (Fixed.offTop < c + Fixed.fixTop) {
        Fixed.css({
            position : "fixed", top : Fixed.fixTop 
        }) 
    }
    else {
        Fixed.css({
            position : "", top : "" 
        }) 
    }
}
var e = $(".Pop");
e.css({
    top : (b - e.height())  / 3, left : (d - e.width())  / 2 
});
var a = $(".Foot");
if ($(document.body).height() < b) {
    a.css("position", "fixed") 
}
else {
    a.css("position", "") 
}
a.css("visibility", "visible") 
});


function searchHistory(e, c, a) 
{
if (e != "") 
{
    var d = localStorage.getItem("searchHistory" + c + a);
    if (d) 
    {
        d = d.split(",");
        for (var b = d.length - 1; b >= 0; b--) {
            if (d[b] == e) {
                d.splice(b, 1);
                break 
            }
        }
        d.unshift(e);
        if (d.length > 10) {
            d.length = 10 
        }
        localStorage.setItem("searchHistory" + c + a, d.join(",")) 
    }
    else {
        localStorage.setItem("searchHistory" + c + a, e) 
    }
}
}
$(function () 
{
var c = $(".searchForm");
var a = c.find("[name=searchName],[name=kw]");
var b = c.find("p.Pa");
$(document).click( function (d) 
{
    if (b.is(":visible") && d.target.name != ("searchName") && d.target.name != ("kw")) {
        b.hide() 
    }
}).keydown( function (j) 
{
    if (b.is(":visible")) 
    {
        var g = j.keyCode;
        if (g == 27 || g == 13) {
            b.hide() 
        }
        else 
        {
            if (g == 38 || g == 40) 
            {
                b.act = - 1;
                b.a = b.find("a");
                for (var f = b.a.length - 1; f >= 0; f--) {
                    if (b.a.eq(f).hasClass("act")) {
                        b.act = f;
                        break 
                    }
                }
                if (g == 38) {
                    if (b.act <= 0) {
                        b.act = b.a.length - 1 
                    }
                    else {
                        b.act-- 
                    }
                }
                else {
                    if (g == 40) {
                        if (b.act < 0 || b.act >= b.a.length - 1) {
                            b.act = 0 
                        }
                        else {
                            b.act++ 
                        }
                    }
                }
                var d = b.a.eq(b.act).attr("title");
                if (!d) {
                    d = b.a.eq(b.act).find("span").text() 
                }
                b.filter(":visible").parents("form").find( "[name=searchName],[name=kw]").val(d);
                var h = new RegExp("(" + d + ")");
                b.a.each(function (e, k) 
                {
                    k.className = "";
                    k = $(k);
                    k.find("span").html( k.find("span").text().replace(h, "<b>$1</b>")) 
                });
                b.a.eq(b.act).addClass("act") 
            }
        }
    }
});
if (b.length == 0) {
    b = $('<p class="Pa"></p>').prependTo(c) 
}
a.blur(function () 
{
    setTimeout(function () 
    {
        b.hide() 
    }, 200) 
});
a .bind( "click focus", function () 
{
    var n = $(this);
    var j = n.parents("form");
    var g = Val(n);
    var k = Num(j.attr("ht"));
    var f = Num(j.attr("provinceId"));
    var l = j.find(".Pa");
    if (g == "") 
    {
        var e = localStorage.getItem("searchHistory" + f + k);
        if (e) 
        {
            var m = "";
            e = e.split(",");
            for (var d = 0; d < e.length; d++) {
                m += '<a href="javascript:"><span>' + Cut(e[d].split("--")[0], 50) + "</span></a>" 
            }
            if (m) 
            {
                l .html(m) .show() .find("a") .click( function () 
                {
                    queryType = 2;
                    var i = $(this).text();
                    n.val(i);
                    var o = new RegExp("(" + i + ")", "gi");
                    l .find("a") .each( function ( p, q) 
                    {
                        q.className = "";
                        q = $(q);
                        q .find( "span") .html( q .find( "span") .text() .replace( o, "<b>$1</b>")) 
                    });
                    $(this).addClass("act");
                    searchHistory(n.val(), f, k);
                    var h = $("#sellMap").length;
                    if (h > 0) {
                        j.attr("t", queryType);
                        j.submit() 
                    }
                    else 
                    {
                        location = j .attr("action") + "?" + n .attr("name") + "=" + encodeURIComponent(n .val()) + "&t=" + queryType ;
                    }
                }) 
            }
        }
    }
    else {
        if (l.html() != "") {
            l.show() 
        }
        else {
            n.keyup() 
        }
    }
});
a .keyup(function (g) 
{
    var n = $(this);
    var i = n.parents("form");
    var h = Val(n);
    var j = Num(i.attr("ht"));
    var f = Num(i.attr("provinceId"));
    var l = i.find(".Pa");
    var d = g.keyCode;
    if (d == 27 || d == 38 || d == 40 || d == 13) {
        return 
    }
    var m = Val(n);
    if (m == n.attr("key")) {
        return 
    }
    else {
        n.attr("key", m) 
    }
    if (m == "") {
        l.html("").hide();
        n.focus();
        return 
    }
    if (this.Ajax) {
        this.Ajax.abort() 
    }
    this.Ajax = new $.ajax( 
    {
        url : Url + "getSuggestions.action", cache : false, data : {
            provinceId : f, searchName : m 
        },
        success : function (q) 
        {
            if (q.status == 1) 
            {
                if (q.data.length == 0) {
                    l.html("").hide() 
                }
                else 
                {
                    l.html("");
                    var o = new RegExp("(" + m + ")", "gi"), e, k, p;
                    $(q.data) .each( function (r, s) 
                    {
                        if (!s.key) {
                            return 
                        }
                        if (Len(s.key) > 50) {
                            e = ' title="' + s.key + '"' 
                        }
                        else {
                            e = "" 
                        }
                        k = Cut(s.key, 50);
                        if (s.tip) {
                            p = "<i>" + Cut( s.tip, (48 - Len(k))) + "</i>" 
                        }
                        else {
                            p = "" 
                        }
                        $( '<a href="javascript:"' + e + "><span>" + k .replace( o, "<b>$1</b>") + "</span>" + p + "</a>") .click( function () 
                        {
                            var t = 3;
                            n .val(s.key);
                            var v = new RegExp( "(" + s.key + ")");
                            l .find( "a") .each( function ( w, x) 
                            {
                                x.className = "";
                                x = $(x);
                                x .find( "span") .html( x .find( "span") .text() .replace( v, "<b>$1</b>")) 
                            });
                            $( this) .addClass( "act");
                            searchHistory( n .val(), f, j);
                            var u = $("#sellMap").length;
                            if (u > 0) {
                                i .attr( "t", t);
                                i .submit() 
                            }
                            else 
                            {
                                location = i .attr("action") + "?" + n .attr("name") + "=" + encodeURIComponent(n .val()) + "&t=" + t 
                            }
                            l .hide() ;
                        }) .appendTo(l) 
                    });
                    l.show() 
                }
            }
        },
        error : function () 
        {
            l.hide() 
        }
    }) 
});
c.submit(function (d) 
{
    if (Val(a.filter(":visible")) == "") {
        return false 
    }
    searchHistory(Val(a.filter(":visible")), Num(c.filter(":visible").attr( "provinceId")), Num(c.filter(":visible").attr("ht"))) 
})
});