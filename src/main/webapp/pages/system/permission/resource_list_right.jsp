<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>用户员管理</title>
<c:import url="/pages/inc/inc_head.jsp" />
</head>

<body class="no-skin">

	<div class="main-container ace-save-state" id="main-container">

		<div class="main-content">
			<div class="main-content-inner">

					<div class="row">
						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->

							<div class="row">
								<div class="col-xs-12">
									<table id="simple-table" class="table  table-bordered table-hover">
										<thead>
											<tr>
												<th>ID</th>
												<th>资源名称</th>
												<th>资源代码</th>
												<th>排序</th>
												<th>上级ID</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${resourceList }" var="info">
												<tr>
													<td>
														${info.id }
													</td>
													<td>
														${info.resourceName }
													</td>
													<td>
														${info.href }
													</td>
													<td>
															${info.order_no }
													</td>
													<td>
															${info.parentid }
													</td>

												</tr>
											</c:forEach>
										</tbody>
									</table>

									<div class="row">
										<div class="col-xs-6">
											<div class="dataTables_info">
												在<font color=red> ${total} </font>个条目中显示
												<c:choose>
													<c:when test="${total gt StartRow + PageSize -1}">
														${ StartRow } 到 ${StartRow + PageSize -1}
													</c:when>
													<c:otherwise>
														${StartRow} 到 ${total}
													</c:otherwise>
												</c:choose>
												条数据
											</div>
										</div>

										<div class="col-xs-6">
										<div class="dataTables_paginate paging_simple_numbers">
											<ul class="pagination">
												<pg:pager url="${url}" export="offset,currentPageNumber=pageNumber" index="center" items="${total}" maxPageItems="${PageSize}">
													<pg:param name="fid" value="${fid}" />
													<pg:first>
														<li class="paginate_button">
															<a href="${pageUrl}">首页</a>
														</li>
													</pg:first>
													<pg:prev>
														<li class="paginate_button">
															<a href="${pageUrl}">上一页</a>
														</li>
													</pg:prev>
													<pg:pages>
														<c:choose>
															<c:when test="${currentPageNumber eq pageNumber}">
																<li class="paginate_button active">
																	<a href="javascript:void(0);">${pageNumber}</a>
																</li>
															</c:when>
															<c:otherwise>
																<li class="paginate_button">
																	<a href="${pageUrl}">${pageNumber}</a>
																</li>
															</c:otherwise>
														</c:choose>
													</pg:pages>
													<pg:next>
														<li class="paginate_button" tabindex="0">
															<a href="${pageUrl}">下一页</a>
														</li>
													</pg:next>
													<pg:last>
														<li class="paginate_button" tabindex="0">
															<a href="${pageUrl}">尾页</a>
														</li>
													</pg:last>
												</pg:pager>
											</ul>
										</div>
									</div>
									</div>


								</div>
								<!-- /.span -->
								

							</div>
							<!-- /.row -->
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->

	</div>
	<!-- /.main-container -->

	<c:import url="/pages/inc/inc_script.jsp" />
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		<c:if test="${not empty sessionScope.rs}">
            alert('${rs}');
            <c:remove var="rs" scope="session"/>
        </c:if>
	</script>


</body>
</html>
