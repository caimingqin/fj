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
<link rel="stylesheet" href="${st}/css/Public2.css">
<link rel="stylesheet" href="${st}/css/DateTime.css">
<link rel="stylesheet" href="${st}/css/map.css">
<script src="${st}/js/appointment.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<div id="Nav">
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
<div class="Rw" style="z-index:960;">
	<div id="Filter" class="Sw">
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
		<a href="javascript:" target="_blank" class="Sb">返回列表</a>
	</div>
</div>

<div id="mMap"></div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=B2e75d2a46ef88bab0e6af581d57ce26"></script>
	
<script type="text/javascript">
 //设置地图宽高
 var listLabel;
 var m = $("#mMap");
 var C = function() {
	console.log($(window).height());
	console.log(m.offset().top);
	m.height($(window).height() - m.offset().top)
 };
	C();
	$(window).resize(C);

var map = new BMap.Map("mMap");
var point = new BMap.Point(118.154517,24.513867);
map.centerAndZoom(point, 10);
//var marker = new BMap.Marker(point);// 创建标注
//marker.enableDragging(); // 可拖拽
map.enableScrollWheelZoom(true);//设置是否可缩放
//map.addOverlay(marker); // 将标注添加到地图中 

//http://www.cnblogs.com/milkmap/archive/2011/08/24/2151073.html
//<p class="point1">天河区<br>1779套</p>
var myLabel = new BMap.Label("<p class='point1'>湖里区<br>1779套</p>",     //为lable填写内容
    {position:point});                                //label的位置
    myLabel.setStyle({
		border : 0,
		background : ""
	});
    myLabel.setZIndex(1);
    //myLabel.setTitle("我是文本标注label");               //为label添加鼠标提示
    map.addOverlay(myLabel);                             //把label添加到地图上

    //动态设置弹出列表位置
    var e = function(U) {
    	var Q = m.height();
    	var W = m.width();
    	var X = m.find(".info");
    	var R = X.height();
    	var M = X.width();
    	if (R >= Q || M >= W) {
    		return
    	}
    	var N =map.pointToPixel(U), Y, T, S;
    	var P = M / 2 + 28 - N.x + 10;
    	var V = M / 2 + 28 + N.x - W + 10;
    	//var O = x("#Filter").height() + 10;
    	//Y = R - N.y + I.getOffset().height + O + 69;
    	Y = R - N.y + listLabel.getOffset().height + 150;
    	T = P > 0 ? P : (V > 0 ? -V : 0);
    	S = Y > 0 ? Y : 0;
    	map.panBy(T, S)
    };	
    
var content='<div class="info"><img src="http://house-images-water.oss.aliyuncs.com/7bfa8df80d3a4a4bac2963b0c73f2e04.t"><dl><dt>凤安花园</dt><dd><b>4</b>套符合条件的房源</dd></dl><ul><li class="g"><a href="/chuzu/BUBvUjzfrH0/?from=040103&amp;p=40000" target="_blank"><i>2室1厅</i><i>61 m²</i><i>中层</i><i class="Tr">2300元/月</i></a></li><li><a href="/chuzu/2xP-HmHohaQ/?from=040103&amp;p=40000" target="_blank"><i>1室1厅</i><i>33 m²</i><i>中层</i><i class="Tr">2500元/月</i></a></li><li class="g"><a href="/chuzu/l0j1xPh0sS8/?from=040103&amp;p=40000" target="_blank"><i>2室1厅</i><i>42 m²</i><i>中层</i><i class="Tr">2200元/月</i></a></li><li><a href="/chuzu/SFIhrKjGBF0/?from=040103&amp;p=40000" target="_blank"><i>3室1厅</i><i>80 m²</i><i>低层</i><i class="Tr">4000元/月</i></a></li></ul><b></b><i class="Close" onclick="infoClose()"></i></div>' ;   
listLabel = new BMap.Label(content,     //为lable填写内容
	    {position:point});                                //label的位置
	    listLabel.setStyle({
			border : 0,
			background : ""
		});
	    listLabel.setZIndex(10);
    myLabel.addEventListener("click", function(){  
    	   map.addOverlay(listLabel);    
    	   e(point);
    });   
var  infoClose=function(){
	map.removeOverlay(listLabel);
}    



var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
map.addControl(top_left_control);        
map.addControl(top_left_navigation); 

</script>	
</body>
</html>