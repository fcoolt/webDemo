<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager" %>
<!DOCTYPE html>
<html lang="en" style="height:100%;">
<head>
	<%
		String path = request.getContextPath();
		// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是 http://localhost:8080/MyApp/）:
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
	<base href="<%=basePath%>"/>

	<title>功能管理</title>
	<!--<link rel="stylesheet" href="/static/js/zTree/css/demo.css" type="text/css">-->
	<link rel="stylesheet" href="static/js/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="static/js/zTree/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="static/js/zTree/js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="static/js/zTree/js/jquery.ztree.excheck.js"></script>

	<link rel="stylesheet" href="static/ace/1.4.0/assets/css/bootstrap.css" />
	<link rel="stylesheet" href="static/ace/1.4.0/components/font-awesome/css/font-awesome.css" />
	<link rel="stylesheet" href="static/ace/1.4.0/components/font-awesome/css/font-awesome.css" />

	<!--设置树的样式 -->
	<style>
		ul.ztree {
			margin-top: 10px;border: 1px solid #5090c1;background: #ffffff;  overflow-y:auto;overflow-x:auto; width: 100%;
		}
	</style>
</head>

<body style="height:100%;">

	<a href="javascript:;" onclick="refresh();">
		<i class="ace-icon fa fa-refresh"></i>刷新
	</a>
	<hr style="margin-top: 0; margin-bottom: 8px; border: 0; border-top: 1px solid #eeeeee;"/>

	<SCRIPT type="text/javascript">

		function refresh(){
			location.reload();
			var url = "<%=basePath%>"+"system/permission/resource_list_right.do";
			parent.rightFrame.location.href = url;
		}

		var setting = {
			data: {
				simpleData: {
					enable: true
				}
			},
			callback: {
				onClick: onClick
			}
		};

		function onClick(event, treeId, treeNode, clickFlag) {
			//alert(treeNode.id + ", " + treeNode.name);
			gotoAction(treeNode.id);

		}

		function gotoAction(fid) {
			var url = "<%=basePath%>"+"system/permission/resource_list_right.do?fid=" + fid;
			parent.rightFrame.location.href = url;
		}

		$(document).ready(function(){
			var treeObj  = $.fn.zTree.init($("#treeDemo"), setting, ${resourceListTree});
			//默认展开所有节点
			treeObj.expandAll(true);
		});
	</SCRIPT>


	<ul id="treeDemo" class="ztree"></ul>



</body>
</html>