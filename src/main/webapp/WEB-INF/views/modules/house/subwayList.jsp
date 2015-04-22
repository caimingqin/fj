<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>地铁管理</title>
	<meta name="decorator" content="default"/>
	<%@include file="/WEB-INF/views/include/treetable.jsp" %>
	<script type="text/javascript">
		$(document).ready(function() {
			var tpl = $("#treeTableTpl").html().replace(/(\/\/\<!\-\-)|(\/\/\-\->)/g,"");
			var data = ${fns:toJson(list)}, ids = [], rootIds = [];
			for (var i=0; i<data.length; i++){
				ids.push(data[i].id);
			}
			ids = ',' + ids.join(',') + ',';
			for (var i=0; i<data.length; i++){
				if (ids.indexOf(','+data[i].parentId+',') == -1){
					if ((','+rootIds.join(',')+',').indexOf(','+data[i].parentId+',') == -1){
						rootIds.push(data[i].parentId);
					}
				}
			}
			for (var i=0; i<rootIds.length; i++){
				addRow("#treeTableList", tpl, data, rootIds[i], true);
			}
			$("#treeTable").treeTable({expandLevel : 5});
		});
		function addRow(list, tpl, data, pid, root){
			for (var i=0; i<data.length; i++){
				var row = data[i];
				if ((${fns:jsGetVal('row.parentId')}) == pid){
					$(list).append(Mustache.render(tpl, {
						dict: {
							type: getDictLabel(${fns:toJson(fns:getDictList('subway_type'))}, row.type),
						blank123:0}, pid: (root?0:pid), row: row
					}));
					addRow(list, tpl, data, row.id);
				}
			}
		}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/house/subway/">地铁列表</a></li>
		<shiro:hasPermission name="house:subway:edit"><li><a href="${ctx}/house/subway/form">地铁添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="subway" action="${ctx}/house/subway/" method="post" class="breadcrumb form-search">
		<ul class="ul-form">
			<li><label>区域选择：</label>
				<sys:treeselect id="area" name="area.id" value="${subway.area.id}" labelName="area.name" labelValue="${subway.area.name}"
					title="区域" url="/sys/area/treeData" cssClass="input-small" allowClear="true" notAllowSelectParent="false"/>
			</li>
			<li><label>地铁名称：</label>
				<form:input path="name" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li><label>类型：</label>
				<form:select path="type" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('subway_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="treeTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>地铁名称</th>
				<th>类型</th>
				<shiro:hasPermission name="house:subway:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody id="treeTableList"></tbody>
	</table>
	<script type="text/template" id="treeTableTpl">
		<tr id="{{row.id}}" pId="{{pid}}">
			<td><a href="${ctx}/house/subway/form?id={{row.id}}">
				{{row.name}}
			</a></td>
			<td>
				{{dict.type}}
			</td>
			<shiro:hasPermission name="house:subway:edit"><td>
   				<a href="${ctx}/house/subway/form?id={{row.id}}">修改</a>
				<a href="${ctx}/house/subway/delete?id={{row.id}}" onclick="return confirmx('确认要删除该地铁及所有子地铁吗？', this.href)">删除</a>
				<a href="${ctx}/house/subway/form?parent.id={{row.id}}">添加下级地铁</a> 
			</td></shiro:hasPermission>
		</tr>
	</script>
</body>
</html>