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
                    <i>${user.name}</i>
                    <input type="text" placeholder="请输入姓名" class="Dn" name="realName" value="${user.name}">
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
				<i>${user.mobile}</i>
			</dt>
		</dl>
	</div>
</div>
<script src="${st}/js/userInfo.js"></script>

<jsp:include page="/WEB-INF/views/include/bottom.jsp"></jsp:include>

</body>
</html>