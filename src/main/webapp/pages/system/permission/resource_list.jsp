<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>功能管理</title>
	<c:import url="/pages/inc/inc_head.jsp" />
</head>

<body class="no-skin">
	<c:import url="/pages/inc/inc_navbar.jsp" />

	<div class="main-container ace-save-state" id="main-container">
		<c:import url="/pages/inc/inc_sidebar.jsp?menu=2-1-3" />

		<div class="main-content">
			<div class="main-content-inner">
				<c:import url="/pages/inc/inc_breadcrumbs.jsp?menu=功能管理" />

				<div class="page-content">
					<div class="page-header">
						<h1>
							系统功能<small><i class="ace-icon fa fa-angle-double-right"></i></small>
							权限管理 <small> <i class="ace-icon fa fa-angle-double-right"></i> 功能管理</small>
						</h1>
					</div>

					<div class="row">
						<div class="col-xs-2" style="padding-left: 0; padding-right: 0;">
							<iframe name="leftFrame" id="leftFrame" height="500px" width="100%"
									src="system/permission/resource_list_left.do" border="0" frameborder="0" scrolling="auto">
								浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
							</iframe>
						</div>
						<div class="col-xs-10">
							<iframe name="rightFrame" id="rightFrame" height="500px" width="100%"
									src="system/permission/resource_list_right.do" border="0" frameborder="0" >
								浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
							</iframe>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- /.main-content -->

		<c:import url="/pages/inc/inc_footer.jsp" />
	</div>
	<!-- /.main-container -->

	<c:import url="/pages/inc/inc_script.jsp" />

</body>
</html>

