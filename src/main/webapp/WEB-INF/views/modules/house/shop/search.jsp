<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>租房-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/HouseList.css">

</head>
<body>

<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<div class="Rw">
	<div class="searchBar">
	<form action="http://www.iwjw.com/chuzu/beijing/" method="get" id="rentSearch" provinceId="12438" provincePy="beijing" provinceName="北京" ht="1" class="searchForm">
		<div id="listNav">
			<input type="hidden" name="grade" value="0">
			<input type="text" name="kw" maxlength="50" autocomplete="off" placeholder="请输入小区名称或地址" value="">
			<button type="submit" class="iconfont">&#xe633;</button>
			<div id="Line">
				<input type="hidden" name="subLineId" value="0">
				<h4><i class="iconfont">&#xe62d;</i>地铁</h4>
			</div>
			<div id="Area">
				<input type="hidden" name="areaId" value="0">
				<h4><i class="iconfont">&#xe605;</i>区域</h4>
			</div>
			<a href="${stx}/map" class="Sb" target="_blank"><i class="iconfont">&#xe62c;</i>地图找房</a>
		</div>
		<ul id="listFilter">
			<input type="hidden" name="grade" value="0">
			<input type="hidden" name="Price_Id" value="-1">
			<input type="hidden" name="roomNums" value="-1">
			<li id="pSel"><i class="Ib">租金：</i><a txt="-1" class="act">不限</a>
				<a txt="1">2000元以下</a><a txt="2">2000-4000元</a><a txt="3">4000-6000元</a>
				<a txt="4">6000-8000元</a><a txt="5">8000-10000元</a><a txt="6">10000-15000元</a>
				<a txt="7">15000元以上</a>
				<input type="text" maxlength="5" name="startPrice" txt="">
				 -
				<input type="text" maxlength="5" name="endPrice" txt=""> 元 <button type="submit">确定</button></li>
			<!-- <li id="rnSel"><i class="Ib">卧室：</i><a txt="-1" class="act">不限</a>
				<a txt="1">一室</a><a txt="2">二室</a><a txt="3">三室</a>
				<a txt="4">四室以上</a></li> -->
				<li id="rnSel"><i class="Ib">卧室：</i><a txt="-1" class="act">不限</a>
				<a txt="1">一室</a><a txt="2">二室</a><a txt="3">三室</a>
				<a txt="4">四室</a><a txt="5">四室以上</a></li>
			</ul>
	</form>
	</div>
</div>

<div class="Rw">
	<div class="List RL" searchName="">
		<dl id="Order">
			<dt>找到 999+ 套符合要求的北京租房</dt>
			<dd>
				<i o="0" class="act">默认</i>
				<i o="1">最新</i>
				<i o="3">价格<b class="iconfont">&#xe63f;</b></i>
			</dd>
		</dl>
		<ol>
		
		   <c:forEach items="${page.list}" var="item">
		   <li>
				<a href="${stx }/detail?id=${item.id}" class="house hPic" target="_blank">
					<img src="http://house-images-water.oss.aliyuncs.com/438294379e8f47e5aea28c41431c85fb.t" class="Ii">
					<i class="dj"><img src="${st}/images/sole.png"></i>			</a>
				<div class="Fl">
					<h4 class="Fl info1">
						<b>
							<a href="${stx }/detail?id=${item.id}" target="_blank" title="大西洋新城 ">
								<i class="highLight">${item.name}</i>
							</a>
						</b>
					</h4>
					<h5 class="Fl info2">
    					<i class="i1">${fns:dl(item.housetype,"house_type") }</i> |
    					<i class="i2">${item.areanum } m²</i> |
    					<i class="i3">${item.floor }</i> |
    					<i class="Hp"><b>${item.rentprice }</b> <span>元/月</span></i></h5>
					<p class="Cb highLight">
						<i class="iconfont">&#xe60b;</i>朝阳 - 望京 广顺北大街33号院
					</p>
					<p class="Cb highLight"><i class="iconfont">&#xe62d;</i>15号线 </p>
					<p class="Cb Fe">1天前发布</p>
				</div>
			</li>
		   </c:forEach>
			
		</ol>
		<div class="Tr">
		<%-- <p class="Page">
		${page }
		</p> --%>
		
			<p class="Page">
				<i class="act">1</i>
    		    <a href="http://www.iwjw.com/chuzu/beijing/p2/">2</a>
    		    <a href="http://www.iwjw.com/chuzu/beijing/p3/">3</a>
    			<i class="out">...</i>
    			<a href="http://www.iwjw.com/chuzu/beijing/p100/">100</a>    		
    			<a href="http://www.iwjw.com/chuzu/beijing/p2/" class="next iconfont" title="下一页">&#xe63d;</a>
			</p>
		</div>
		<!-- 推荐房源 -->
		<p class="Cb"></p>
	</div> <!-- Rw end -->
</div>
<script src="${st}/js/rentSearch.js"></script>

<!-- 尾部 -->
<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>

</body>
</html>