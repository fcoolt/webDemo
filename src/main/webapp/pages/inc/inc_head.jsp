<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<%
			String path = request.getContextPath();
			// 获得项目完全路径（假设你的项目叫MyApp，那么获得到的地址就是 http://localhost:8080/MyApp/）:
			String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		%>
		<base href="<%=basePath%>" />
		
		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="static/ace/1.4.0/assets/css/bootstrap.css" />
		<link rel="stylesheet" href="static/ace/1.4.0/components/font-awesome/css/font-awesome.css" />

		<!-- jquery-ui & bootstrap-datepicker3 -->
		<link rel="stylesheet" href="static/ace/1.4.0/components/_mod/jquery-ui/jquery-ui.css" />
		<link rel="stylesheet" href="static/ace/1.4.0/components/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css" />
		<!-- 编辑器 -->
		<link rel="stylesheet" href="static/ace/1.4.0/components/_mod/jquery-ui.custom/jquery-ui.custom.css" />
		<!-- 图片裁剪控件cropper -->
		<link rel="stylesheet" href="static/cropper/dist/cropper.css">
		<link rel="stylesheet" href="static/cropper/demo/css/main.css">

		<!-- text fonts -->
		<link rel="stylesheet" href="static/ace/1.4.0/assets/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="static/ace/1.4.0/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="static/ace/1.4.0/assets/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="static/ace/1.4.0/assets/css/ace-skins.css" />
		<link rel="stylesheet" href="static/ace/1.4.0/assets/css/ace-rtl.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="static/ace/1.4.0/assets/css/ace-ie.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="static/ace/1.4.0/assets/js/ace-extra.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="static/ace/1.4.0/components/html5shiv/dist/html5shiv.min.js"></script>
		<script src="static/ace/1.4.0/components/respond/dest/respond.min.js"></script>
		<![endif]-->
		
