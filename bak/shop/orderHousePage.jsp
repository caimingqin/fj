<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>提交约看-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/House.css">
<style></style>
 
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
			<li class="Pl"></li>
			<li class="Pc icon iconfont">&#xe614;</li>
		</ul>
		<ul class="clearfix Pt">
			<li class="Green">1.挑选房源</li>
			<li class="Green">2.预约时间</li>
			<li style="width:auto">3.提交成功</li>
		</ul>
	</div>
</div>

<div class="Rw orderHouseDiv">
    <form action="submitOrderHouse" method="get" class="Rw orderHouse">
    	<div class="Bs">
			
    		<input type="hidden" name="codehouseIds" value=[{"houseId":"iKKOuuAjkEo","houseType":"1"},{"houseId":"NENvQCgXOuE","houseType":"1"},{"houseId":"oTL87cx_jeQ","houseType":"1"}]>
    		<input type="hidden" name="houseIds" value=[{"houseId":1286507,"houseType":1},{"houseId":1753942,"houseType":1},{"houseId":1250906,"houseType":1}]>
    		<dl class="ver">
    			<dt>
    				<i class="Ib">您的姓名</i>
    				<input type="text" name="realName" placeholder="请输入您的称呼" value ="蔡志源">
    			</dt>
    			<dd class="Rr"></dd>
    		</dl>
    		<dl class="ver">
    			<dt>
    				<i class="Ib">性别</i>
    				<span class="radioBtn left  red " value="1">先生</span><span class="radioBtn right " value="2">女士</span>
    				<input type="hidden" name="gender" value="1">
    			</dt>
    			<dd class="Rr"></dd>
    		</dl>
    		<!--<dl class="ver">
    			<dt>
    				<i class="Ib">性别</i>
    				<label><input type="radio" name="gender" value="1"  checked >先生</label>
    				<label><input type="radio" name="gender" value="2" >女士</label>
    			</dt>
    			<dd class="Rr"></dd>
    		</dl>-->
    		<dl class="seeTime">
    			<dt>
    				<i class="Ib">看房时间</i>
    				<input type="text" class="DateTime" name="date" placeholder="指定看房时间(主选)">
    			</dt>
    			<dd class="Rr"></dd>
    		</dl>
			<dl class="seeTime">
    			<dt>
    				<i class="Ib" style="visibility: hidden;">看房时间</i>
    				<input type="text" class="DateTime" name="date" placeholder="指定看房时间(备选)">
    			</dt>
    			<dd class="Rr"></dd>
    		</dl>
    		<p class="sbt">
    			<!--<span class="Sb">+ 添加看房时间</span><br>-->
    			<label><input type='checkbox' checked>同意</label><a href="http://www.iwjw.com/protocol/h/" target="_blank">《现场看房及中介服务协议》</a>
    		</p>
    	</div>
    	<!--<p class="seeOrderHouse Tr"><button type="submit">提交</button></p>-->
    	
    </form>
    
    <!-- 约看列表 -->
	<div class="Rw orderHouseList">
    	<h3>本次约看的3套房源</h3>
    	<table class="HouseTab">
    		<tr>	
    			<td class="Tl" style="width:300px">
    				<a href="http://www.iwjw.com/chuzu/iKKOuuAjkEo/?from=4010&cs=beijing" target="_blank"><b>大西洋新城</b></a>
    			</td>
    			<td>2室1厅</td>
    			<td>68 m²</td>
    			<td>中层</td>
    			<td><b>5000  元/月</b></td>
    		</tr>
    	    <tr>	
    			<td class="Tl" style="width:300px">
    				<a href="http://www.iwjw.com/chuzu/NENvQCgXOuE/?from=4010&cs=beijing" target="_blank"><b>时代紫芳</b></a>
    			</td>
    			<td>3室2厅</td>
    			<td>94 m²</td>
    			<td>高层</td>
    			<td><b>6000  元/月</b></td>
    		</tr>
    	    <tr>	
    			<td class="Tl" style="width:300px">
    				<a href="http://www.iwjw.com/chuzu/oTL87cx_jeQ/?from=4010&cs=beijing" target="_blank"><b>天通苑北三区</b></a>
    			</td>
    			<td>2室1厅</td>
    			<td>98 m²</td>
    			<td>低层</td>
    			<td><b>3800  元/月</b></td>
    		</tr>
    	</table>
    </div>
</div>

<div id="Hs">
	<div id="HouseEnd">
		<p id="HouseFix">
			<span id="orderBack" class="Fl">
				<i class="iconfont">&#xe620;</i>返 回
			</span>
			<span class="Fr">
				<button id="subBtn" type="submit">确认提交</button>
			</span>
		</p>
	</div>
</div>

<script src="${st}/js/orderHouse.js"></script>

<!-- 尾部 -->

<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>
<div style="display:none">	
	<!--<script src="http://resource.iwjw.com/2.2/${st}/js/foot.js"></script>-->
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