<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<!-- <title>约看清单-爱屋吉屋</title>
<meta name="keywords" content="爱屋吉屋">
<meta name="description" content="爱屋吉屋">
<link rel="stylesheet" href="http://resource.iwjw.com/2.4.1/cache/css/Public.css">
<link rel="stylesheet" href="http://resource.iwjw.com/2.4.1/cache/css/House.css">
<script src="http://resource.iwjw.com/2.4.1/cache/js/jQuery.js"></script>
<script src="http://resource.iwjw.com/2.4.1/cache/js/Public.js"></script> -->
<title>约看清单-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/House.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<script>Top()</script><div class="Progress">
	<div class="Rw">
		<ul class="clearfix">
			<li class="Pc Green icon iconfont">&#xe613;</li>
			<li class="Pl Green"></li>
			<li class="Pl"></li>
			<li class="Pc icon iconfont">&#xe624;</li>
			<li class="Pl"></li>
			<li class="Pl"></li>
			<li class="Pc icon iconfont">&#xe614;</li>
		</ul>
		<ul class="clearfix Pt">
			<li class="Green">1.挑选房源</li>
			<li>2.预约时间</li>
			<li style="width:auto">3.提交成功</li>
		</ul>
	</div>
</div>

<div class="Rw">	
	<!--<h3>约看清单(0/50)</h3>-->
	<div class="Null">
		<h4>您未注册/登录</h4>
		注册/登录后，您可以将想看的房源加入到约看清单中。
		<button onclick="Login()">注册/登录</button>
	</div>
</div>
	

<script src="${st}/js/house.js"></script>
<script src="${st}/js/seeHouse.js"></script>
<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>

	
</body>
</html>