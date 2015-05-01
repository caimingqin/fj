<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>房东在线委托管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/house/trust/">房东在线委托列表</a></li>
		<shiro:hasPermission name="house:trust:edit"><li><a href="${ctx}/house/trust/form">房东在线委托添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="trust" action="${ctx}/house/trust/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>id：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>出租类型：</label>
				<form:input path="rentWay" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>所在城市：</label>
				<form:input path="areaName" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>小区名称：</label>
				<form:input path="samllAreaName" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>楼栋号/单元号：</label>
				<form:input path="building" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>室号：</label>
				<form:input path="room" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>房东名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>地址：</label>
				<form:input path="addr" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>id</th>
				<th>所在城市</th>
				<th>小区名称</th>
				<th>楼栋号/单元号</th>
				<th>室号</th>
				<th>面积</th>
				<th>房东名称</th>
				<th>性别</th>
				<th>手机号</th>
				<th>地址</th>
				<th>remarks</th>
				<shiro:hasPermission name="house:trust:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="trust">
			<tr>
				<td><a href="${ctx}/house/trust/form?id=${trust.id}">
					${trust.id}
				</a></td>
				<td>
					${trust.areaName}
				</td>
				<td>
					${trust.samllAreaName}
				</td>
				<td>
					${trust.building}
				</td>
				<td>
					${trust.room}
				</td>
				<td>
					${trust.areanum}
				</td>
				<td>
					${trust.name}
				</td>
				<td>
					${trust.gender}
				</td>
				<td>
					${trust.mobile}
				</td>
				<td>
					${trust.addr}
				</td>
				<td>
					${trust.remarks}
				</td>
				<shiro:hasPermission name="house:trust:edit"><td>
    				<a href="${ctx}/house/trust/form?id=${trust.id}">修改</a>
					<a href="${ctx}/house/trust/delete?id=${trust.id}" onclick="return confirmx('确认要删除该房东在线委托吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>