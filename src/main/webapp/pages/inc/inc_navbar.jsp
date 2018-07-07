<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


		<% 		
			String path = request.getContextPath(); 
			String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
		%>
		<base href="<%=basePath%>" />

		
		<!-- #section:basics/navbar.layout -->
		<div id="navbar" class="navbar navbar-default ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
		
				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="javascript:void(0)" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Web Demo，欢迎使用！
						</small>
					</a>
		
					<!-- /section:basics/navbar.layout.brand -->
		
					<!-- #section:basics/navbar.toggle -->
		
					<!-- /section:basics/navbar.toggle -->
				</div>
		
				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<!-- <li class="grey dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>
		
							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-check"></i>
									4 Tasks to complete
								</li>
		
								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Software Update</span>
													<span class="pull-right">65%</span>
												</div>
		
												<div class="progress progress-mini">
													<div style="width:65%" class="progress-bar"></div>
												</div>
											</a>
										</li>
		
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Hardware Upgrade</span>
													<span class="pull-right">35%</span>
												</div>
		
												<div class="progress progress-mini">
													<div style="width:35%" class="progress-bar progress-bar-danger"></div>
												</div>
											</a>
										</li>
		
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Unit Testing</span>
													<span class="pull-right">15%</span>
												</div>
		
												<div class="progress progress-mini">
													<div style="width:15%" class="progress-bar progress-bar-warning"></div>
												</div>
											</a>
										</li>
		
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Bug Fixes</span>
													<span class="pull-right">90%</span>
												</div>
		
												<div class="progress progress-mini progress-striped active">
													<div style="width:90%" class="progress-bar progress-bar-success"></div>
												</div>
											</a>
										</li>
									</ul>
								</li>
		
								<li class="dropdown-footer">
									<a href="#">
										See tasks with details
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>
		
						<li class="purple dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-bell icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>
		
							<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-exclamation-triangle"></i>
									8 Notifications
								</li>
		
								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar navbar-pink">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
													<span class="pull-right badge badge-info">+12</span>
												</div>
											</a>
										</li>
		
										<li>
											<a href="#">
												<i class="btn btn-xs btn-primary fa fa-user"></i>
												Bob just signed up as an editor ...
											</a>
										</li>
		
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders
													</span>
													<span class="pull-right badge badge-success">+8</span>
												</div>
											</a>
										</li>
		
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
														Followers
													</span>
													<span class="pull-right badge badge-info">+11</span>
												</div>
											</a>
										</li>
									</ul>
								</li>
		
								<li class="dropdown-footer">
									<a href="#">
										See all notifications
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>
		
						<li class="green dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>
		
							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									5 Messages
								</li>
		
								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#" class="clearfix">
												<img src="ace/1.4.0/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ...
													</span>
		
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
											</a>
										</li>
		
										<li>
											<a href="#" class="clearfix">
												<img src="static/ace/1.4.0/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ...
													</span>
		
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
											</a>
										</li>
		
										<li>
											<a href="#" class="clearfix">
												<img src="static/ace/1.4.0/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ...
													</span>
		
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
											</a>
										</li>
		
										<li>
											<a href="#" class="clearfix">
												<img src="static/ace/1.4.0/assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>
		
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
											</a>
										</li>
		
										<li>
											<a href="#" class="clearfix">
												<img src="static/ace/1.4.0/assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>
		
													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
											</a>
										</li>
									</ul>
								</li>
		
								<li class="dropdown-footer">
									<a href="inbox.html">
										See all messages
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li> -->
		
						<!-- #section:basics/navbar.user_menu -->
						<li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<c:choose>
									<c:when test="${not empty admin.avatar }">
										<img class="nav-user-photo" src="${admin.avatar }" alt="管理员头像" />
									</c:when>
									<c:otherwise>
										<img class="nav-user-photo" src="static/ace/1.4.0/assets/avatars/profile-pic.jpg" alt="管理员头像" />
									</c:otherwise>
								</c:choose>
								<span class="user-info">
									${admin.nickname}
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>
		
							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#changePwd" data-toggle="modal">
										<i class="ace-icon fa fa-user"></i>
										修改密码
									</a>
								</li>
		
								<li>
									<a href="system/logout.do">
										<i class="ace-icon fa fa-power-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
		
						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>
		
				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>
		<!-- /section:basics/navbar.layout -->

		<div id="changeAvatar" class="modal fade" tabindex="-1">
			<div class="modal-dialog" style="width: 680px;">
				<div class="modal-content">
					<div class="modal-header no-padding">
						<div class="table-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">
								<span class="white">&times;</span>
							</button>
							<span id="modal-title">修改头像</span>
						</div>
					</div>

					<div class="modal-body">
						<div class="row">
							<div class="col-md-9">
								<div class="img-container">
									<img>
								</div>
							</div>
							<div class="col-md-3">
								<div class="docs-preview clearfix">
									<div class="img-preview preview-lg"></div>
								</div>

								<div class="btn-group">
									<label class="btn btn-primary btn-upload" for="inputImage"
										title="Upload image file"> <input class="sr-only"
										id="inputImage" name="file" type="file" accept="image/*">
										<span class="docs-tooltip" data-toggle="tooltip" title="选择图片">
											<span class="icon icon-upload"></span> </span> </label>
									<button class="btn btn-primary" data-method="getCroppedCanvas"
										type="button">
										<span class="docs-tooltip" data-toggle="tooltip" title="上传头像">上传头像
										</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>

		<div id="changePwd" class="modal fade" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header no-padding">
						<div class="table-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								<span class="white">&times;</span>
							</button>
							<span id="modal-title-user">修改密码</span>
						</div>
					</div>

					<form class="form-horizontal" role="form">
						<div class="modal-body">
							<div class="alert alert-danger hide"></div>

							<div class="form-group">
								<label for="psw" class="col-sm-3 control-label">
									<font color="red">*</font>输入新密码
								</label>
								<div class="col-sm-9">
									<input type="password" class="form-control"
										   name="psw" id="psw" placeholder="请输入用户新密码" required required onkeyup="validate()">
								</div>
							</div>

							<div class="form-group">
								<label for="pswagain" class="col-sm-3 control-label">
									<font color="red">*</font>确认新密码
								</label>
								<div class="col-sm-9">
									<input type="password" class="form-control"
										   name="pswagain" id="pswagain"  placeholder="再输入用户新密码" required onkeyup="validate()">
								</div>
							</div>

							<div id="notice" class="form-group" style="display:none">
								<label class="col-sm-3 control-label"></label>
								<div class="col-sm-9"><font color='red'>两次密码输入不相同</font></div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<button type="button"  class="btn btn-primary" data-dismiss="modal" onclick="changePwd();">提交</button>
						</div>
					</form>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
</div>

<script type="text/javascript">
    function validate() {
        var psw = document.getElementById("psw").value;
        var pswagain = document.getElementById("pswagain").value;
        if(psw == pswagain) {
            //document.getElementById("notice").innerHTML="<font color='green'>两次密码相同</font>";
            document.getElementById("notice").style.display = "none";
            document.getElementById("submit").disabled = false;
        }
        else {
            //document.getElementById("notice").innerHTML="<font color='red'>两次密码输入不相同</font>";
            document.getElementById("notice").style.display = "";
            document.getElementById("submit").disabled = true;
        }
    };

    function changePwd() {
        var psw = $('#psw').val();
        $.ajax({
            type: "POST",
            url: "system/permission/ajax_changePwd.do",
            data: {"psw" : psw},
            dataType:'json',
            success: function(data){
                if(data){
                    if(data.status){}
                    alert(data.info);
                }
            }
        });
    }
</script>
