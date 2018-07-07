<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>
						
			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				<ul class="nav nav-list">
					<shiro:hasPermission  name="functionalOperation">
						<li <c:if test="${fn:startsWith(param.menu, '0-')}">class="active open"</c:if>>
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text">
								功能操作
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<shiro:hasPermission  name="dataAnalysis">
								<li <c:if test="${fn:startsWith(param.menu, '0-1')}">class="active"</c:if>>
									<a href="function/dataAnalysis.do">
										<i class="menu-icon fa fa-caret-right"></i>
										数据分析
									</a>
									<b class="arrow"></b>
								</li>
							</shiro:hasPermission >

							<shiro:hasPermission  name=" dealPlan">
								<li <c:if test="${fn:startsWith(param.menu, '0-2')}">class="active"</c:if>>
									<a href="function/dealPlan.do">
										<i class="menu-icon fa fa-caret-right"></i>
										处理方案
									</a>
									<b class="arrow"></b>
								</li>
							</shiro:hasPermission >

						</ul>
					</li>
					</shiro:hasPermission >

					<shiro:hasPermission  name="basicManagement">
						<li <c:if test="${fn:startsWith(param.menu, '1-')}">class="active open"</c:if>>
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-cog"></i>
							<span class="menu-text">
								基础管理
							</span>
			
							<b class="arrow fa fa-angle-down"></b>
						</a>
			
						<b class="arrow"></b>
			
						<ul class="submenu">
							<shiro:hasPermission  name="dataManagement">
								<li <c:if test="${fn:startsWith(param.menu, '1-1')}">class="active"</c:if>>
									<a href="foundation/dataManagement.do" >
										<i class="menu-icon fa fa-caret-right"></i>
										数据管理
									</a>
									<b class="arrow"></b>
								</li>
							</shiro:hasPermission >

							<shiro:hasPermission  name="issuesManagement">
								<li <c:if test="${fn:startsWith(param.menu, '1-2')}">class="active"</c:if>>
									<a href="foundation/questionManagement.do">
										<i class="menu-icon fa fa-caret-right"></i>
										问题管理
									</a>

									<b class="arrow"></b>

								</li>
							</shiro:hasPermission >
						</ul>
					</li>
					</shiro:hasPermission >

					<shiro:hasPermission  name="systemSetting">
						<li <c:if test="${fn:startsWith(param.menu, '2-')}">class="active open"</c:if>>
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-cogs"></i>
							<span class="menu-text">
								系统设置
							</span>
							<b class="arrow fa fa-angle-down"></b>
						</a>
						<b class="arrow"></b>
						<ul class="submenu">
							<shiro:hasPermission  name="authorityManagement">
								<li <c:if test="${fn:startsWith(param.menu, '2-1-')}">class="active open"</c:if>>
								<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-right"></i>
									权限管理
									<b class="arrow fa fa-angle-down"></b>
								</a>
			
								<b class="arrow"></b>
			
								<ul class="submenu">
									<shiro:hasPermission  name="userManagement">
										<li <c:if test="${fn:startsWith(param.menu, '2-1-1')}">class="active"</c:if>>
											<a href="system/permission/user_list.do">
												<i class="menu-icon fa fa-caret-right"></i>
												用户管理
											</a>
											<b class="arrow"></b>
										</li>
									</shiro:hasPermission >

									<shiro:hasPermission  name="roleManagement">
										<li <c:if test="${fn:startsWith(param.menu, '2-1-2')}">class="active"</c:if>>
											<a href="system/permission/role_list.do">
												<i class="menu-icon fa fa-caret-right"></i>
												角色管理
											</a>
											<b class="arrow"></b>
										</li>
									</shiro:hasPermission >

									<shiro:hasPermission  name="functionManagement">
										<li <c:if test="${fn:startsWith(param.menu, '2-1-3')}">class="active"</c:if>>
											<a href="system/permission/resource_list.do">
												<i class="menu-icon fa fa-caret-right"></i>
												功能管理
											</a>
											<b class="arrow"></b>
										</li>
									</shiro:hasPermission >

								</ul>
							</li>
							</shiro:hasPermission >
							<shiro:hasPermission  name="systemLog">
								<li <c:if test="${fn:startsWith(param.menu, '2-2')}">class="active"</c:if>>
								<a href="system/systemLog.do">
									<i class="menu-icon fa fa-caret-right"></i>
									系统日志
								</a>
								<b class="arrow"></b>
							</li>
							</shiro:hasPermission >
						</ul>
					</li>
					</shiro:hasPermission >
					<shiro:hasPermission  name="otherPage">
						<li <c:if test="${fn:startsWith(param.menu, '100-')}">class="active open"</c:if>>
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-file-o"></i>
			
							<span class="menu-text">
								其他页面
								<!-- <span class="badge badge-primary">1</span> -->
							</span>
			
							<b class="arrow fa fa-angle-down"></b>
						</a>
			
						<b class="arrow"></b>
			
						<ul class="submenu">
							<shiro:hasPermission  name="blankPage">
								<li <c:if test="${fn:startsWith(param.menu, '100-1')}">class="active"</c:if>>
									<a href="others/blank.do">
										<i class="menu-icon fa fa-caret-right"></i>
										空白页
									</a>
									<b class="arrow"></b>
								</li>
							</shiro:hasPermission >
							<shiro:hasPermission  name="error403">
								<li <c:if test="${fn:startsWith(param.menu, '100-2')}">class="active"</c:if>>
									<a href="others/error/403.do">
										<i class="menu-icon fa fa-caret-right"></i>
										禁止访问
									</a>
									<b class="arrow"></b>
								</li>
							</shiro:hasPermission >
						</ul>
					</li>
					</shiro:hasPermission >
				</ul><!-- /.nav-list -->
			
				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			
				<!-- /section:basics/sidebar.layout.minimize -->
			</div>
			<!-- /section:basics/sidebar -->
