<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		*{margin:0px}
		.tdtitle{width:50px;text-align:right}
	</style>
	<link rel="stylesheet" type="text/css" href="../jslib/jquery-easyui-1.5.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../jslib/jquery-easyui-1.5.1/themes/icon.css">
    <script type="text/javascript" src="../jslib/jquery-easyui-1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="../jslib/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
</head>
<body>
	<div style="width:100%;height:100%;marigin:10px;">
			
	</div>
	<table id="dg" title="指令列表" style="width:100%;height:600px"
            toolbar="#toolbar" pagination="true" idField="id"
            rownumbers="true" fitColumns="true" singleSelect="true" url="/note/instructions/queryList">
        <thead>
            <tr>
                <th field="id" width="50" >主键</th>
                <th field="instructions" width="50" >指令</th>
                <th field="description" width="50" >描述</th>
                <th field="createTime" width="50" >创建时间</th>
                <th field="creator" width="50" >创建人</th>
                <th field="isDelete" width="50" >删除标志</th>
            </tr>
        </thead>
    </table>
	<div id="toolbar">
		<fieldset>
			<legend>查询条件</legend>
		<form id="searchForm">
				<table style="margin:5px;">
					<tr>
						<td class="tdtitle">指令:</td>
						<td><input class="easyui-textbox" name="instructions" style="width:100%" ></td>
						<td class="tdtitle">创建人:</td>
						<td><input class="easyui-textbox" name="creator" style="width:100%" ></td>
					</tr>
				</table>
		</form>
		</fieldset>
	    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="instructionsListObj.add()">新增</a>
	    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="instructionsListObj.edit()">编辑</a>
	    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="instructionsListObj.remove()">删除</a>
	    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="instructionsListObj.search()">查询</a>
	</div>
<script type="text/javascript">
	
$.serializeObject = function(form) {
	var o = {};
	$.each(form.serializeArray(), function(index) {
		if (o[this['name']]) {
			o[this['name']] = o[this['name']] + "," + this['value'];
		} else {
			o[this['name']] = this['value'];
		}
	});
	return o;
};
	
	var instructionsListObj = {
			
		add : function() {
			alert("新增指令");
		},
		edit : function() {
			alert("编辑指令");
		},
		remove : function() {
			alert("删除指令");
		},
		search : function(){
			$('#dg').datagrid('load', $.serializeObject($('#searchForm')));
		}
	}

	$(function() {
		$('#dg').datagrid();
	})
</script>
</body>
</html>