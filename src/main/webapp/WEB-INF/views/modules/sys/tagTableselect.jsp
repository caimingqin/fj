<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>数据选择</title>
	<meta name="decorator" content="blank"/>
	<script type="text/javascript">
		var lastValue;
		
		$(document).ready(function(){
		})
		//搜索
		function search() {
			// 取得输入的关键字的值
			var value = $.trim($("#key").val());
			// 如果和上次一次，就退出不查了。
			if (lastValue === value) {
				return;
			}
			// 保存最后一次
			lastValue = value;
			// 如果要查空字串，就退出不查了。
			if (value == "") {
				return;
			}
			//ajax 获取数据列表
			var data = {};
			data.name=value;
			data.entity="${entity}";
			var url="${url}";
			post(url, data, function(rep) {
				console.log(rep);
				$("#contentTableBody").html("");
				$.each(rep,function(){
				   // var tr="<tr><td>"+this.id+"</td><td>"+this.name+"</td></tr>";
				    var tr="<tr><td> <a style='cursor:pointer'  ondblclick='dbclickEvt(this)' sname='"+this.name +"' sid='"+this.id+"'>"+this.name+"</a></td></tr>";
					$("#contentTableBody").append(tr);
				})
			});
		}
		
		function dbclickEvt(mthis){
			$("#sid").val($(mthis).attr("sid"));
			$("#sname").val($(mthis).attr("sname"));
			console.log($("#sid").val());
			console.log($("#sname").val());
			top.$.jBox.getBox().find("button[value='ok']").trigger("click");
		}
		
		function post(url, data, callback) {
			//console.log ($("#inputForm").serialize());
			$.ajax({
				url : url,
				type : "POST",
				data : data,
				success : function(rep) {
					callback(rep);
				},
				error : function(data) {
					top.$.jBox.tip("网络异常");
				}
			});
		}
		
	</script>
</head>
<body>
   <input id="sid" type="hidden" />
   <input id="sname" type="hidden"/>
	<div id="search" class="form-search" style="padding:4px;">
		<label for="key" class="control-label" style="padding:5px 5px 3px 0;">关键字：</label>
		<input type="text" class="empty" id="key" name="key" maxlength="50" style="width:110px;">
		<button class="btn" id="btn" onclick="search()">搜索</button>
	</div>
	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>名称</th>
			</tr>
		</thead>
		<tbody id="contentTableBody" >
		</tbody>
	</table>
</body>