1.viewForm.xml
设置提交表单相关控件，自定义控件配置与生成
<#elseif c.showType == "userselect">
<sys:treeselect id="${c.simpleJavaField}" name="${c.javaFieldId}" value="${"$"}{${className}.${c.javaFieldId}}" labelName="${c.javaFieldName}" labelValue="${"$"}{${className}.${c.javaFieldName}}"
					title="用户" url="/sys/office/treeData?type=3" cssClass="<#if c.isNull != "1">required</#if>" allowClear="true" notAllowSelectParent="true"/>
config.xml
<!-- 字段显示类型 -->
<showType>
	<dict value="input" label="单行文本"/>
	<dict value="textarea" label="多行文本"/>
	<dict value="select" label="下拉选项"/>
	<dict value="radiobox" label="单选按钮"/>
	<dict value="checkbox" label="复选框"/>
	<dict value="dateselect" label="日期选择"/>
	<dict value="userselect" label="人员选择"/>
	<dict value="officeselect" label="部门选择"/>
	<dict value="areaselect" label="区域选择"/>
	<dict value="treeselect" label="树选择控件"/>
	<dict value="fileselect" label="文件上传选择"/>
</showType>
