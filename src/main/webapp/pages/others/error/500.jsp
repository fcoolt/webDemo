<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>500 发生未知异常</title>
		<meta name="description" content="500 Error Page" />
		<c:import url="/pages/inc/inc_head.jsp" />
	</head>

	<body class="no-skin">

		<!-- /section:basics/navbar.layout -->
		<div class="main-container ace-save-state" id="main-container">
			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<div class="main-content-inner">
					<!-- #section:basics/content.breadcrumbs -->
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">首页</a>
							</li>
						</ul><!-- /.breadcrumb -->
						<!-- /section:basics/content.searchbox -->
					</div>

					<!-- /section:basics/content.breadcrumbs -->
					<div class="page-content">
						<!-- /section:settings.box -->
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<!-- #section:pages/error -->
								<div class="error-container">
									<div class="well">
										<h1 class="grey lighter smaller">
											<span class="blue bigger-125">
												<i class="ace-icon fa fa-random"></i>
												500
											</span>
											发生未知异常
										</h1>

										<hr />
										<h3 class="lighter smaller">
											攻城狮们
											<i class="ace-icon fa fa-wrench icon-animated-wrench bigger-125"></i>
											正在处理!
										</h3>

										<div class="space"></div>

										<div>
											<h4 class="lighter smaller">请尝试以下建议:</h4>

											<ul class="list-unstyled spaced inline bigger-110 margin-15">
												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													阅读常见问题解答（FAQ）
												</li>

												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													给我们更多关于这个特定错误发生的信息!
												</li>
											</ul>
										</div>

										<hr />
										<div class="space"></div>

										<div class="center">
											<a href="javascript:history.back()" class="btn btn-grey">
												<i class="ace-icon fa fa-arrow-left"></i>
												返回上一页
											</a>

											<a href="javascript:parent.location.reload();" class="btn btn-primary">
												<i class="ace-icon fa fa-refresh"></i>
												刷新页面
											</a>
										</div>
									</div>
								</div>

								<!-- /section:pages/error -->

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<c:import url="/pages/inc/inc_footer.jsp" />
		</div><!-- /.main-container -->

	</body>
</html>