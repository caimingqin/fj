<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>看房日程明细管理</title>
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
		<li class="active"><a href="${ctx}/house/scheduleItem/">看房日程明细列表</a></li>
		<shiro:hasPermission name="house:scheduleItem:edit"><li><a href="${ctx}/house/scheduleItem/form">看房日程明细添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="scheduleItem" action="${ctx}/house/scheduleItem/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>id：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>看房日程ID：</label>
				<form:input path="schedule.id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>房源ID：</label>
				<form:input path="house.id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>状态：</label>
				<form:select path="status" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('shop_scheduleitem_status')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
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
				<th>看房日程ID</th>
				<th>房源ID</th>
				<th>状态</th>
				<shiro:hasPermission name="house:scheduleItem:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="scheduleItem">
			<tr>
				<td><a href="${ctx}/house/scheduleItem/form?id=${scheduleItem.id}">
					${scheduleItem.id}
				</a></td>
				<td>
					${scheduleItem.schedule.id}
				</td>
				<td>
					${scheduleItem.house.id}
				</td>
				<td>
					${fns:getDictLabel(scheduleItem.status, 'shop_scheduleitem_status', '')}
				</td>
				<shiro:hasPermission name="house:scheduleItem:edit"><td>
    				<a href="${ctx}/house/scheduleItem/form?id=${scheduleItem.id}">修改</a>
					<a href="${ctx}/house/scheduleItem/delete?id=${scheduleItem.id}" onclick="return confirmx('确认要删除该看房日程明细吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>