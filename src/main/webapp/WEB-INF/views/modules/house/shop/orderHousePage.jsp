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
    <form action="submitOrderHouse" method="post" class="Rw orderHouse">
    	<div class="Bs">
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
    				<input type="text" class="DateTime" name="lookDate" placeholder="指定看房时间(主选)">
    			</dt>
    			<dd class="Rr"></dd>
    		</dl>
			<dl class="seeTime">
    			<dt>
    				<i class="Ib" style="visibility: hidden;">看房时间</i>
    				<input type="text" class="DateTime" name="optionDate" placeholder="指定看房时间(备选)">
    			</dt>
    			<dd class="Rr"></dd>
    		</dl>
    		<p class="sbt">
    			<!--<span class="Sb">+ 添加看房时间</span><br>-->
    			<label><input type='checkbox' checked>同意</label><a href="${stx}/page/agentProtocol" target="_blank">《现场看房及中介服务协议》</a>
    		</p>
    	</div>
    	<!--<p class="seeOrderHouse Tr"><button type="submit">提交</button></p>-->
    	
    <!-- 约看列表 -->
	<div class="Rw orderHouseList">
    	<h3>本次约看的${fn:length(houses) }套房源</h3>
    	<table class="HouseTab">
            <c:forEach items="${houses}" var="house">
            <input type="hidden" name="houseIds" value="${house.id}"/>
            	<tr>	
    			<td class="Tl" style="width:300px">
    				<a href="${stx}/detail?id=${house.id}" target="_blank"><b>${house.name}</b></a>
    			</td>
    			<td>${fns:dl(house.housetype,"house_type") }</td>
    			<td>${house.areanum} m²</td>
    			<td>${house.floor}</td>
    			<td><b>${house.rentprice} 元/月</b></td>
    		</tr>
            </c:forEach>    	
    	</table>
    </div>
       </form>
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
</body>
</html>