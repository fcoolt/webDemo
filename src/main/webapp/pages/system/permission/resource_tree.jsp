<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%
		String path = request.getContextPath();
		// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是 http://localhost:8080/MyApp/）:
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	%>
	<base href="<%=basePath%>"/>

	<link rel="stylesheet" href="static/js/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<script type="text/javascript" src="static/js/zTree/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="static/js/zTree/js/jquery.ztree.core.js"></script>
	<script type="text/javascript" src="static/js/zTree/js/jquery.ztree.excheck.js"></script>

	<link rel="stylesheet" href="static/ace/1.4.0/assets/css/bootstrap.css" />
	<link rel="stylesheet" href="static/ace/1.4.0/components/font-awesome/css/font-awesome.css" />
	<link rel="stylesheet" href="static/ace/1.4.0/components/font-awesome/css/font-awesome.css" />

	<!--设置树的样式 -->
	<style>
		ul.ztree {margin-top: 10px;border: 1px solid #5090c1;background: #ffffff;width:200px;height:310px;overflow-y:auto;overflow-x:auto;}
	</style>

</head>

<body>


<SCRIPT type="text/javascript">

    //保存树变量
    var treeObj;

    var setting = {
        check: {
            enable: true,
            chkboxType: {"Y":"ps", "N":"ps"}
        },
        view: {
            dblClickExpand: false
        },
        data: {
            key: {
                //将treeNode的ItemName属性当做节点名称
                name: "name"
            },
            simpleData: {
                //是否使用简单数据模式
                enable: true,
                //当前节点id属性
                idKey: "id",
                //当前节点的父节点id属性
                pIdKey: "pId",
                //用于修正根节点父节点数据，即pIdKey指定的属性值
                rootPId: 0
            }
        },
        callback: {
            beforeClick: beforeClick,
            onCheck: onCheck
        }
    };


    function beforeClick(treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo");
        zTree.checkNode(treeNode, !treeNode.checked, null, true);
        return false;
    }

    function onCheck(e, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
            nodes = zTree.getCheckedNodes(true),
            v = "";
        	ids = "";
        for (var i=0, l=nodes.length; i<l; i++) {
            v += nodes[i].name + ",";
            ids += nodes[i].id + ",";
        }
        if (v.length > 0 ) v = v.substring(0, v.length-1);
        if (ids.length > 0 ) ids = ids.substring(0, ids.length-1);

        parent.window.document.getElementById("ResourceSel").value= v;
        parent.window.document.getElementById("ResourceSelValue").value= ids;
    }


    //设置check状态
    function setChecked() {
        treeObj.checkAllNodes(false);
        var ids = parent.window.document.getElementById("ResourceSelValue").value.split(",");
        for(var i=0;i <ids.length;i++){
            var node = treeObj.getNodeByParam("id",ids[i]);
            if(node != null)
            {
                node.checked = true;
                treeObj.updateNode(node);
            }
        }
    }

    $(document).ready(function(){
        treeObj  = $.fn.zTree.init($("#treeDemo"), setting, ${resourceTree});

        //设置父窗口尺寸
        parent.window.document.getElementById("resourceFrame").height = 320;
        parent.window.document.getElementById("resourceFrame").width = 200;

        //默认展开所有节点
        treeObj.expandAll(true);
    });
</SCRIPT>

	<ul id="treeDemo" class="ztree"></ul>

</body>
</html>