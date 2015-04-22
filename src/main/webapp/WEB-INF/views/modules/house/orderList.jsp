<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>订单管理</title>
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
		<li class="active"><a href="${ctx}/house/order/">订单列表</a></li>
		<shiro:hasPermission name="house:order:edit"><li><a href="${ctx}/house/order/form">订单添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="order" action="${ctx}/house/order/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>房客姓名：</label>
				<form:input path="roomerName" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>房客电话：</label>
				<form:input path="roomerPhone" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>受理人：</label>
				<sys:treeselect id="agent" name="agent.id" value="${order.agent.id}" labelName="agent.name" labelValue="${order.agent.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="false"/>
			</li>
			<li><label>房源编号：</label>
				<form:input path="house.id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>开始日期：</label>
				<input name="startDate" type="text" readonly="true" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${order.startDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>结束日期：</label>
				<input name="endDate" type="text" readonly="true" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${order.endDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>订单类型：</label>
				<form:select path="type" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('shop_order_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
				<th>房客姓名</th>
				<th>房客电话</th>
				<th>受理人</th>
				<th>房源编号</th>
				<th>开始日期</th>
				<th>结束日期</th>
				<th>订单类型</th>
				<shiro:hasPermission name="house:order:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="order">
			<tr>
				<td><a href="${ctx}/house/order/form?id=${order.id}">
					${order.roomerName}
				</a></td>
				<td>
					${order.roomerPhone}
				</td>
				<td>
					${order.agent.name}
				</td>
				<td>
					${order.house.id}
				</td>
				<td>
					<fmt:formatDate value="${order.startDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${order.endDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${fns:getDictLabel(order.type, 'shop_order_type', '')}
				</td>
				<shiro:hasPermission name="house:order:edit"><td>
    				<a href="${ctx}/house/order/form?id=${order.id}">修改</a>
					<a href="${ctx}/house/order/delete?id=${order.id}" onclick="return confirmx('确认要删除该订单吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>