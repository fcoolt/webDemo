<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>403 禁止访问页</title>
<c:import url="/pages/inc/inc_head.jsp" />
</head>

<body class="no-skin">
	<c:import url="/pages/inc/inc_navbar.jsp" />

	<div class="main-container ace-save-state" id="main-container">
		<c:import url="/pages/inc/inc_sidebar.jsp?menu=100-2" />

		<div class="main-content">
			<div class="main-content-inner">
				<c:import url="/pages/inc/inc_breadcrumbs.jsp?menu=禁止访问" />

				<div class="page-content">
					<div class="page-header">
						<h1><font color=red>您暂无访问该栏目的权限！</font></h1>
					</div><!-- /.page-header -->

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<div class="alert alert-info">
								<button class="close" data-dismiss="alert">
									<i class="ace-icon fa fa-times"></i>
								</button>
								请联系超级管理员为您开通权限!
							</div>
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