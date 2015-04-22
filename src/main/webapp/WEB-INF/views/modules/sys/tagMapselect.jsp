<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<style type="text/css">
#l-map {
	height: 500px;
	width: 1000px;
}

#r-result {
	width:1000px;
}
</style>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=B2e75d2a46ef88bab0e6af581d57ce26"></script>
	<script src="${ctxStatic}/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<title>设置点是否可拖拽</title>
</head>
<body>
	<!-- 地址模糊搜索 -->
	<input id="mgeo" type="hidden">
	<div id="r-result">
		输入查询地址:<input type="text" id="suggestId" size="20"
			style="width: 500px;" /> 
			<input type="button" onclick="getPoint();"
			value="获取经纬度" />
	</div>
	<div id="searchResultPanel"
		style="border: 1px solid #C0C0C0; width: 500px; height: auto; display: none;"></div>
	<div id="l-map"></div>
</body>
</html>
	<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("l-map");
	var geo="${geo}";
	var points=geo.split(",");
	var point = new BMap.Point(points[0], points[1]);
	//var point = new BMap.Point(117.39082,39.161732);
	map.centerAndZoom(point, 19);
	var marker = new BMap.Marker(point);// 创建标注
    marker.enableDragging(); // 可拖拽
	map.enableScrollWheelZoom(true);//设置是否可缩放
	map.addOverlay(marker); // 将标注添加到地图中
	var ac = new BMap.Autocomplete( //建立一个自动完成的对象
	{
		"input" : "suggestId",
		"location" : map
	});

	ac.addEventListener("onhighlight", function(e) { //鼠标放在下拉列表上的事件
		var str = "";
		var _value = e.fromitem.value;
		var value = "";
		if (e.fromitem.index > -1) {
			value = _value.province + _value.city + _value.district + _value.street + _value.business;
		}
		str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

		value = "";
		if (e.toitem.index > -1) {
			_value = e.toitem.value;
			value = _value.province + _value.city + _value.district + _value.street + _value.business;
		}
		str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
		G("searchResultPanel").innerHTML = str;
	});

	var myValue;
	ac.addEventListener("onconfirm", function(e) { //鼠标点击下拉列表后的事件
		var _value = e.item.value;
		myValue = _value.province + _value.city + _value.district + _value.street + _value.business;
		G("searchResultPanel").innerHTML = "onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;

		setPlace();
	});

	function setPlace() {
		map.clearOverlays(); //清除地图上所有覆盖物
		function myFun() {
			var pp = local.getResults().getPoi(0).point; //获取第一个智能搜索的结果
			map.centerAndZoom(pp, 19);
			marker = new BMap.Marker(pp);
			map.addOverlay(marker); //添加标注
		}
		var local = new BMap.LocalSearch(map, { //智能搜索
			onSearchComplete : myFun
		});
		local.search(myValue);
	}
	// 百度地图API功能
	function G(id) {
		return document.getElementById(id);
	}
	function getPoint() {
		//alert("marker的位置是" + marker.getPosition().lng + "," + marker.getPosition().lat);
		var geo=marker.getPosition().lng+","+marker.getPosition().lat;
		$("#mgeo").val(geo);
		top.$.jBox.getBox().find("button[value='ok']").trigger("click");
	}
</script>