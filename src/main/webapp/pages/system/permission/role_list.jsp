<%@ page import="web.demo.entity.RoleEntity" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>角色管理</title>
	<c:import url="/pages/inc/inc_head.jsp" />
</head>

<body class="no-skin">

<c:import url="/pages/inc/inc_navbar.jsp" />

<div class="main-container ace-save-state" id="main-container">
	<c:import url="/pages/inc/inc_sidebar.jsp?menu=2-1-2" />

	<div class="main-content">
		<div class="main-content-inner">
			<c:import url="/pages/inc/inc_breadcrumbs.jsp?menu=角色管理" />

			<div class="page-content">
				<div class="page-header">
					<h1>
						系统功能<small><i class="ace-icon fa fa-angle-double-right"></i></small>
						权限管理 <small> <i class="ace-icon fa fa-angle-double-right"></i> 角色管理 (<font color=red>超级管理员角色为系统预设，无法删除和修改</font>) </small>
					</h1>
				</div>
				<!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<form class="form-search" name="search_form" id="search_form">
							角色名称：<input name="sname" value="${sname}" type="text" class="search-query" placeholder="请输入角色名称关键字..." />						</form>
						<div class="hr hr-18 hr-double dotted"></div>

						<div class="row">
							<div class="col-xs-12">
								<table id="simple-table" class="table  table-bordered table-hover">
									<thead>
									<tr>
										<th class="center">
											<label class="pos-rel">
												<input type="checkbox" class="ace" /> <span class="lbl"></span>
											</label>
										</th>
										<th>ID</th>
										<th>角色名称</th>
										<th>描述</th>
										<th>访问资源</th>
										<th style="display:none">访问资源ID</th>
										<th>操作</th>
									</tr>
									</thead>

									<tbody>
									<c:forEach items="${RoleList }" var="info">
										<tr>
											<td class="center">
												<c:if test="${info.id ne 1 }">
													<label class="pos-rel">
														<input type="checkbox" class="ace" name="ids" value="${info.id }"/>
														<span class="lbl"></span>
													</label>
												</c:if>
											</td>
											<td>
													${info.id }
											</td>
											<td>
													${info.roleName }
											</td>
											<td>
													${info.description }
											</td>
											<td>
												<c:forEach items="${info.resourcelist}" var="res" varStatus="resStatus">
													${res.resourceName}<c:if test ="${!resStatus.last}">,</c:if>
												</c:forEach>
											</td>
											<td style="display:none">
												<c:forEach items="${info.resourcelist}" var="res" varStatus="resStatus">
													${res.id}<c:if test ="${!resStatus.last}">,</c:if>
												</c:forEach>
											</td>
											<td>
												<div class="hidden-sm hidden-xs btn-group">
													<c:if test="${info.id ne 1 }">
														<a href="javascript:void(0);" class="btn btn-xs btn-info" onclick="editType(${info.id});">
															<i class="ace-icon fa fa-pencil bigger-120"></i>
														</a>
														<a href="system/permission/role_delete.do?delIds=${info.id }" class="btn btn-xs btn-danger" onclick="return delItem();">
															<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</a>
													</c:if>
												</div>
											</td>
										</tr>
									</c:forEach>
									</tbody>
								</table>

								<div class="row">
									<div class="col-xs-6">
										<div class="dataTables_info">
											在<font color=red> ${total} </font>个条目中显示
											<c:choose>
												<c:when test="${total gt StartRow + PageSize -1}">
													${ StartRow } 到 ${StartRow + PageSize -1}
												</c:when>
												<c:otherwise>
													${StartRow} 到 ${total}
												</c:otherwise>
											</c:choose>
											条数据
										</div>
									</div>

									<div class="col-xs-6">
										<div class="dataTables_paginate paging_simple_numbers">
											<ul class="pagination">
												<pg:pager url="${url}" export="offset,currentPageNumber=pageNumber" index="center" items="${total}" maxPageItems="${PageSize}">
													<pg:param name="sname" value="${sname}" />
													<pg:first>
														<li class="paginate_button">
															<a href="${pageUrl}">首页</a>
														</li>
													</pg:first>
													<pg:prev>
														<li class="paginate_button">
															<a href="${pageUrl}">上一页</a>
														</li>
													</pg:prev>
													<pg:pages>
														<c:choose>
															<c:when test="${currentPageNumber eq pageNumber}">
																<li class="paginate_button active">
																	<a href="javascript:void(0);">${pageNumber}</a>
																</li>
															</c:when>
															<c:otherwise>
																<li class="paginate_button">
																	<a href="${pageUrl}">${pageNumber}</a>
																</li>
															</c:otherwise>
														</c:choose>
													</pg:pages>
													<pg:next>
														<li class="paginate_button" tabindex="0">
															<a href="${pageUrl}">下一页</a>
														</li>
													</pg:next>
													<pg:last>
														<li class="paginate_button" tabindex="0">
															<a href="${pageUrl}">尾页</a>
														</li>
													</pg:last>
												</pg:pager>
											</ul>
										</div>
									</div>
								</div>

								<div>
									<a href="#" class="btn btn-danger btn-delete-batch">
										<i class="ace-icon fa fa-trash-o"></i> 批量删除 </a>

									<a href="#modal-table" role="button" class="btn btn-primary" data-toggle="modal" onclick="InitEditDialog('add');">
										<i class="ace-icon fa fa-plus"></i> 添加角色 </a>
								</div>

							</div>
							<!-- /.span -->

							<div id="modal-table" class="modal fade" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header no-padding">
											<div class="table-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
													<span class="white">&times;</span>
												</button>
												<span id="modal-title-role">添加角色信息</span>
											</div>
										</div>

										<form id="edit-dialog-role" action="" method="post" class="form-horizontal" role="form">
											<div class="modal-body">
												<div class="alert alert-danger hide"></div>
												<input type="hidden" name="id" id="id">

												<div class="form-group">
													<label for="rolename" class="col-sm-2 control-label">
														<font color="red">*</font>角色名称
													</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															   id="rolename" name="rolename" placeholder="请输入角色名称" required>
													</div>
												</div>

												<div class="form-group">
													<label for="description" class="col-sm-2 control-label">
														描述
													</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															   id="description" name="description" placeholder="请输入角色描述">
													</div>
												</div>

												<div class="form-group">
													<label for="roleresource" class="col-sm-2 control-label">
														<font color="red">*</font>访问资源
													</label>
													<div class="col-sm-10">
														<input id="ResourceSel" name="ResourceSel" type="text" placeholder="请输入角色名称" readonly value="" style="width:120px;" onclick="showMenu();" />
														<input id="ResourceSelValue" name="ResourceSelValue" type="text" required style="height:0.5px;width:0px;padding:0px;margin:0px;">
														<a id="menuBtn" href="#" onclick="showMenu(); return false;">请选择</a></li>

														<iframe name="resourceFrame" id="resourceFrame" border="0" frameborder="0" scrolling="no" style="display:none; position: absolute;"
																src="system/permission/resource_tree.do">
															浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
														</iframe>
													</div>
												</div>

											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
												<button type="submit" id="submit" class="btn btn-primary btn-submit">提交</button>
											</div>
										</form>
									</div><!-- /.modal-content -->
								</div><!-- /.modal-dialog -->
							</div>

						</div>
						<!-- /.row -->
						<!-- PAGE CONTENT ENDS -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->

	<c:import url="/pages/inc/inc_footer.jsp" />
