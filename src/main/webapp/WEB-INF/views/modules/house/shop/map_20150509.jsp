<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>地图搜索-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/House.css">
<script src="${st}/js/house.js"></script>
<script src="http://api.map.baidu.com/api?v=2.0&ak=D5b939310cda4811e6587c8a535e1edc"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<script>Top()</script><div id="Nav">
	<div class="Rw">
		<form action="" method="get" id="Search" provinceId="2" provincePy="shanghai" provinceName="上海" ht="1" class="searchForm">
			<input type="hidden" name="grade" value="0">
			<input type="text" name="searchName" maxlength="50" placeholder="请输入小区名称或地址" autocomplete="off" value="">
			<button type="submit"></button>
			<div id="Line">
				<input type="hidden" name="lineId">
				<input type="hidden" name="lineName">
				<input type="hidden" name="subLineId" value="0">
				<input type="hidden" name="subLineName">
				<h4>地铁找房</h4>
			</div>
			<div id="Area">
				<input type="hidden" name="areaId" value="0">
				<input type="hidden" name="areaName">
				<h4>区域找房</h4>
			</div>
		</form>
			</div>
</div>
<div class="Rw">
	<div id="Filter">
		<input type="hidden" name="startPrice" value="-1">
		<input type="hidden" name="endPrice" value="-1">
		<i class="Ib">租金</i>
		<select name="priceId">
				<option value="-1"  selected  sp='-1' ep='-1'>不限</option>
				<option value="1"  sp='-1' ep='2000'>2000元以下 </option>
				<option value="2"  sp='2000' ep='4000'>2000-4000元</option>
				<option value="3"  sp='4000' ep='6000'>4000-6000元</option>
				<option value="4"  sp='6000' ep='8000'>6000-8000元</option>
				<option value="5"  sp='8000' ep='10000'>8000-10000元</option>
				<option value="6"  sp='10000' ep='15000'>10000-15000元</option>
				<option value="7"  sp='15000' ep='-1'>15000元以上</option>
		</select>
																																																		<i class="Ib">卧室</i>
		<select name="roomNum">
			<option value="-1"  selected >不限</option>
			<option value="1" >一室</option>
			<option value="2" >二室</option>
			<option value="3" >三室</option>
			<option value="4" >四室</option>
			<option value="5" >四室以上</option>
		</select>
		<i class="Ib">入住时间</i>
		<input type="text" name="rentFreeDate" placeholder="年 -月 -日" class="DateTime" value="">
		<a href="javascript:" target="_blank" class="Sb"></a>
	</div>
</div><div id="Map"></div>

	
<!-- <script src="http://resource.iwjw.com/2.4.1/cache/js/logAjax.js"></script> -->
</body>
</html>