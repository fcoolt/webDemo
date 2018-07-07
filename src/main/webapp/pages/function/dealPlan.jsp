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
			<c:import url="/pages/inc/inc_sidebar.jsp?menu=0-2" />

			<div class="main-content">
				<div class="main-content-inner">
					<!-- #section:basics/content.breadcrumbs -->
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="function/dataAnalysis.do">主页</a>
							</li>
							<li class="active">处理方案</li>
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
							<h1>
								Tables
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Static &amp; Dynamic Tables
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-12">
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
											<tr>
												<th class="center">
													<label class="pos-rel">
														<input type="checkbox" class="ace" />
														<span class="lbl"></span>
													</label>
												</th>
												<th class="detail-col">Details</th>
												<th>Domain</th>
												<th>Price</th>
												<th class="hidden-480">Clicks</th>

												<th>
													<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
													Update
												</th>
												<th class="hidden-480">Status</th>

												<th></th>
											</tr>
											</thead>

											<tbody>
											<tr>
												<td class="center">
													<label class="pos-rel">
														<input type="checkbox" class="ace" />
														<span class="lbl"></span>
													</label>
												</td>

												<td class="center">
													<div class="action-buttons">
														<a href="#" class="green bigger-140 show-details-btn" title="Show Details">
															<i class="ace-icon fa fa-angle-double-down"></i>
															<span class="sr-only">Details</span>
														</a>
													</div>
												</td>

												<td>
													<a href="#">ace.com</a>
												</td>
												<td>$45</td>
												<td class="hidden-480">3,330</td>
												<td>Feb 12</td>

												<td class="hidden-480">
													<span class="label label-sm label-warning">Expiring</span>
												</td>

												<td>
													<div class="hidden-sm hidden-xs btn-group">
														<button class="btn btn-xs btn-success">
															<i class="ace-icon fa fa-check bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-info">
															<i class="ace-icon fa fa-pencil bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-danger">
															<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-warning">
															<i class="ace-icon fa fa-flag bigger-120"></i>
														</button>
													</div>

													<div class="hidden-md hidden-lg">
														<div class="inline pos-rel">
															<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
																<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
															</button>

															<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																<li>
																	<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</td>
											</tr>

											<tr class="detail-row">
												<td colspan="8">
													<div class="table-detail">
														<div class="row">
															<div class="col-xs-12 col-sm-2">
																<div class="text-center">
																	<img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="../assets/avatars/profile-pic.jpg" />
																	<br />
																	<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
																		<div class="inline position-relative">
																			<a class="user-title-label" href="#">
																				<i class="ace-icon fa fa-circle light-green"></i>
																				&nbsp;
																				<span class="white">Alex M. Doe</span>
																			</a>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-7">
																<div class="space visible-xs"></div>

																<div class="profile-user-info profile-user-info-striped">
																	<div class="profile-info-row">
																		<div class="profile-info-name"> Username </div>

																		<div class="profile-info-value">
																			<span>alexdoe</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Location </div>

																		<div class="profile-info-value">
																			<i class="fa fa-map-marker light-orange bigger-110"></i>
																			<span>Netherlands, Amsterdam</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Age </div>

																		<div class="profile-info-value">
																			<span>38</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Joined </div>

																		<div class="profile-info-value">
																			<span>2010/06/20</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Last Online </div>

																		<div class="profile-info-value">
																			<span>3 hours ago</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> About Me </div>

																		<div class="profile-info-value">
																			<span>Bio</span>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-3">
																<div class="space visible-xs"></div>
																<h4 class="header blue lighter less-margin">Send a message to Alex</h4>

																<div class="space-6"></div>

																<form>
																	<fieldset>
																		<textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
																	</fieldset>

																	<div class="hr hr-dotted"></div>

																	<div class="clearfix">
																		<label class="pull-left">
																			<input type="checkbox" class="ace" />
																			<span class="lbl"> Email me a copy</span>
																		</label>

																		<button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
																			Submit
																			<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
																		</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</td>
											</tr>

											<tr>
												<td class="center">
													<label class="pos-rel">
														<input type="checkbox" class="ace" />
														<span class="lbl"></span>
													</label>
												</td>

												<td class="center">
													<div class="action-buttons">
														<a href="#" class="green bigger-140 show-details-btn" title="Show Details">
															<i class="ace-icon fa fa-angle-double-down"></i>
															<span class="sr-only">Details</span>
														</a>
													</div>
												</td>

												<td>
													<a href="#">base.com</a>
												</td>
												<td>$35</td>
												<td class="hidden-480">2,595</td>
												<td>Feb 18</td>

												<td class="hidden-480">
													<span class="label label-sm label-success">Registered</span>
												</td>

												<td>
													<div class="hidden-sm hidden-xs btn-group">
														<button class="btn btn-xs btn-success">
															<i class="ace-icon fa fa-check bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-info">
															<i class="ace-icon fa fa-pencil bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-danger">
															<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-warning">
															<i class="ace-icon fa fa-flag bigger-120"></i>
														</button>
													</div>

													<div class="hidden-md hidden-lg">
														<div class="inline pos-rel">
															<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
																<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
															</button>

															<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																<li>
																	<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</td>
											</tr>

											<tr class="detail-row">
												<td colspan="8">
													<div class="table-detail">
														<div class="row">
															<div class="col-xs-12 col-sm-2">
																<div class="text-center">
																	<img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="../assets/avatars/profile-pic.jpg" />
																	<br />
																	<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
																		<div class="inline position-relative">
																			<a class="user-title-label" href="#">
																				<i class="ace-icon fa fa-circle light-green"></i>
																				&nbsp;
																				<span class="white">Alex M. Doe</span>
																			</a>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-7">
																<div class="space visible-xs"></div>

																<div class="profile-user-info profile-user-info-striped">
																	<div class="profile-info-row">
																		<div class="profile-info-name"> Username </div>

																		<div class="profile-info-value">
																			<span>alexdoe</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Location </div>

																		<div class="profile-info-value">
																			<i class="fa fa-map-marker light-orange bigger-110"></i>
																			<span>Netherlands, Amsterdam</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Age </div>

																		<div class="profile-info-value">
																			<span>38</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Joined </div>

																		<div class="profile-info-value">
																			<span>2010/06/20</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Last Online </div>

																		<div class="profile-info-value">
																			<span>3 hours ago</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> About Me </div>

																		<div class="profile-info-value">
																			<span>Bio</span>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-3">
																<div class="space visible-xs"></div>
																<h4 class="header blue lighter less-margin">Send a message to Alex</h4>

																<div class="space-6"></div>

																<form>
																	<fieldset>
																		<textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
																	</fieldset>

																	<div class="hr hr-dotted"></div>

																	<div class="clearfix">
																		<label class="pull-left">
																			<input type="checkbox" class="ace" />
																			<span class="lbl"> Email me a copy</span>
																		</label>

																		<button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
																			Submit
																			<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
																		</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</td>
											</tr>

											<tr>
												<td class="center">
													<label class="pos-rel">
														<input type="checkbox" class="ace" />
														<span class="lbl"></span>
													</label>
												</td>

												<td class="center">
													<div class="action-buttons">
														<a href="#" class="green bigger-140 show-details-btn" title="Show Details">
															<i class="ace-icon fa fa-angle-double-down"></i>
															<span class="sr-only">Details</span>
														</a>
													</div>
												</td>

												<td>
													<a href="#">max.com</a>
												</td>
												<td>$60</td>
												<td class="hidden-480">4,400</td>
												<td>Mar 11</td>

												<td class="hidden-480">
													<span class="label label-sm label-warning">Expiring</span>
												</td>

												<td>
													<div class="hidden-sm hidden-xs btn-group">
														<button class="btn btn-xs btn-success">
															<i class="ace-icon fa fa-check bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-info">
															<i class="ace-icon fa fa-pencil bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-danger">
															<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-warning">
															<i class="ace-icon fa fa-flag bigger-120"></i>
														</button>
													</div>

													<div class="hidden-md hidden-lg">
														<div class="inline pos-rel">
															<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
																<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
															</button>

															<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																<li>
																	<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</td>
											</tr>

											<tr class="detail-row">
												<td colspan="8">
													<div class="table-detail">
														<div class="row">
															<div class="col-xs-12 col-sm-2">
																<div class="text-center">
																	<img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="../assets/avatars/profile-pic.jpg" />
																	<br />
																	<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
																		<div class="inline position-relative">
																			<a class="user-title-label" href="#">
																				<i class="ace-icon fa fa-circle light-green"></i>
																				&nbsp;
																				<span class="white">Alex M. Doe</span>
																			</a>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-7">
																<div class="space visible-xs"></div>

																<div class="profile-user-info profile-user-info-striped">
																	<div class="profile-info-row">
																		<div class="profile-info-name"> Username </div>

																		<div class="profile-info-value">
																			<span>alexdoe</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Location </div>

																		<div class="profile-info-value">
																			<i class="fa fa-map-marker light-orange bigger-110"></i>
																			<span>Netherlands, Amsterdam</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Age </div>

																		<div class="profile-info-value">
																			<span>38</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Joined </div>

																		<div class="profile-info-value">
																			<span>2010/06/20</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Last Online </div>

																		<div class="profile-info-value">
																			<span>3 hours ago</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> About Me </div>

																		<div class="profile-info-value">
																			<span>Bio</span>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-3">
																<div class="space visible-xs"></div>
																<h4 class="header blue lighter less-margin">Send a message to Alex</h4>

																<div class="space-6"></div>

																<form>
																	<fieldset>
																		<textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
																	</fieldset>

																	<div class="hr hr-dotted"></div>

																	<div class="clearfix">
																		<label class="pull-left">
																			<input type="checkbox" class="ace" />
																			<span class="lbl"> Email me a copy</span>
																		</label>

																		<button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
																			Submit
																			<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
																		</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</td>
											</tr>

											<tr>
												<td class="center">
													<label class="pos-rel">
														<input type="checkbox" class="ace" />
														<span class="lbl"></span>
													</label>
												</td>

												<td class="center">
													<div class="action-buttons">
														<a href="#" class="green bigger-140 show-details-btn" title="Show Details">
															<i class="ace-icon fa fa-angle-double-down"></i>
															<span class="sr-only">Details</span>
														</a>
													</div>
												</td>

												<td>
													<a href="#">best.com</a>
												</td>
												<td>$75</td>
												<td class="hidden-480">6,500</td>
												<td>Apr 03</td>

												<td class="hidden-480">
													<span class="label label-sm label-inverse arrowed-in">Flagged</span>
												</td>

												<td>
													<div class="hidden-sm hidden-xs btn-group">
														<button class="btn btn-xs btn-success">
															<i class="ace-icon fa fa-check bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-info">
															<i class="ace-icon fa fa-pencil bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-danger">
															<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-warning">
															<i class="ace-icon fa fa-flag bigger-120"></i>
														</button>
													</div>

													<div class="hidden-md hidden-lg">
														<div class="inline pos-rel">
															<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
																<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
															</button>

															<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																<li>
																	<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</td>
											</tr>

											<tr class="detail-row">
												<td colspan="8">
													<div class="table-detail">
														<div class="row">
															<div class="col-xs-12 col-sm-2">
																<div class="text-center">
																	<img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="../assets/avatars/profile-pic.jpg" />
																	<br />
																	<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
																		<div class="inline position-relative">
																			<a class="user-title-label" href="#">
																				<i class="ace-icon fa fa-circle light-green"></i>
																				&nbsp;
																				<span class="white">Alex M. Doe</span>
																			</a>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-7">
																<div class="space visible-xs"></div>

																<div class="profile-user-info profile-user-info-striped">
																	<div class="profile-info-row">
																		<div class="profile-info-name"> Username </div>

																		<div class="profile-info-value">
																			<span>alexdoe</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Location </div>

																		<div class="profile-info-value">
																			<i class="fa fa-map-marker light-orange bigger-110"></i>
																			<span>Netherlands, Amsterdam</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Age </div>

																		<div class="profile-info-value">
																			<span>38</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Joined </div>

																		<div class="profile-info-value">
																			<span>2010/06/20</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Last Online </div>

																		<div class="profile-info-value">
																			<span>3 hours ago</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> About Me </div>

																		<div class="profile-info-value">
																			<span>Bio</span>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-3">
																<div class="space visible-xs"></div>
																<h4 class="header blue lighter less-margin">Send a message to Alex</h4>

																<div class="space-6"></div>

																<form>
																	<fieldset>
																		<textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
																	</fieldset>

																	<div class="hr hr-dotted"></div>

																	<div class="clearfix">
																		<label class="pull-left">
																			<input type="checkbox" class="ace" />
																			<span class="lbl"> Email me a copy</span>
																		</label>

																		<button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
																			Submit
																			<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
																		</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</td>
											</tr>

											<tr>
												<td class="center">
													<label class="pos-rel">
														<input type="checkbox" class="ace" />
														<span class="lbl"></span>
													</label>
												</td>

												<td class="center">
													<div class="action-buttons">
														<a href="#" class="green bigger-140 show-details-btn" title="Show Details">
															<i class="ace-icon fa fa-angle-double-down"></i>
															<span class="sr-only">Details</span>
														</a>
													</div>
												</td>

												<td>
													<a href="#">pro.com</a>
												</td>
												<td>$55</td>
												<td class="hidden-480">4,250</td>
												<td>Jan 21</td>

												<td class="hidden-480">
													<span class="label label-sm label-success">Registered</span>
												</td>

												<td>
													<div class="hidden-sm hidden-xs btn-group">
														<button class="btn btn-xs btn-success">
															<i class="ace-icon fa fa-check bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-info">
															<i class="ace-icon fa fa-pencil bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-danger">
															<i class="ace-icon fa fa-trash-o bigger-120"></i>
														</button>

														<button class="btn btn-xs btn-warning">
															<i class="ace-icon fa fa-flag bigger-120"></i>
														</button>
													</div>

													<div class="hidden-md hidden-lg">
														<div class="inline pos-rel">
															<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
																<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
															</button>

															<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																<li>
																	<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																			<span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																			<span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
																	</a>
																</li>

																<li>
																	<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																			<span class="red">
																				<i class="ace-icon fa fa-trash-o bigger-120"></i>
																			</span>
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</td>
											</tr>

											<tr class="detail-row">
												<td colspan="8">
													<div class="table-detail">
														<div class="row">
															<div class="col-xs-12 col-sm-2">
																<div class="text-center">
																	<img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="../assets/avatars/profile-pic.jpg" />
																	<br />
																	<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
																		<div class="inline position-relative">
																			<a class="user-title-label" href="#">
																				<i class="ace-icon fa fa-circle light-green"></i>
																				&nbsp;
																				<span class="white">Alex M. Doe</span>
																			</a>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-7">
																<div class="space visible-xs"></div>

																<div class="profile-user-info profile-user-info-striped">
																	<div class="profile-info-row">
																		<div class="profile-info-name"> Username </div>

																		<div class="profile-info-value">
																			<span>alexdoe</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Location </div>

																		<div class="profile-info-value">
																			<i class="fa fa-map-marker light-orange bigger-110"></i>
																			<span>Netherlands, Amsterdam</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Age </div>

																		<div class="profile-info-value">
																			<span>38</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Joined </div>

																		<div class="profile-info-value">
																			<span>2010/06/20</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> Last Online </div>

																		<div class="profile-info-value">
																			<span>3 hours ago</span>
																		</div>
																	</div>

																	<div class="profile-info-row">
																		<div class="profile-info-name"> About Me </div>

																		<div class="profile-info-value">
																			<span>Bio</span>
																		</div>
																	</div>
																</div>
															</div>

															<div class="col-xs-12 col-sm-3">
																<div class="space visible-xs"></div>
																<h4 class="header blue lighter less-margin">Send a message to Alex</h4>

																<div class="space-6"></div>

																<form>
																	<fieldset>
																		<textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
																	</fieldset>

																	<div class="hr hr-dotted"></div>

																	<div class="clearfix">
																		<label class="pull-left">
																			<input type="checkbox" class="ace" />
																			<span class="lbl"> Email me a copy</span>
																		</label>

																		<button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
																			Submit
																			<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
																		</button>
																	</div>
																</form>
															</div>
														</div>
													</div>
												</td>
											</tr>
											</tbody>
										</table>
									</div><!-- /.span -->
								</div><!-- /.row -->

								<div class="hr hr-18 dotted hr-double"></div>

								<h4 class="pink">
									<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i>
									<a href="#modal-table" role="button" class="green" data-toggle="modal"> Table Inside a Modal Box </a>
								</h4>

								<div class="hr hr-18 dotted hr-double"></div>

								<div class="row">
									<div class="col-xs-12">
										<h3 class="header smaller lighter blue">jQuery dataTables</h3>

										<div class="clearfix">
											<div class="pull-right tableTools-container"></div>
										</div>
										<div class="table-header">
											Results for "Latest Registered Domains"
										</div>

										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
											<table id="dynamic-table" class="table table-striped table-bordered table-hover">
												<thead>
												<tr>
													<th class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</th>
													<th>Domain</th>
													<th>Price</th>
													<th class="hidden-480">Clicks</th>

													<th>
														<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
														Update
													</th>
													<th class="hidden-480">Status</th>

													<th></th>
												</tr>
												</thead>

												<tbody>
												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">app.com</a>
													</td>
													<td>$45</td>
													<td class="hidden-480">3,330</td>
													<td>Feb 12</td>

													<td class="hidden-480">
														<span class="label label-sm label-warning">Expiring</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">base.com</a>
													</td>
													<td>$35</td>
													<td class="hidden-480">2,595</td>
													<td>Feb 18</td>

													<td class="hidden-480">
														<span class="label label-sm label-success">Registered</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">max.com</a>
													</td>
													<td>$60</td>
													<td class="hidden-480">4,400</td>
													<td>Mar 11</td>

													<td class="hidden-480">
														<span class="label label-sm label-warning">Expiring</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">best.com</a>
													</td>
													<td>$75</td>
													<td class="hidden-480">6,500</td>
													<td>Apr 03</td>

													<td class="hidden-480">
														<span class="label label-sm label-inverse arrowed-in">Flagged</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">pro.com</a>
													</td>
													<td>$55</td>
													<td class="hidden-480">4,250</td>
													<td>Jan 21</td>

													<td class="hidden-480">
														<span class="label label-sm label-success">Registered</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">team.com</a>
													</td>
													<td>$40</td>
													<td class="hidden-480">3,200</td>
													<td>Feb 09</td>

													<td class="hidden-480">
														<span class="label label-sm label-inverse arrowed-in">Flagged</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">up.com</a>
													</td>
													<td>$95</td>
													<td class="hidden-480">8,520</td>
													<td>Feb 22</td>

													<td class="hidden-480">
														<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">view.com</a>
													</td>
													<td>$45</td>
													<td class="hidden-480">4,100</td>
													<td>Mar 12</td>

													<td class="hidden-480">
														<span class="label label-sm label-success">Registered</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">nice.com</a>
													</td>
													<td>$38</td>
													<td class="hidden-480">3,940</td>
													<td>Feb 12</td>

													<td class="hidden-480">
														<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">fine.com</a>
													</td>
													<td>$25</td>
													<td class="hidden-480">2,983</td>
													<td>Apr 01</td>

													<td class="hidden-480">
														<span class="label label-sm label-warning">Expiring</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">good.com</a>
													</td>
													<td>$50</td>
													<td class="hidden-480">6,500</td>
													<td>Feb 02</td>

													<td class="hidden-480">
														<span class="label label-sm label-inverse arrowed-in">Flagged</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">great.com</a>
													</td>
													<td>$55</td>
													<td class="hidden-480">6,400</td>
													<td>Feb 24</td>

													<td class="hidden-480">
														<span class="label label-sm label-success">Registered</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">shine.com</a>
													</td>
													<td>$25</td>
													<td class="hidden-480">2,200</td>
													<td>Apr 01</td>

													<td class="hidden-480">
														<span class="label label-sm label-inverse arrowed-in">Flagged</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">rise.com</a>
													</td>
													<td>$42</td>
													<td class="hidden-480">3,900</td>
													<td>Feb 01</td>

													<td class="hidden-480">
														<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">above.com</a>
													</td>
													<td>$35</td>
													<td class="hidden-480">3,420</td>
													<td>Mar 12</td>

													<td class="hidden-480">
														<span class="label label-sm label-warning">Expiring</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">share.com</a>
													</td>
													<td>$30</td>
													<td class="hidden-480">3,200</td>
													<td>Feb 11</td>

													<td class="hidden-480">
														<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">fair.com</a>
													</td>
													<td>$35</td>
													<td class="hidden-480">3,900</td>
													<td>Mar 26</td>

													<td class="hidden-480">
														<span class="label label-sm label-inverse arrowed-in">Flagged</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">year.com</a>
													</td>
													<td>$48</td>
													<td class="hidden-480">3,990</td>
													<td>Feb 15</td>

													<td class="hidden-480">
														<span class="label label-sm label-warning">Expiring</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">day.com</a>
													</td>
													<td>$55</td>
													<td class="hidden-480">5,600</td>
													<td>Jan 29</td>

													<td class="hidden-480">
														<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">light.com</a>
													</td>
													<td>$40</td>
													<td class="hidden-480">3,100</td>
													<td>Feb 17</td>

													<td class="hidden-480">
														<span class="label label-sm label-success">Registered</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">sight.com</a>
													</td>
													<td>$58</td>
													<td class="hidden-480">6,100</td>
													<td>Feb 19</td>

													<td class="hidden-480">
														<span class="label label-sm label-inverse arrowed-in">Flagged</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">right.com</a>
													</td>
													<td>$50</td>
													<td class="hidden-480">4,400</td>
													<td>Apr 01</td>

													<td class="hidden-480">
														<span class="label label-sm label-warning">Expiring</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="center">
														<label class="pos-rel">
															<input type="checkbox" class="ace" />
															<span class="lbl"></span>
														</label>
													</td>

													<td>
														<a href="#">once.com</a>
													</td>
													<td>$20</td>
													<td class="hidden-480">1,400</td>
													<td>Apr 04</td>

													<td class="hidden-480">
														<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
													</td>

													<td>
														<div class="hidden-sm hidden-xs action-buttons">
															<a class="blue" href="#">
																<i class="ace-icon fa fa-search-plus bigger-130"></i>
															</a>

															<a class="green" href="#">
																<i class="ace-icon fa fa-pencil bigger-130"></i>
															</a>

															<a class="red" href="#">
																<i class="ace-icon fa fa-trash-o bigger-130"></i>
															</a>
														</div>

														<div class="hidden-md hidden-lg">
															<div class="inline pos-rel">
																<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																	<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																</button>

																<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																	<li>
																		<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																		</a>
																	</li>

																	<li>
																		<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</td>
												</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>

								<div id="modal-table" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header no-padding">
												<div class="table-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														<span class="white">&times;</span>
													</button>
													Results for "Latest Registered Domains
												</div>
											</div>

											<div class="modal-body no-padding">
												<table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
													<thead>
													<tr>
														<th>Domain</th>
														<th>Price</th>
														<th>Clicks</th>

														<th>
															<i class="ace-icon fa fa-clock-o bigger-110"></i>
															Update
														</th>
													</tr>
													</thead>

													<tbody>
													<tr>
														<td>
															<a href="#">ace.com</a>
														</td>
														<td>$45</td>
														<td>3,330</td>
														<td>Feb 12</td>
													</tr>

													<tr>
														<td>
															<a href="#">base.com</a>
														</td>
														<td>$35</td>
														<td>2,595</td>
														<td>Feb 18</td>
													</tr>

													<tr>
														<td>
															<a href="#">max.com</a>
														</td>
														<td>$60</td>
														<td>4,400</td>
														<td>Mar 11</td>
													</tr>

													<tr>
														<td>
															<a href="#">best.com</a>
														</td>
														<td>$75</td>
														<td>6,500</td>
														<td>Apr 03</td>
													</tr>

													<tr>
														<td>
															<a href="#">pro.com</a>
														</td>
														<td>$55</td>
														<td>4,250</td>
														<td>Jan 21</td>
													</tr>
													</tbody>
												</table>
											</div>

											<div class="modal-footer no-margin-top">
												<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
													<i class="ace-icon fa fa-times"></i>
													Close
												</button>

												<ul class="pagination pull-right no-margin">
													<li class="prev disabled">
														<a href="#">
															<i class="ace-icon fa fa-angle-double-left"></i>
														</a>
													</li>

													<li class="active">
														<a href="#">1</a>
													</li>

													<li>
														<a href="#">2</a>
													</li>

													<li>
														<a href="#">3</a>
													</li>

													<li class="next">
														<a href="#">
															<i class="ace-icon fa fa-angle-double-right"></i>
														</a>
													</li>
												</ul>
											</div>
										</div><!-- /.modal-content -->
									</div><!-- /.modal-dialog -->
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<c:import url="/pages/inc/inc_footer.jsp" />
		</div><!-- /.main-container -->

		<c:import url="/pages/inc/inc_script.jsp" />

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: ace.vars['old_ie'] ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html',
									 {
										tagValuesAttribute:'data-values',
										type: 'bar',
										barColor: barColor ,
										chartRangeMin:$(this).data('min') || 0
									 });
				});
			
			
			  //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			  //but sometimes it brings up errors with normal resize event handlers
			  $.resize.throttleWindow = false;
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "social networks",  data: 38.7, color: "#68BC31"},
				{ label: "search engines",  data: 24.5, color: "#2091CF"},
				{ label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
				{ label: "direct traffic",  data: 18.6, color: "#DA5430"},
				{ label: "other",  data: 10, color: "#FEE074"}
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			  //pie chart tooltip example
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
				/////////////////////////////////////
				$(document).one('ajaxloadstart.page', function(e) {
					$tooltip.remove();
				});
			
			
			
			
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
				$.plot("#sales-charts", [
					{ label: "Domains", data: d1 },
					{ label: "Hosting", data: d2 },
					{ label: "Services", data: d3 }
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: -2,
						max: 2,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').ace_scroll({
					size: 300
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if(ace.vars['touch'] && ace.vars['android']) {
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				  });
				}
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {
						//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
			
			
				//show the dropdowns on top or bottom depending on window height and menu position
				$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
					var offset = $(this).offset();
			
					var $w = $(window)
					if (offset.top > $w.scrollTop() + $w.innerHeight() - 100) 
						$(this).addClass('dropup');
					else $(this).removeClass('dropup');
				});
			
			})
		</script>
	</body>
</html>