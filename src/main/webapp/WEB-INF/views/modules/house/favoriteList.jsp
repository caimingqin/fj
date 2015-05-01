<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>收藏管理</title>
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
		<li class="active"><a href="${ctx}/house/favorite/">收藏列表</a></li>
		<shiro:hasPermission name="house:favorite:edit"><li><a href="${ctx}/house/favorite/form">收藏添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="favorite" action="${ctx}/house/favorite/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>用户编号：</label>
				<sys:treeselect id="user" name="user.id" value="${favorite.user.id}" labelName="user.name" labelValue="${favorite.user.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="false"/>
			</li>
			<li><label>房源编号：</label>
				<form:input path="house.id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>类型：</label>
				<form:select path="type" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('shop_favorite_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>id：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>用户编号</th>
				<th>房源编号</th>
				<th>类型</th>
				<th>备注</th>
				<th>id</th>
				<shiro:hasPermission name="house:favorite:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="favorite">
			<tr>
				<td><a href="${ctx}/house/favorite/form?id=${favorite.id}">
					${favorite.user.name}
				</a></td>
				<td>
					${favorite.house.id}
				</td>
				<td>
					${fns:getDictLabel(favorite.type, 'shop_favorite_type', '')}
				</td>
				<td>
					${favorite.remarks}
				</td>
				<td>
					${favorite.id}
				</td>
				<shiro:hasPermission name="house:favorite:edit"><td>
    				<a href="${ctx}/house/favorite/form?id=${favorite.id}">修改</a>
					<a href="${ctx}/house/favorite/delete?id=${favorite.id}" onclick="return confirmx('确认要删除该收藏吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>