</div>
<!-- /.main-container -->

<c:import url="/pages/inc/inc_script.jsp" />

<!-- inline scripts related to this page -->
<script type="text/javascript">
    <c:if test="${not empty sessionScope.rs}">
    alert('${rs}');
    <c:remove var="rs" scope="session"/>
    </c:if>

    function InitEditDialog(type)
	{
	    if(type=='add')
		{
            $("#edit-dialog-role").attr("action", "system/permission/role_add.do");
            $("#modal-title-role").html("添加角色信息");
            $('#rolename').val("");
            $('#description').val("");
            $('#ResourceSel').val("");
            $('#ResourceSelValue').val("");
		}
		if(type=='update')
		{
            $("#edit-dialog-role").attr("action", "system/permission/role_update.do");
            $("#modal-title-role").html("修改角色信息");
		}
	}

    function editType(id) {
        $.ajax({
            type: "POST",
            url: "system/permission/ajax_get_Role.do",
            data: {"id" : id},
            dataType:'json',
            success: function(data){
                InitEditDialog("update");
                $('#modal-table').modal();

                if(data && data.status){
                    $('#id').val(id);
                    $('#rolename').val(data.items.roleName);
                    $('#description').val(data.items.description);
                    var resourcelist = data.items.resourcelist;

					var resourceSel = "";
                    var resourceSelValue = "";
                    for (var i=0; i<resourcelist.length; i++) {

                        resourceSel += resourcelist[i].resourceName + ",";
                        resourceSelValue += resourcelist[i].id + ",";
                    }
                    if (resourceSel.length > 0 ) resourceSel = resourceSel.substring(0, resourceSel.length-1);
                    if (resourceSelValue.length > 0 ) resourceSelValue = resourceSelValue.substring(0, resourceSelValue.length-1);

                    $('#ResourceSel').val(resourceSel);
                    $('#ResourceSelValue').val(resourceSelValue);
                }else{
                    $('.alert-danger').html(data.info);
                    $('.alert-danger').removeClass("hide");
                }
            }
        });
    };
</script>


<script type="text/javascript">
    function delItem(){
        if(confirm("确定要删除吗？")){
            return true;
        }
        return false;
    }

    $(document).ready(function(){
        $('.btn-delete-batch').on('click', function(e) {
            e.preventDefault();
            var ids = '';
            var idsObj = document.getElementsByName('ids');
            for (i = 0; i < idsObj.length; i++) {
                if (idsObj[i].checked == true) {
                    ids = idsObj[i].value + ',' + ids;
                }
            }
            ids = ids.substring(0, ids.length - 1);
            if (ids == '') {
                alert('选择后再删除！');
                return false;
            }
            if (confirm('确定要删除吗？')) {
                location.href = '<c:url value="system/permission/role_delete.do?delIds="/>' + ids;
                return true;
            }
            return false;
        });
    });
</script>

<script type="text/javascript">
	function showMenu() {
		var cityObj = $("#ResourceSel");
		//$("#resourceFrame").attr('src', 'system/permission/resource_tree.do');
		$("#resourceFrame").css({left:"0px", top:cityObj.outerHeight() + "px"}).slideDown("fast");
		$("body").bind("mousedown", onBodyDown);

		//调用iframe中的函数，设置zTree的checked状态
        $("#resourceFrame")[0].contentWindow.setChecked();
	}
	function hideMenu() {
		$("#resourceFrame").fadeOut("fast");
		$("body").unbind("mousedown", onBodyDown);
	}
	function onBodyDown(event) {
		if (!(event.target.id == "menuBtn" || event.target.id == "ResourceSel" || event.target.id == "resourceFrame" || $(event.target).parents("#resourceFrame").length>0)) {
			hideMenu();
		}
	}
</script>


</body>
</html>
