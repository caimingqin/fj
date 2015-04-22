<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>房源管理管理</title>
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
		
		function  openMap(){
			var href="http://fj.com/baiduMap/getPoint.html";
			top.$.jBox.open('iframe:'+href,'获取经纬度',$(top.document).width()-220,$(top.document).height()-180,{
				buttons:{},
				draggable: false,
				showScrolling: false,
				loaded:function(h){
					 $(".jbox-content", top.document).css("overflow-y","hidden");
					 //$(".nav,.form-actions,[class=btn]", h.find("iframe").contents()).hide();
					//$("body", h.find("iframe").contents()).css("margin","10px"); 
				}
			});
			
		}
		
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/house/house/">房源管理列表</a></li>
		<li class="active"><a href="${ctx}/house/house/form?id=${house.id}">房源管理<shiro:hasPermission name="house:house:edit">${not empty house.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="house:house:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="house" action="${ctx}/house/house/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">房东选择：</label>
			<div class="controls">
				<sys:treeselect id="proprietor" name="proprietor.id" value="${house.proprietor.id}" labelName="proprietor.name" labelValue="${house.proprietor.name}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">房源名称：</label>
			<div class="controls">
				<form:input path="name" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">租金：</label>
			<div class="controls">
				<form:input path="rentprice" htmlEscape="false" maxlength="18" class="input-xlarge  digits"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">类型：</label>
			<div class="controls">
				<form:input path="housetype" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">楼层：</label>
			<div class="controls">
				<form:input path="floor" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">面积：</label>
			<div class="controls">
				<form:input path="areanum" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">区域选择：</label>
			<div class="controls">
				<sys:treeselect id="area" name="area.id" value="${house.area.id}" labelName="area.name" labelValue="${house.area.name}"
					title="区域" url="/sys/area/treeData" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">经纬度：</label>
			<div class="controls">
				<form:input path="geo" htmlEscape="false" maxlength="64" class="input-xlarge "/>
				<a onclick="openMap()">查询经纬度</a>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">可入住时间：</label>
			<div class="controls">
				<input name="indate" type="text" readonly="true" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${house.indate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">租赁方式：</label>
			<div class="controls">
				<form:input path="rentway" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">租金押付：</label>
			<div class="controls">
				<form:input path="cashtype" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">装修情况：</label>
			<div class="controls">
				<form:input path="decoratetype" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">房源状态：</label>
			<div class="controls">
				<form:input path="status" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">地址：</label>
			<div class="controls">
				<form:input path="addr" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">详情：</label>
			<div class="controls">
				<form:input path="description" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="64" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">createby：</label>
			<div class="controls">
				<form:input path="createby" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">createdate：</label>
			<div class="controls">
				<input name="createdate" type="text" readonly="true" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${house.createdate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">updateby：</label>
			<div class="controls">
				<form:input path="updateby" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">updatedate：</label>
			<div class="controls">
				<input name="updatedate" type="text" readonly="true" maxlength="20" class="input-medium Wdate "
					value="<fmt:formatDate value="${house.updatedate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">delflag：</label>
			<div class="controls">
				<form:input path="delflag" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">小区选择：</label>
			<div class="controls">
				<sys:tableselect id="smallArea" name="smallArea.id" value="${house.smallArea.id}" labelName="smallArea.name" labelValue="${house.smallArea.name}"
					title="小区" url="${ctx}/tag/tableData" entity="SmallArea" cssClass="" allowClear="true" notAllowSelectParent="true"/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="house:house:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>