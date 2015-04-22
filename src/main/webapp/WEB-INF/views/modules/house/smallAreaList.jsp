<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>小区管理</title>
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
		<li class="active"><a href="${ctx}/house/smallArea/">小区列表</a></li>
		<shiro:hasPermission name="house:smallArea:edit"><li><a href="${ctx}/house/smallArea/form">小区添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="smallArea" action="${ctx}/house/smallArea/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>区域选择：</label>
				<sys:treeselect id="area" name="area.id" value="${smallArea.area.id}" labelName="area.name" labelValue="${smallArea.area.name}"
					title="区域" url="/sys/area/treeData" cssClass="input-small" allowClear="true" notAllowSelectParent="false"/>
			</li>
			<li><label>小区名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li><label>物业费：</label>
				<form:input path="fee" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>建造年代：</label>
				<form:input path="buildYear" htmlEscape="false" maxlength="10" class="input-medium"/>
			</li>
			<li><label>容积率：</label>
				<form:input path="plotRatio" htmlEscape="false" class="input-medium"/>
			</li>
			<li><label>绿化率：</label>
				<form:input path="greenRatio" htmlEscape="false" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>小区名称</th>
				<th>物业费</th>
				<th>建造年代</th>
				<th>容积率</th>
				<th>绿化率</th>
				<shiro:hasPermission name="house:smallArea:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="smallArea">
			<tr>
				<td><a href="${ctx}/house/smallArea/form?id=${smallArea.id}">
					${smallArea.name}
				</a></td>
				<td>
					${smallArea.fee}
				</td>
				<td>
					${smallArea.buildYear}
				</td>
				<td>
					${smallArea.plotRatio}
				</td>
				<td>
					${smallArea.greenRatio}
				</td>
				<shiro:hasPermission name="house:smallArea:edit"><td>
    				<a href="${ctx}/house/smallArea/form?id=${smallArea.id}">修改</a>
					<a href="${ctx}/house/smallArea/delete?id=${smallArea.id}" onclick="return confirmx('确认要删除该小区吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>