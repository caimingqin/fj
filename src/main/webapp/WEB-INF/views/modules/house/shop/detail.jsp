<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>时代紫芳-房界</title>
<meta name="keywords" content="房界 真房源 租客免佣">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/sellHouseDetails.css">
<script type="text/javascript" src="${st}/js/HouseDetails.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	   
})

</script>
</head>
<body>
<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<div class="Rw details">
	<!-- 左边 -->
	<div class="summary">
		<!-- 图片轮播 -->
		<div id="imgSlide" class="slide" onselectstart="return false;">
			<div class="bimgs">
				<!--视频播放器-->
				<div id="sellYoukuplayer"></div>
					<ul>
					<c:forEach items="${house.imageUrls }" var="item">
					<li><img
							src="${item}"
							alt="">
							<p class="imgInfo">
								<i></i> <i class="imgNum">1/8</i>
							</p> <!--视频按钮--> <i class="iconfont videoBtn" code="XOTEyNDc3NDQ4"><img
								src="${item }"></i>
						</li>
					</c:forEach>
						<!-- <li><img
							src="http://house-images-water.oss.aliyuncs.com/d118fae96c6f447e8c5562cde4b701be.s.iwjw"
							alt="">
							<p class="imgInfo">
								<i>厅1</i> <i class="imgNum">2/8</i>
							</p></li> -->
					</ul>
					<span class="larr"><i class="bg"></i><i class="iconfont">&#xe620;</i></span>
				<span class="rarr"><i class="bg"></i><i class="iconfont">&#xe628;</i></span>
			</div>
			<div class="simgs">
				<div class="sm">
						<ul>
					<!-- 		<li class="hPic"><img
								src="http://g4.ykimg.com/1100641F4655053DF135A61D245C5D661FD7F8-E5A6-F4AB-A921-2948E775186D"
								alt="" /> 视频按钮 <i class="iconfont videoBtn small"
								code="XOTEyNDc3NDQ4"><img
									src="http://resource.iwjw.com/2.2/cache/img/videoBtn.png"></i>
							</li> -->
							
								<c:forEach items="${house.imageUrls }" var="item">
							<li class="hPic"><img
								src="${item }"
								alt="" /></li>
								</c:forEach>
						</ul>
					</div>
				<span class="larr"><i class="bg"></i><i class="iconfont">&#xe63e;</i></span>
				<span class="rarr"><i class="bg"></i><i class="iconfont">&#xe63d;</i></span>
			</div>
		</div>

			<div class="infos">


				<!-- 配套设备 -->

				<!--小区信息-->
				<div class="bl area">
					<div class="tit">小区信息</div>
					<p>
						<span><i class="pname">小&nbsp;&nbsp;区&nbsp;&nbsp;名： </i>${house.smallArea.name}</span>
					</p>
					<p>
						<span><i class="pname">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：
						</i>${house.smallArea.addr}</span>
					</p>
					<p>
						<span><i class="pname">建造年代： </i>${house.smallArea.buildYear}年</span> <span class="sec"><i
							class="pname">容积率： </i>${house.smallArea.plotRatio} </span>
					</p>

					<p>
						<span><i class="pname">区域板块： </i>${house.area.name}</span> <span class="sec"><i
							class="pname">绿化率： </i>${house.smallArea.greenRatio}  %</span>
					</p>
				</div>

				<!--周边配套-->
				<div class="bl noborder">
					<p class="tit">周边配套</p>
					<div class="zbh">
						<p>
							<i>中小学：</i> 北京四中璞瑅学校小学部 北京四中璞瑅学校小学部
						</p>
					</div>
					<div class="zbMapAll">
						<div class="sHead">
							<a class="hover">交通</a> <a>教育</a> <a>医疗</a> <a>商业</a> <i></i>
						</div>
						<!-- 地图放大缩小按钮 -->
						<div class="zoomBtn" onselectstart="return false;">
							<a id="bzoom">+</a>
							<p></p>
							<a id="szoom">-</a>
						</div>
						<div id="zbMap" param-data={"lng":"116.449874","lat":"39.869734"}></div>
						<div id="seaResult">
							<dl>
								<!--查询结果列表-->
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>

	<!-- 右边 -->
	<div class="Fr detailInfo">
		 <div id="slideWrap" >
			<div class="titles">
    			<p class="h3" title="时代紫芳 8号">${house.name }</p>
    			<p class="area">${house.area.name }-${house.smallArea.name }</p>
			</div>

			<p class="housePrice">
				<i class="price">${house.rentprice }</i> 元/月
				<i class="Ltime"> 今日发布 </i>
			</p>
			<p class="line"></p>
			<p class="houseType">
				<i class="pname">房&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型： </i>
				${fns:dl(house.housetype,"house_type") }</p>
			<p>
				<i class="pname">面&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;积： </i>
				 ${house.areanum }m²</p>

			<p><i class="pname">楼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;层： </i>高层 </p>
			<p><i class="pname">装&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修： </i>普装</p>
			<p><i class="pname">入住时间： </i><fmt:formatDate value="${house.indate}" pattern="yyyy-MM-dd"/> 后可入住</p>
			
			<p class="houseRentDate  iconBag"></p>
			<p class="btns">
           <button id="seeHouseBtn" style="background-color:#e84a01" maction="cmd" cmd="${stx}/seeHouse/add?houseId=${house.id}" class="sellBtnView1">我要看房</button>
		   <button id="favoriteBtn" maction="cmd" cmd="${stx}/favorite/add?houseId=${house.id}"  class="sellBtnFav" data-id="NENvQCgXOuE" title="收藏"><i class="iconfont ">&#xe616;</i></button>
			</p>
		</div>
	</div>
	<!--同小区房源-->
		<div id="sameAreaHouses" class="Fr">
		<p class="tit">同小区房源<a href="http://www.iwjw.com/chuzu/list/?kw=%E6%97%B6%E4%BB%A3%E7%B4%AB%E8%8A%B3" title="更多" target="_blank">更多&gt;</a></p>
		<ol>
		 <c:forEach items="${ohList }" var="item">
		     <li>
   				<a class="imga hPic" href="${stx}/detail?id=${item.id}" target="_blank"  title="时代紫芳">
   					<img src="${item.mainImage }">
				</a>
   				<div>
   					<p class="p1"><a href="${stx}/detail?id=${item.id}" target="_blank">${fns:dl(item.housetype,"house_type") }</a></p>
   					<p class="p2">${item.areanum }m²<i class="ll">|</i>${item.floor }</p>
   					<p class="p3"><i>${item.rentprice }</i> 元/月</p>
   				</div>
    		</li>
		 </c:forEach>
    			
		</ol>
	</div>
</div>

<script src="${st}/js/house.js"></script>
<script src="${st}/js/HouseDetails.js"></script>

<!-- 尾部 -->
<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>

<script type="text/javascript" src="${st}/js/jsapi.js"></script>
</body>
</html>