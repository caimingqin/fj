<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>合同管理</title>
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
		<li class="active"><a href="${ctx}/house/contract/">合同列表</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="contract" action="${ctx}/house/contract/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>编号：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>房客姓名：</label>
				<form:input path="roomerName" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>房客电话：</label>
				<form:input path="roomerPhone" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>受理人：</label>
				<sys:treeselect id="agent" name="agent.id" value="${contract.agent.id}" labelName="agent.name" labelValue="${contract.agent.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="false"/>
			</li>
			<li><label>房源ID：</label>
				<form:input path="house.id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>开始日期：</label>
				<input name="startDate" type="text" readonly="true" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${contract.startDate}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
			</li>
			<li><label>结束日期：</label>
				<input name="endDate" type="text" readonly="true" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${contract.endDate}" pattern="yyyy-MM-dd"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>编号</th>
				<th>房客姓名</th>
				<th>房客电话</th>
				<th>合同价格</th>
				<th>合同总价</th>
				<th>房源押金</th>
				<th>服务费用</th>
				<th>受理人</th>
				<th>房源ID</th>
				<th>合同开始日期</th>
				<th>合同结束日期</th>
				<th>合同类型</th>
				<th>备注</th>
				<shiro:hasPermission name="house:contract:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="contract">
			<tr>
				<td><a href="${ctx}/house/contract/form?id=${contract.id}">
					${contract.id}
				</a></td>
				<td>
					${contract.roomerName}
				</td>
				<td>
					${contract.roomerPhone}
				</td>
				<td>
					${contract.money}
				</td>
				<td>
					${contract.sum}
				</td>
				<td>
					${contract.deposit}
				</td>
				<td>
					${contract.income}
				</td>
				<td>
					${contract.agent.name}
				</td>
				<td>
					${contract.house.id}
				</td>
				<td>
					<fmt:formatDate value="${contract.startDate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<fmt:formatDate value="${contract.endDate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${fns:getDictLabel(contract.type, 'shop_contract_type', '')}
				</td>
				<td>
					${contract.remarks}
				</td>
				<shiro:hasPermission name="house:contract:edit"><td>
    				<a href="${ctx}/house/contract/form?id=${contract.id}">修改</a>
					<a href="${ctx}/house/contract/delete?id=${contract.id}" onclick="return confirmx('确认要删除该合同吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>