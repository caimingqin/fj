<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>房源管理</title>
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
		<li class="active"><a href="${ctx}/house/house/">房源列表</a></li>
		<shiro:hasPermission name="house:house:edit"><li><a href="${ctx}/house/house/form">房源添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="house" action="${ctx}/house/house/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>房东选择：</label>
				<sys:treeselect id="proprietor" name="proprietor.id" value="${house.proprietor.id}" labelName="proprietor.name" labelValue="${house.proprietor.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="false"/>
			</li>
			<li><label>房源名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>租金：</label>
				<form:input path="rentprice" htmlEscape="false" maxlength="18" class="input-medium"/>
			</li>
			<li><label>房型：</label>
				<form:select path="housetype" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('house_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>楼层：</label>
				<form:input path="floor" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>面积：</label>
				<form:input path="areanum" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>区域选择：</label>
				<sys:treeselect id="area" name="area.id" value="${house.area.id}" labelName="area.name" labelValue="${house.area.name}"
					title="区域" url="/sys/area/treeData" cssClass="input-small" allowClear="true" notAllowSelectParent="false"/>
			</li>
			<li><label>房源状态：</label>
				<form:select path="status" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('houseStatus')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
				<th>房东选择</th>
				<th>房源名称</th>
				<th>租金</th>
				<th>房型</th>
				<th>楼层</th>
				<th>面积</th>
				<th>区域选择</th>
				<th>租金押付</th>
				<th>装修情况</th>
				<th>房源状态</th>
				<shiro:hasPermission name="house:house:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="house">
			<tr>
				<td>
					${house.proprietor.name}
			</td>
				<td>
				<a href="${ctx}/house/house/form?id=${house.id}">	${house.name}	</a>
				</td>
				<td>
					${house.rentprice}
				</td>
				<td>
					${fns:getDictLabel(house.housetype, 'house_type', '')}
				</td>
				<td>
					${house.floor}
				</td>
				<td>
					${house.areanum}
				</td>
				<td>
					${house.area.name}
				</td>
				<td>
					${fns:getDictLabel(house.cashtype, 'cashType', '')}
				</td>
				<td>
					${fns:getDictLabel(house.decoratetype, 'decorateType', '')}
				</td>
				<td>
					${fns:getDictLabel(house.status, 'houseStatus', '')}
				</td>
				<shiro:hasPermission name="house:house:edit"><td>
    				<a href="${ctx}/house/house/form?id=${house.id}">修改</a>
					<a href="${ctx}/house/house/delete?id=${house.id}" onclick="return confirmx('确认要删除该房源吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>