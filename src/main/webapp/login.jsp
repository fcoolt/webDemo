<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Web Demo</title>
<c:import url="pages/inc/inc_head.jsp" />
</head>

<body class="login-layout">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="ace-icon fa fa-leaf green"></i> <span class="red">Web Demo</span>
							</h1>
							<h4 class="blue" id="id-company-text">&copy; COOL</h4>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="ace-icon fa fa-coffee green"></i> 请输入账号以及密码
										</h4>

										<div class="space-6"></div>

										<form>
											<fieldset>
												<label class="block clearfix"> 
													<span class="block input-icon input-icon-right"> 
														<input name="userName" value="${user.userName }" type="text" class="form-control" placeholder="Username" />
														<i class="ace-icon fa fa-user"></i> 
													</span> 
												</label> 
												<label class="block clearfix"> 
													<span class="block input-icon input-icon-right"> 
														<input name="password" value="${user.password }" type="password" class="form-control" placeholder="Password" />
														<i class="ace-icon fa fa-lock"></i>
													</span> 
												</label>

												<div class="space"></div>

												<div class="clearfix">
													<!-- <label class="inline"> 
														<input type="checkbox" class="ace" /> <span class="lbl"> Remember Me</span> 
													</label> -->
													<button type="reset" class="width-35 pull-left btn btn-sm btn-primary" onclick="onReset()">
														<i class="ace-icon fa fa-refresh"></i> <span class="bigger-110">重置</span>
													</button>
													<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
														<i class="ace-icon fa fa-key"></i> <span class="bigger-110">登录</span>
													</button>
												</div>

												<div class="space"></div>

												<div class="center" id="errmsg">
													<h5 class="red">${errorMsg }</h5>
												</div>

												<div class="space-4"></div>

											</fieldset>
										</form>
									</div>
									<!-- /.widget-main -->
								</div>
								<!-- /.widget-body -->
							</div>
							<!-- /.login-box -->
						</div>
						<!-- /.position-relative -->

						<div class="navbar-fixed-top align-right" style="display: none">
							<br /> 
							&nbsp; <a id="btn-login-dark" href="#">Dark</a> &nbsp; <span class="blue">/</span> 
							&nbsp; <a id="btn-login-blur" href="#">Blur</a> &nbsp; <span class="blue">/</span> 
							&nbsp; <a id="btn-login-light" href="#">Light</a> &nbsp; &nbsp; &nbsp;
						</div>
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.main-content -->
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
	<!--[if !IE]> -->
	<script src="static/ace/1.4.0/components/jquery/dist/jquery.js"></script>
	<!-- <![endif]-->
	<!--[if IE]>
	<script src="static/ace/1.4.0/components/jquery.1x/dist/jquery.js"></script>
	<![endif]-->
	<script type="text/javascript">
		if('ontouchstart' in document.documentElement) document.write("<script src='static/ace/1.4.0/components/_mod/jquery.mobile.custom/jquery.mobile.custom.js'>"+"<"+"/script>");
	</script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		<c:if test="${not empty sessionScope.rs}">
            <c:if test="${rs eq 'emptyParam'}">alert('请输入帐户密码！');</c:if>
            <c:if test="${rs eq 'emptyUser'}">alert('用户名或者密码不正确！');</c:if>
            <c:if test="${rs eq 'passwordError'}">alert('用户名或者密码不正确！');</c:if>
            <c:if test="${rs eq 'norightError'}">alert('该用户暂无登录权限！');</c:if>
            <c:if test="${rs eq 'userLocked'}">alert('该用户已被锁定！');</c:if>
            <c:remove var="rs" scope="session"/>
        </c:if>

        function onReset() {
            document.getElementById("errmsg").innerHTML = "";
        }

		jQuery(function($) {
			$("form").submit(function () {
                var username = $("input[name='userName']").val();
                var password = $("input[name='password']").val();
                if (username == "") {
                    alert("请输入用户名");
                    $("input[name='username']").focus();
                    return false;
                }
                if (password == "") {
                    alert("请输入密码");
                    $("input[name='psw']").focus();
                    return false;
                }
                $("form").attr("action", "system/login.do");
                $("form").attr("method", "post");
            })
		});

		// 修改背景色
		jQuery(function($) {
		 $('#btn-login-dark').on('click', function(e) {
			$('body').attr('class', 'login-layout');
			$('#id-text2').attr('class', 'white');
			$('#id-company-text').attr('class', 'blue');

			e.preventDefault();
		 });
		 $('#btn-login-light').on('click', function(e) {
			$('body').attr('class', 'login-layout light-login');
			$('#id-text2').attr('class', 'grey');
			$('#id-company-text').attr('class', 'blue');

			e.preventDefault();
		 });
		 $('#btn-login-blur').on('click', function(e) {
			$('body').attr('class', 'login-layout blur-login');
			$('#id-text2').attr('class', 'white');
			$('#id-company-text').attr('class', 'light-blue');

			e.preventDefault();
		 });

		});
	</script>
</body>
</html>