<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>404 找不到页面</title>
		<meta name="description" content="404 Error Page" />
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
												<i class="ace-icon fa fa-sitemap"></i>
												404
											</span>
											找不到页面
										</h1>

										<hr />
										<h3 class="lighter smaller">众里寻他千百度，踏破铁鞋无觅处!</h3>

										<div>
											<form class="form-search">
												<span class="input-icon align-middle">
													<i class="ace-icon fa fa-search"></i>

													<input type="text" class="search-query" placeholder="请输入搜索内容..." />
												</span>
												<button class="btn btn-sm" type="button">搜索</button>
											</form>

											<div class="space"></div>
											<h4 class="smaller">请尝试以下建议:</h4>

											<ul class="list-unstyled spaced inline bigger-110 margin-15">
												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													重新检查URL的拼写是否正确
												</li>

												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													阅读常见问题解答（FAQ）
												</li>

												<li>
													<i class="ace-icon fa fa-hand-o-right blue"></i>
													反馈给我们
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