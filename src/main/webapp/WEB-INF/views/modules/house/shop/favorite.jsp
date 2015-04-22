<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>收藏夹-爱屋吉屋</title>
<meta name="keywords" content="爱屋吉屋">
<meta name="description" content="爱屋吉屋">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/House.css">
<script src="${st}/js/house.js"></script>
</head>
<body>
<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<div class="Rw">
	<div id="favoritesList">
	<!--<h3>收藏夹<a href="http://www.iwjw.com/deleteFailHouses.action" title="" class="btnClear Dn">清除失效房源</a></h3>-->
	<table class="HouseTab">
		<tr>
			<th class="Tl" style="font-size:20px;">收藏夹</th>
			<th class="Tr" colspan="5"><button id="delNoRent" class="Sb btnClear" disabled>清除失效房源</button></th>
		</tr>
				<tr id="iKKOuuAjkEo" ht="1" >
			<td class="imgtd tdF">
				<a href="http://www.iwjw.com/chuzu/iKKOuuAjkEo/" target="_blank" class="hPic Fl">
										 <!-- 独家 --><i class="dj"></i> 										<img src="http://house-images-water.oss.aliyuncs.com/438294379e8f47e5aea28c41431c85fb.t">
				</a>
				<div class="Fl inf">
				<h4>
					<b>
						<a href="http://www.iwjw.com/chuzu/iKKOuuAjkEo/" target="_blank" title="大西洋新城">
							<i>大西洋新城</i> <!--<i>310号</i>-->
						</a>
					</b>
				</h4>
				<p class="Cb">
					<i class="iconfont">&#xe60b;</i>朝阳 - 望京 广顺北大街33号院
				</p>
				<p class="Cb"><i class="iconfont">&#xe60c;</i>15号线 </p>
								<p class="Cb Few"> 今日发布 </p>
								</div>
			</td>
			<td>2室1厅<i class="ll"></i></td>
			<td>68m²<i class="ll"></i></td>
			<td>中层<i class="ll"></i></td>
			<td>
				<p class="Tr"><b><i class="housePrice">5000</i>  元/月</b></p>
							</td>
			<td class="tdL">
							<button class="btn btnRented">预约中</button>
							<a href="" title="删除" class="btn btnDel">删除</a>
			</td>
		</tr>

				<tr id="HFeNbfKAPgg" ht="1" >
			<td class="imgtd tdF">
				<a href="http://www.iwjw.com/chuzu/HFeNbfKAPgg/" target="_blank" class="hPic Fl">
															 <!-- 视频 --><i class="videoBtn"><img src="http://resource.iwjw.com/2.2/cache/img/videoBtn.png"></i>					<img src="http://g4.ykimg.com/0100641F4654D0B79C5BE01D245C5DD5AD0DA3-F7A0-6991-6444-B0D2C91AD61C">
				</a>
				<div class="Fl inf">
				<h4>
					<b>
						<a href="http://www.iwjw.com/chuzu/HFeNbfKAPgg/" target="_blank" title="福顺里小区">
							<i>福顺里小区</i> <!--<i>4号</i>-->
						</a>
					</b>
				</h4>
				<p class="Cb">
					<i class="iconfont">&#xe60b;</i>丰台 - 北大地 福顺里
				</p>
				<p class="Cb"></p>
								<p class="Cb Few"> 今日发布 </p>
								</div>
			</td>
			<td>1室1厅<i class="ll"></i></td>
			<td>60m²<i class="ll"></i></td>
			<td>低层<i class="ll"></i></td>
			<td>
				<p class="Tr"><b><i class="housePrice">3800</i>  元/月</b></p>
							</td>
			<td class="tdL">
							<button class="btn btnSee">我要看房</button>	
							<a href="" title="删除" class="btn btnDel">删除</a>
			</td>
		</tr>

			</table>
	</div> <!-- favoritesList end -->


</div> <!-- Rw end -->

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
</div></body>
</html>