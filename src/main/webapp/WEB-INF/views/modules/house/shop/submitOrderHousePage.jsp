<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>看房顾问-爱屋吉屋</title>
<meta name="keywords" content="爱屋吉屋">
<meta name="description" content="爱屋吉屋">

<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/House.css">
</head>
<body>

<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<div class="Progress">
	<div class="Rw">
		<ul class="clearfix">
			<li class="Pc Green icon iconfont">&#xe613;</li>
			<li class="Pl Green"></li>
			<li class="Pl Green"></li>
			<li class="Pc Green icon iconfont">&#xe624;</li>
			<li class="Pl Green"></li>
			<li class="Pl Green"></li>
			<li class="Pc Green icon iconfont">&#xe614;</li>
		</ul>
		<ul class="clearfix Pt">
			<li class="Green">1.挑选房源</li>
			<li class="Green">2.预约时间</li>
			<li class="Green" style="width:auto">3.提交成功</li>
		</ul>
	</div>
</div>

<div class="Rw orderHouseDiv">
    <div class="Succeed">
		<p class="info">约看已提交，看房顾问确认日程后会电话通知您。</p>
		<img src="http://resource.iwjw.com/2.2/img/server.png">
			<p class="gw">您的顾问：王建业</p>139-1180-6328
			<p class="Star">
				<i class="iconfont">&#xe616;</i>
				<i class="iconfont">&#xe616;</i>
				<i class="iconfont">&#xe616;</i>
				<i class="iconfont">&#xe616;</i>
				<i class="iconfont">&#xe616;</i>
			</p></div>
    
    <!-- 约看列表 -->
    <div class="Rw orderHouseList">
    	<h3>本次约看的3套房源</h3>
    	<table class="HouseTab">
    		<tr>	
    			<td class="Tl" style="width:300px">
    				<a href="http://www.iwjw.com/chuzu/iKKOuuAjkEo/?from=4010&cs=beijing" target="_blank"><b>大西洋新城</b></a>
    			</td>
    			<td>2室1厅</td>
    			<td>68m²</td>
    			<td>中层</td>
    			<td><b>5000  元/月</b></td>
    		</tr>
    	    <tr>	
    			<td class="Tl" style="width:300px">
    				<a href="http://www.iwjw.com/chuzu/NENvQCgXOuE/?from=4010&cs=beijing" target="_blank"><b>时代紫芳</b></a>
    			</td>
    			<td>3室2厅</td>
    			<td>94m²</td>
    			<td>高层</td>
    			<td><b>6000  元/月</b></td>
    		</tr>
    	    <tr>	
    			<td class="Tl" style="width:300px">
    				<a href="http://www.iwjw.com/chuzu/oTL87cx_jeQ/?from=4010&cs=beijing" target="_blank"><b>天通苑北三区</b></a>
    			</td>
    			<td>2室1厅</td>
    			<td>98m²</td>
    			<td>低层</td>
    			<td><b>3800  元/月</b></td>
    		</tr>
    	</table>
    </div>
</div>

<div id="Hs">
	<div id="HouseEnd">
		<p id="HouseFix">
		<span class="Fr"><button onclick="javascript:location.href='http://www.iwjw.com/appointmentList/';">进入看房日程</button></span>
		</p>
	</div>
</div>
<!-- 尾部 -->
<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>
<div style="display:none">	
	<script type="text/javascript">
	//<!-- 百度统计 -->
		
	var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?3a10bbf8b4afa9e5ab91d66b6944e813";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
	
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd9c1d8c1576dcc0f1aa537eb3b3e5830' type='text/javascript'%3E%3C/script%3E"));
	
	
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F9d413a8e18eff3d12181e53c4fa289cf' type='text/javascript'%3E%3C/script%3E"));
	
	//<!-- 其他统计 -->
	var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000539121'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s19.cnzz.com/z_stat.php%3Fid%3D1000539121' type='text/javascript'%3E%3C/script%3E"));
	
</script>
</div>
</body>
</html>