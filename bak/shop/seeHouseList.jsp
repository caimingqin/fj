<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>约看清单-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/House.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>

<div class="Progress">
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
	<!--<h3>约看清单(<i id="houseTotal">1</i>/50)</h3>-->
	<table class="HouseTab">
		<tr>
			<th class="Tc" style="width:30px"><label><input type="checkbox" class="chkAll"></label></th>
			<th class="Tl">全选</th>
			<th class="Tr" colspan="5"><button id="delNoRent" class="Sb" disabled>清除失效房源</button></th>
		</tr>
		<tr ht="1">	
			<td class="Tc"><label><input type="checkbox"  name="houseIds" value="oTL87cx_jeQ" aa="oTL87cx_jeQ_1"  ht="1" ></label></td>
			<td class="Tl tdF">
				<a href="http://www.iwjw.com/chuzu/oTL87cx_jeQ/" target="_blank"  class="Fl hPic" >
                	<img src="http://house-images-water.oss.aliyuncs.com/f1c9ac8c8cf840ea81e3158b0f8b4ed8.t">
				</a>
				<div class="Fl inf">
					<h4>
						<b>
							<a href="http://www.iwjw.com/chuzu/oTL87cx_jeQ/" target="_blank" title="天通苑北三区">
								<i>天通苑北三区</i> <!--<i>31号</i>-->
							</a>
    					</b>
					</h4>
					<p class="Cb">
						<i class="iconfont">&#xe60b;</i>昌平 - 天通苑 天通北苑三区
					</p>
					<p class="Cb"></p>
					<p class="Cb Few"> 今日发布 </p>
    			</div>
			</td>
			<td>2室1厅<i class="ll"></i></td>
			<td>98 m²<i class="ll"></i></td>
			<td>低层<i class="ll"></i></td>
			<td>
				<p class="Tr"><b><i class="housePrice">3800</i>  元/月</b></p>
			</td>
			<td class="Tl tdL">
				<div class="tipDiv">
					<p class="collection">
						<i class="iconfont iconGray">&#xe616;</i> 收藏
					</p>
				</div>
				<p class="delete" style="width:75px"><i class="iconfont iconGray">&#xe618;</i> 删除</p>
			</td>
		</tr>
		<!-- 失效房源 -->
	</table>
</div>
<div id="Hs">
	<div id="HouseEnd">
		<p id="HouseFix" status="">
			<span class="Fr">
				已选中<i id="selectTotal">0</i>套房源
				<button disabled>预约看房</button>
			</span>
		</p>
	</div>
</div>

<script src="${st}/js/house.js"></script>
<script src="${st}/js/seeHouse.js"></script>
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