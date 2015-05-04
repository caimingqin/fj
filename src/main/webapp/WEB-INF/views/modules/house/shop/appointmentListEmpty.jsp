<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<!-- <title>看房日程-爱屋吉屋</title>
<meta name="keywords" content="爱屋吉屋">
<meta name="description" content="爱屋吉屋">
<link rel="stylesheet" href="http://resource.iwjw.com/2.4.1/cache/css/Public.css">
<link rel="stylesheet" href="http://resource.iwjw.com/2.4.1/cache/css/House.css">
<script src="http://resource.iwjw.com/2.4.1/cache/js/jQuery.js"></script>
<script src="http://resource.iwjw.com/2.4.1/cache/js/Public.js"></script> -->

<title>看房日程-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/House.css">
</head>
<body style="position:relative;">
	<!-- 头部 -->
	<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<script>Top()</script>
<div class="Rw">
	<div class="SeeT"></div>
			<!--<h3>看房日程</h3>-->
		<div class="Null">
		<h4>您未注册/登录</h4>
		注册/登录后，您的专属看房顾问将为您安排看房日程。
		<button onclick="Login()">注册/登录</button>
		</div>
	
<div class="SeeT"></div>
</div>
	<script src="${st}/js/appointment.js"></script>

	<!-- 尾部 -->
	<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>


	

</body>
</html>