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
	<form action="${stx }/seeHouse/orderHouse" method="post">
	<table class="HouseTab">
		<tr>
			<th class="Tc" style="width:30px"><label><input type="checkbox" class="chkAll"></label></th>
			<th class="Tl">全选</th>
			<th class="Tr" colspan="5"><button id="delNoRent" class="Sb" disabled>清除失效房源</button></th>
		</tr>
		
		<c:forEach items="${list }" var="item"> 
		 
		<tr ht="1">	
			<td class="Tc"><label><input type="checkbox"  name="houseIds" value="${item.house.id}" aa="oTL87cx_jeQ_1"  ht="1" ></label></td>
			<td class="Tl tdF">
				<a href="${stx}/detail?id=${item.house.id}" target="_blank"  class="Fl hPic" >
                	<img src="${item.house.mainImage }">
				</a>
				<div class="Fl inf">
					<h4>
						<b>
							<a href="${stx}/detail?id=${item.house.id}" target="_blank" title="${item.house.name }">
								<i>${item.house.name }</i> <!--<i>31号</i>-->
							</a>
    					</b>
					</h4>
					<p class="Cb">
						<i class="iconfont">&#xe60b;</i>${item.house.area.name }-${item.house.smallArea.name }
					</p>
					<p class="Cb"></p>
					<p class="Cb Few"> 今日发布 </p>
    			</div>
			</td>
			<td>${fns:dl(item.house.housetype,"house_type") }<i class="ll"></i></td>
			<td>${item.house.areanum } m²<i class="ll"></i></td>
			<td>${item.house.floor}<i class="ll"></i></td>
			<td>
				<p class="Tr"><b><i class="housePrice">${item.house.rentprice }</i>  元/月</b></p>
			</td>
			<td class="Tl tdL">
				<div class="tipDiv">
					<p class="collection">
						<i class="iconfont iconGray" maction="cmd" cmd="${stx}/favorite/add?houseId=${item.house.id}" >&#xe616;</i> 收藏
					</p>
				</div>
				<p class="delete" style="width:75px" ><i class="iconfont iconGray">&#xe618;</i> 删除</p>
			</td>
		</tr>
		</c:forEach>
		
		
		<!-- 失效房源 -->
	</table>
</div>
<div id="Hs">
	<div id="HouseEnd">
		<p id="HouseFix" status="">
			<span class="Fr">
				已选中<i id="selectTotal">0</i>套房源
				<button type="submit" disabled>预约看房</button>
			</span>
		</p>
	</div>
</div>
</form>
<script src="${st}/js/house.js"></script>
<script src="${st}/js/seeHouse.js"></script>
<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>
</body>
</html>