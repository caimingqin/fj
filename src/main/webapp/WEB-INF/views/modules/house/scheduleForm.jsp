<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>看房日程管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/house/schedule/">看房日程列表</a></li>
		<li class="active"><a href="${ctx}/house/schedule/form?id=${schedule.id}">看房日程<shiro:hasPermission name="house:schedule:edit">${not empty schedule.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="house:schedule:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="schedule" action="${ctx}/house/schedule/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">名称：</label>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">状态：</label>
			<div class="controls">
				<form:select path="status" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('shop_schedule_status')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">看房时间：</label>
			<div class="controls">
				<input name="lookDate" type="text" readonly="true" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${schedule.lookDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">看房时间(备选)：</label>
			<div class="controls">
				<input name="optionDate" type="text" readonly="true" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${schedule.optionDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">碰头地点：</label>
			<div class="controls">
				<form:input path="meetaddr" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">受理经纪人：</label>
			<div class="controls">
				<sys:treeselect id="agent" name="agent.id" value="${schedule.agent.id}" labelName="agent.name" labelValue="${schedule.agent.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="" allowClear="true" notAllowSelectParent="false"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">房客姓名：</label>
			<div class="controls">
				<form:input path="roomerName" readonly="true"  htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">房客电话：</label>
			<div class="controls">
				<form:input path="roomerPhone" readonly="true"  htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">取消原因：</label>
			<div class="controls">
				<form:input path="reason" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:input path="remarks" htmlEscape="false" maxlength="255" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
		<label class="control-label">看房明细：</label>
		<div class="controls">
			<table id="contentTable" class="table table-striped table-bordered table-condensed">
				<thead>
					<tr>
						<th>编号</th>
						<th>房源名称</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${scheduleItemList}" var="scheduleItem">
					<tr>
						<td>	${scheduleItem.id}</td>
						<td>
						    ${scheduleItem.house.name}
						</td>
					<td>
						<select style="width: 120px;">
							<c:forEach items="${fns:getDictList('shop_scheduleitem_status')}" var="dict">
								<option value="${dict.value}" ${dict.value==scheduleItem.status?'selected':''} >${dict.label}</option>
							</c:forEach>
						</select>
					</td>
					<td>
					<c:if test="${scheduleItem.status==20}">
					 <a href="${ctx}/house/schedule/form?id=">生成订单</a>
					</c:if>
				   </td>	
					</tr>
				</c:forEach>
				</tbody>
			</table>	
			</div>				
         </div>
		<div class="form-actions">
			<shiro:hasPermission name="house:schedule:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>