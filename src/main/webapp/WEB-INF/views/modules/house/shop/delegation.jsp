<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>在线委托出租-爱屋吉屋</title>
<meta name="keywords" content="爱屋吉屋">
<meta name="description" content="爱屋吉屋">
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
				<label><input type="radio" name="type" value="1" checked>整租</label>
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
				<label tips="成单后收取房东佣金35%"><input type="radio" name="city" value="2"  checked >上海</label>
				<label><input type="radio" name="city" value="12438" >北京</label>
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
				<input type="text" placeholder="小区名称" name="estateName" style="width:200px" maxlength="20" rule="maxlength">
				<input type="text" placeholder="楼栋号/单元号" name="building"  maxlength="20" rule="maxlength">
				<input type="text" placeholder="室号" name="room" maxlength="20" rule="maxlength">
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl class="ver">
			<dt>
				<i class="Ib">房型</i>
				<select  name="bedroomSum">
					<option value="">- 室</option>
					<option value="1">1室</option>
					<option value="2">2室</option>
					<option value="3">3室</option>
					<option value="4">4室</option>
					<option value="5">5室</option>
					<option value="6">6室</option>
				</select>
				<select name="livingRoomSum">
					<option value="">- 厅</option>
					<option value="0">0厅</option>
					<option value="1">1厅</option>
					<option value="2">2厅</option>
					<option value="3">3厅</option>
					<option value="4">4厅</option>
					<option value="5">5厅</option>
					<option value="6">6厅</option>
				</select>
				<select name="wcSum">
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
				<input type="text" placeholder="面积" name="spaceArea" rule="reg" reg="^\d+$|^\d+\.\d{1,2}$"> 平米
			</dt>
			<dd class="Rr"></dd>
		</dl>
		<dl class="ver">
			<dt>
				<i class="Ib">租金</i>
				<input type="text" placeholder="租金"  name="rentPrice" rule="reg,minvalue" minvalue="2500" reg="^\d+$|^\d+\.\d{1,2}$"> 元/月
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
				<input type="tel" name="mobile" maxlength="11" placeholder="手机号码" rule="reg" reg="^1[3|5|7|8]\d{9}$">
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
	<!--	<label><input type="checkbox" checked>同意</label><a href="">爱屋吉屋出租委托协议</a> -->
		<button type="submit">立刻提交</button>
	</div>
</form>
<script src="${st}/js/Service.js"></script>

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
