<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>在线委托出租-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/Service.css">
</head>
<body style="background:#FFF;">

<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<form class="Rw Service" action="/chuzu/proprietor/addDelegation" method="post">
	<h3 class="Tc">在线委托出租</h3>
	<div class="Bs" >
		<dl>
			<dt>
				<i class="Ib">出租类型</i>
				<label>
				<%-- <c:forEach items="${fns:gdl('rentWay')}" var="item"></c:forEach> --%>
				    <input type="radio" name="rentWay" value="10" checked>整租</label>
				
				
				<!-- <span class="Tips">
					<i class="Tc">?</i>
					<span class="Dn">
						<b></b>
						<i>目前我们只接受整租的房源</i>
					</span>
				</span> -->
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl>
			<dt>
				<i class="Ib">所在城市</i>
				<label tips="成单后收取房东佣金35%"><input type="radio" name="areaName" value="厦门"  checked >厦门</label>
				<label><input type="radio" name="areaName" value="福州" >福州</label>
				<span class="Tips"> 成单后收取房东佣金35% </span>
				<!-- <span class="Tips">
					<i class="Tc">?</i>
					<span class="Dn">
						<b></b>
						<i>目前我们只开放上海北京,其他城市敬请期待</i>
					</span>
				</span> -->
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl class="ver">
			<dt>
				<i class="Ib">房源名称</i>
				<input type="text" placeholder="小区名称" name="samllAreaName" style="width:200px" maxlength="20" rule="maxlength">
				<input type="text" placeholder="楼栋号/单元号" name="building"  maxlength="20" rule="maxlength">
				<input type="text" placeholder="室号" name="room" maxlength="20" rule="maxlength">
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl class="ver">
			<dt>
				<i class="Ib">房型</i>
				<select  name="bedroom">
					<option value="">- 室</option>
					<option value="1">1室</option>
					<option value="2">2室</option>
					<option value="3">3室</option>
					<option value="4">4室</option>
					<option value="5">5室</option>
					<option value="6">6室</option>
				</select>
				<select name="livingRoom">
					<option value="">- 厅</option>
					<option value="0">0厅</option>
					<option value="1">1厅</option>
					<option value="2">2厅</option>
					<option value="3">3厅</option>
					<option value="4">4厅</option>
					<option value="5">5厅</option>
					<option value="6">6厅</option>
				</select>
				<select name="wc">
					<option value="">- 卫</option>
					<option value="1">1卫</option>
					<option value="2">2卫</option>
					<option value="3">3卫</option>
					<option value="4">4卫</option>
					<option value="5">5卫</option>
					<option value="6">6卫</option>
				</select>
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl class="ver">
			<dt>
				<i class="Ib">面积</i>
				<input type="text" placeholder="面积" name="areanum" > 平米
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl class="ver">
			<dt>
				<i class="Ib">租金</i>
				<input type="text" placeholder="租金"  name="rentprice" > 元/月
			</dt>
			<dd class="Rr"></dd>
		</dl>
		
		<dl class="ver">
			<dt>
				<i class="Ib">地址</i>
				<input type="text" placeholder="地址"  name="addr" style="width: 400px;">
			</dt>
			<dd class="Rr"></dd>
		</dl>
		
		<dl class="ver">
			<dt>
				<i class="Ib">您的姓名</i>
				<input type="text" placeholder="姓名" name="name">
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl class="ver">
			<dt>
				<i class="Ib">性别</i>
				<label><input type="radio" name="gender" value="1">先生</label>
				<label><input type="radio" name="gender" value="2">女士</label>
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl class="ver">
			<dt>
				<i class="Ib">手机号码</i>
				<input type="tel" name="mobile" maxlength="11" placeholder="手机号码" >
				<button type="button" >验证手机号码</button>
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl class="ver">
			<dt>
				<i class="Ib">验证码</i>
				<input type="text" placeholder="验证码" name="code" maxlength="6" rule="reg" reg="^\d{6}$">
			</dt>
			<dd class="Rr"></dd>
		</dl>
	</div>
	<div class="Tr">
		<label><input type="checkbox" checked>同意</label><a href="${stx }/page/agentProtocol" target="_blank">爱屋吉屋出租委托协议</a>
		<button type="submit">立刻提交</button>
	</div>
</form>
<script src="${st}/js/Service.js"></script>

<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>
</body>
</html>
