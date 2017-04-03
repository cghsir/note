<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../jslib/jquery-easyui-1.5.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../jslib/jquery-easyui-1.5.1/themes/icon.css">
    <script type="text/javascript" src="../jslib/jquery-easyui-1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="../jslib/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="../jslib/jquery-easyui-1.5.1/plugins/jquery.datagrid.js"></script>
</head>
<body>
	<table id="dg" title="指令列表" style="width:100%;height:360px"
            toolbar="#toolbar" pagination="true" idField="id"
            rownumbers="true" fitColumns="true" singleSelect="true">
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

<script type="text/javascript">
	$(function(){
		$('#dg').datagrid({
            url: '/note/instructions/queryList'
        });
	})
</script>
</body>
</html>