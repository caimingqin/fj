<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>收藏夹-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/House.css">
<script src="${st}/js/house.js"></script>

</head>
<body>
<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<script>Top()</script><div class="Rw">
	<div id="favoritesList">
	<h3>收藏夹</h3>
	<div class="Null">
		<h4>收藏夹为空</h4>
		您可以将想看的房源加入到收藏夹中
	</div>
	</div>
</div> <!-- Rw end -->
<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>


	
</body>
</html>