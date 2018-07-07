<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Web Demo</title>
	<c:import url="/pages/inc/inc_head.jsp" />
</head>

<body class="no-skin">
<c:import url="/pages/inc/inc_navbar.jsp" />

<!-- /section:basics/navbar.layout -->
<div class="main-container ace-save-state" id="main-container">
	<c:import url="/pages/inc/inc_sidebar.jsp?menu=1-1" />

	<div class="main-content">
		<div class="main-content-inner">
			<!-- #section:basics/content.breadcrumbs -->
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li>
						<i class="ace-icon fa fa-home home-icon"></i>
						<a href="#">Home</a>
					</li>

					<li>
						<a href="#">Forms</a>
					</li>
					<li class="active">Wysiwyg &amp; Markdown</li>
				</ul><!-- /.breadcrumb -->

				<!-- #section:basics/content.searchbox -->
				<div class="nav-search" id="nav-search">
					<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
					</form>
				</div><!-- /.nav-search -->

				<!-- /section:basics/content.searchbox -->
			</div>

			<!-- /section:basics/content.breadcrumbs -->
			<div class="page-content">
				<!-- #section:settings.box -->
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="ace-icon fa fa-cog bigger-130"></i>
					</div>

					<div class="ace-settings-box clearfix" id="ace-settings-box">
						<div class="pull-left width-50">
							<!-- #section:settings.skins -->
							<div class="ace-settings-item">
								<div class="pull-left">
									<select id="skin-colorpicker" class="hide">
										<option data-skin="no-skin" value="#438EB9">#438EB9</option>
										<option data-skin="skin-1" value="#222A2D">#222A2D</option>
										<option data-skin="skin-2" value="#C6487E">#C6487E</option>
										<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
									</select>
								</div>
								<span>&nbsp; Choose Skin</span>
							</div>

							<!-- /section:settings.skins -->

							<!-- #section:settings.navbar -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
								<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
							</div>

							<!-- /section:settings.navbar -->

							<!-- #section:settings.sidebar -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
								<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
							</div>

							<!-- /section:settings.sidebar -->

							<!-- #section:settings.breadcrumbs -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
								<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
							</div>

							<!-- /section:settings.breadcrumbs -->

							<!-- #section:settings.rtl -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
								<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
							</div>

							<!-- /section:settings.rtl -->

							<!-- #section:settings.container -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
								<label class="lbl" for="ace-settings-add-container">
									Inside
									<b>.container</b>
								</label>
							</div>

							<!-- /section:settings.container -->
						</div><!-- /.pull-left -->

						<div class="pull-left width-50">
							<!-- #section:basics/sidebar.options -->
							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
								<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
								<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
							</div>

							<div class="ace-settings-item">
								<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
								<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
							</div>

							<!-- /section:basics/sidebar.options -->
						</div><!-- /.pull-left -->
					</div><!-- /.ace-settings-box -->
				</div><!-- /.ace-settings-container -->

				<!-- /section:settings.box -->
				<div class="page-header">
					<h1>Wysiwyg &amp; Markdown Editor </h1>
				</div><!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<h4 class="header green clearfix">
							Bootstrap Lightweight Editor
							<span class="block pull-right">
										<small class="grey middle">Choose style: &nbsp;</small>

										<span class="btn-toolbar inline middle no-margin">
											<span data-toggle="buttons" class="btn-group no-margin">
												<label class="btn btn-sm btn-yellow">
													1
													<input type="radio" value="1" />
												</label>

												<label class="btn btn-sm btn-yellow active">
													2
													<input type="radio" value="2" />
												</label>

												<label class="btn btn-sm btn-yellow">
													3
													<input type="radio" value="3" />
												</label>

												<label class="btn btn-sm btn-yellow">
													4
													<input type="radio" value="4" />
												</label>
											</span>
										</span>
									</span>
						</h4>

						<div class="wysiwyg-editor" id="editor1"></div>

						<div class="hr hr-double dotted"></div>

						<div class="row">
							<div class="col-sm-5">
								<h4 class="header blue">Inside Widget</h4>

								<div class="widget-box widget-color-green">
									<div class="widget-header widget-header-small">  </div>

									<div class="widget-body">
										<div class="widget-main no-padding">
											<div class="wysiwyg-editor" id="editor2"></div>
										</div>

										<div class="widget-toolbox padding-4 clearfix">
											<div class="btn-group pull-left">
												<button class="btn btn-sm btn-default btn-white btn-round">
													<i class="ace-icon fa fa-times bigger-125"></i>
													Cancel
												</button>
											</div>

											<div class="btn-group pull-right">
												<button class="btn btn-sm btn-danger btn-white btn-round">
													<i class="ace-icon fa fa-floppy-o bigger-125"></i>
													Save
												</button>

												<button class="btn btn-sm btn-success btn-white btn-round">
													<i class="ace-icon fa fa-globe bigger-125"></i>

													Publish
													<i class="ace-icon fa fa-arrow-right icon-on-right bigger-125"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-sm-7">
								<h4 class="header green">Markdown Editor</h4>

								<div class="widget-box widget-color-blue">
									<div class="widget-header widget-header-small">  </div>

									<div class="widget-body">
										<div class="widget-main no-padding">
													<textarea name="content" data-provide="markdown" data-iconlibrary="fa" rows="10">**Markdown Editor** inside a *widget box*

- list item 1
- list item 2
- list item 3</textarea>
										</div>

										<div class="widget-toolbox padding-4 clearfix">
											<div class="btn-group pull-left">
												<button class="btn btn-sm btn-info">
													<i class="ace-icon fa fa-times bigger-125"></i>
													Cancel
												</button>
											</div>

											<div class="btn-group pull-right">
												<button class="btn btn-sm btn-purple">
													<i class="ace-icon fa fa-floppy-o bigger-125"></i>
													Save
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- PAGE CONTENT ENDS -->
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.page-content -->
		</div>
	</div><!-- /.main-content -->

	<!-- /.main-content -->

	<c:import url="/pages/inc/inc_footer.jsp" />
</div><!-- /.main-container -->

<c:import url="/pages/inc/inc_script.jsp" />

</body>
</html>