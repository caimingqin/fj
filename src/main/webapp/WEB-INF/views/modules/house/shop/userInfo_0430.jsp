<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>用户信息-房界</title>
<meta name="keywords" content="房界">
<meta name="description" content="房界">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<link rel="stylesheet" href="${st}/css/userinfo.css">
</head>
<body>

<!-- 头部 -->
<jsp:include page="/WEB-INF/views/include/top.jsp"></jsp:include>
<div class="Rw">
	<h3>账号<i class="Sb loginout">退出登录</i></h3>
	<div class="Bs UserInfo">
		<dl>
			<dt>
				<i class="left">姓名</i>
				<span class="info">
                    <i>${user.name }</i>
                    <input type="text" placeholder="请输入姓名" class="Dn" name="realName" value="${user.name }">
				</span>
			</dt>
			<dd>
				<i class="edit"></i>
				<i class="Btn" style="display:none">保存</i>
				<i class="Sb" style="display:none">取消</i>
			</dd>
		</dl>
		<dl>
			<dt>
				<i class="left">性别</i>
				<span class="info">
					<i>
						先生
					</i>
					
					<label style="display:none"><input type="radio" name="gender" value="1"  checked >先生</label>
					<label style="display:none"><input type="radio" name="gender" value="2" >女士</label>
				</span>
			</dt>
			<dd>
				<i class="edit"></i>
				<i class="Btn" style="display:none">保存</i>
				<i class="Sb" style="display:none">取消</i>
			</dd>
		</dl>
		<dl>
			<dt>
				<i class="left">手机号码</i>
				<i>18577601805</i>
			</dt>
		</dl>
	</div>
</div>
<script src="${st}/js/userInfo.js"></script>

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