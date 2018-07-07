<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- #section:basics/content.breadcrumbs -->
<div class="breadcrumbs ace-save-state" id="breadcrumbs">
	<ul class="breadcrumb">
		<li>
			<i class="ace-icon fa fa-home home-icon"></i>
			<a href="function/dataAnalysis.do">首页</a>
		</li>

		<li class="active">${param.menu }</li>
	</ul><!-- /.breadcrumb -->

	<!-- #section:basics/content.searchbox -->
	<div class="nav-search" id="nav-search">
		<!-- <form class="form-search">
			<span class="input-icon">
				<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
				<i class="ace-icon fa fa-search nav-search-icon"></i>
			</span>
		</form> -->
		<c:if test="${not empty param.showBack }">
			<a href="javascript:history.back()">
				<i class="ace-icon fa fa-arrow-left"></i>
				返回上一页
			</a>
		</c:if>
	</div><!-- /.nav-search -->
	<!-- /section:basics/content.searchbox -->
</div>
<!-- /section:basics/content.breadcrumbs -->

