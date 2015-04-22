<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>看房日程管理</title>
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
		<li class="active"><a href="${ctx}/house/schedule/">看房日程列表</a></li>
		<shiro:hasPermission name="house:schedule:edit"><li><a href="${ctx}/house/schedule/form">看房日程添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="schedule" action="${ctx}/house/schedule/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>编号：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="100" class="input-small"/>
			</li>
			<li><label>状态：</label>
				<form:select path="status" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('shop_schedule_status')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>看房时间：</label>
				<input name="lookDate" type="text" readonly="true" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${schedule.lookDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>碰头地点：</label>
				<form:input path="meetaddr" htmlEscape="false" maxlength="100" class="input-small"/>
			</li>
			<li><label>受理经纪人：</label>
				<sys:treeselect id="agent" name="agent.id" value="${schedule.agent.id}" labelName="agent.name" labelValue="${schedule.agent.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="input-small" allowClear="true" notAllowSelectParent="false"/>
			</li>
			<li><label>房客姓名：</label>
				<form:input path="roomerName" htmlEscape="false" maxlength="64" class="input-small"/>
			</li>
			<li><label>房客电话：</label>
				<form:input path="roomerPhone" htmlEscape="false" maxlength="64" class="input-small"/>
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
				<th>名称</th>
				<th>状态</th>
				<th>看房时间</th>
				<th>碰头地点</th>
				<th>受理经纪人</th>
				<th>房客姓名</th>
				<th>房客电话</th>
				<shiro:hasPermission name="house:schedule:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="schedule">
			<tr>
				<td><a href="${ctx}/house/schedule/form?id=${schedule.id}">
					${schedule.id}
				</a></td>
				<td>
					${schedule.name}
				</td>
				<td>
					${fns:getDictLabel(schedule.status, 'shop_schedule_status', '')}
				</td>
				<td>
					<fmt:formatDate value="${schedule.lookDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${schedule.meetaddr}
				</td>
				<td>
					${schedule.agent.name}
				</td>
				<td>
					${schedule.roomerName}
				</td>
				<td>
					${schedule.roomerPhone}
				</td>
				<shiro:hasPermission name="house:schedule:edit"><td>
    				<a href="${ctx}/house/schedule/form?id=${schedule.id}">修改</a>
					<a href="${ctx}/house/schedule/delete?id=${schedule.id}" onclick="return confirmx('确认要删除该看房日程吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>