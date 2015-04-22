<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>小区管理</title>
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
		<li><a href="${ctx}/house/smallArea/">小区列表</a></li>
		<li class="active"><a href="${ctx}/house/smallArea/form?id=${smallArea.id}">小区<shiro:hasPermission name="house:smallArea:edit">${not empty smallArea.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="house:smallArea:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="smallArea" action="${ctx}/house/smallArea/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">区域选择：</label>
			<div class="controls">
				<sys:treeselect id="area" name="area.id" value="${smallArea.area.id}" labelName="area.name" labelValue="${smallArea.area.name}"
					title="区域" url="/sys/area/treeData" cssClass="" allowClear="true" notAllowSelectParent="false"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">小区名称：</label>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">小区编码：</label>
			<div class="controls">
				<form:input path="code"  readonly="true" htmlEscape="false" maxlength="100" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">经纬度：</label>
			<div class="controls">
			<!--labelValue与value,labelName与name值引用同一个-->
				<sys:mapselect id="geo" name="geo" value="${smallArea.geo}" labelName="geo" labelValue="${smallArea.geo}"
					title="地图" cssClass="" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">附近地铁：</label>
			<div class="controls">
				<form:checkboxes path="subwayId" items="${fns:getDictList('--')}" itemLabel="label" itemValue="value" htmlEscape="false" class=""/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">物业费：</label>
			<div class="controls">
				<form:input path="fee" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">建造年代：</label>
			<div class="controls">
				<form:input path="buildYear" htmlEscape="false" maxlength="10" class="input-xlarge  digits"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">容积率：</label>
			<div class="controls">
				<form:input path="plotRatio" htmlEscape="false" class="input-xlarge  number"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">绿化率：</label>
			<div class="controls">
				<form:input path="greenRatio" htmlEscape="false" class="input-xlarge  number"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="2000" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">排序：</label>
			<div class="controls">
				<form:input path="sort" htmlEscape="false" maxlength="10" class="input-xlarge  digits"/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="house:smallArea:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>