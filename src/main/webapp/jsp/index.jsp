<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> 
<jsp:include page="inc/header.jsp" />
<!-- BEGIN BODY -->
<body class="fixed-top">
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href="index.html">
				<img src="${pageContext.request.contextPath}/jsp/assets/img/logo.png" alt="logo" />
				</a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
				<img src="${pageContext.request.contextPath}/jsp/assets/img/menu-toggler.png" alt="" />
				</a>          
				<!-- END RESPONSIVE MENU TOGGLER -->				
				<!-- BEGIN TOP NAVIGATION MENU -->					
				<ul class="nav pull-right">
					<!-- BEGIN NOTIFICATION DROPDOWN -->	
					<li class="dropdown" id="header_notification_bar">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-warning-sign"></i>
						<span class="badge">6</span>
						</a>
						<ul class="dropdown-menu extended notification">
							<li>
								<p>You have 14 new notifications</p>
							</li>
							<li>
								<a href="javascript:;" onclick="App.onNotificationClick(1)">
								<span class="label label-success"><i class="icon-plus"></i></span>
								New user registered. 
								<span class="time">Just now</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="label label-important"><i class="icon-bolt"></i></span>
								Server #12 overloaded. 
								<span class="time">15 mins</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="label label-warning"><i class="icon-bell"></i></span>
								Server #2 not respoding.
								<span class="time">22 mins</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="label label-info"><i class="icon-bullhorn"></i></span>
								Application error.
								<span class="time">40 mins</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="label label-important"><i class="icon-bolt"></i></span>
								Database overloaded 68%. 
								<span class="time">2 hrs</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="label label-important"><i class="icon-bolt"></i></span>
								2 user IP blocked.
								<span class="time">5 hrs</span>
								</a>
							</li>
							<li class="external">
								<a href="#">See all notifications <i class="m-icon-swapright"></i></a>
							</li>
						</ul>
					</li>
					<!-- END NOTIFICATION DROPDOWN -->
					<!-- BEGIN INBOX DROPDOWN -->
					<li class="dropdown" id="header_inbox_bar">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-envelope-alt"></i>
						<span class="badge">5</span>
						</a>
						<ul class="dropdown-menu extended inbox">
							<li>
								<p>You have 12 new messages</p>
							</li>
							<li>
								<a href="#">
								<span class="photo"><img src="${pageContext.request.contextPath}/jsp/assets/img/avatar2.jpg" alt="" /></span>
								<span class="subject">
								<span class="from">Lisa Wong</span>
								<span class="time">Just Now</span>
								</span>
								<span class="message">
								Vivamus sed auctor nibh congue nibh. auctor nibh
								auctor nibh...
								</span>  
								</a>
							</li>
							<li>
								<a href="#">
								<span class="photo"><img src="${pageContext.request.contextPath}/jsp/assets/img/avatar3.jpg" alt="" /></span>
								<span class="subject">
								<span class="from">Richard Doe</span>
								<span class="time">16 mins</span>
								</span>
								<span class="message">
								Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh
								auctor nibh...
								</span>  
								</a>
							</li>
							<li>
								<a href="#">
								<span class="photo"><img src="${pageContext.request.contextPath}/jsp/assets/img/avatar1.jpg" alt="" /></span>
								<span class="subject">
								<span class="from">Bob Nilson</span>
								<span class="time">2 hrs</span>
								</span>
								<span class="message">
								Vivamus sed nibh auctor nibh congue nibh. auctor nibh
								auctor nibh...
								</span>  
								</a>
							</li>
							<li class="external">
								<a href="#">See all messages <i class="m-icon-swapright"></i></a>
							</li>
						</ul>
					</li>
					<!-- END INBOX DROPDOWN -->
					<!-- BEGIN TODO DROPDOWN -->
					<li class="dropdown" id="header_task_bar">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-tasks"></i>
						<span class="badge">5</span>
						</a>
						<ul class="dropdown-menu extended tasks">
							<li>
								<p>You have 12 pending tasks</p>
							</li>
							<li>
								<a href="#">
								<span class="task">
								<span class="desc">New release v1.2</span>
								<span class="percent">30%</span>
								</span>
								<span class="progress progress-success ">
								<span style="width: 30%;" class="bar"></span>
								</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="task">
								<span class="desc">Application deployment</span>
								<span class="percent">65%</span>
								</span>
								<span class="progress progress-danger progress-striped active">
								<span style="width: 65%;" class="bar"></span>
								</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="task">
								<span class="desc">Mobile app release</span>
								<span class="percent">98%</span>
								</span>
								<span class="progress progress-success">
								<span style="width: 98%;" class="bar"></span>
								</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="task">
								<span class="desc">Database migration</span>
								<span class="percent">10%</span>
								</span>
								<span class="progress progress-warning progress-striped">
								<span style="width: 10%;" class="bar"></span>
								</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="task">
								<span class="desc">Web server upgrade</span>
								<span class="percent">58%</span>
								</span>
								<span class="progress progress-info">
								<span style="width: 58%;" class="bar"></span>
								</span>
								</a>
							</li>
							<li>
								<a href="#">
								<span class="task">
								<span class="desc">Mobile development</span>
								<span class="percent">85%</span>
								</span>
								<span class="progress progress-success">
								<span style="width: 85%;" class="bar"></span>
								</span>
								</a>
							</li>
							<li class="external">
								<a href="#">See all tasks <i class="m-icon-swapright"></i></a>
							</li>
						</ul>
					</li>
					<!-- END TODO DROPDOWN -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar1_small.jpg" />
						<span class="username"><shiro:principal /></span>
						<i class="icon-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="extra_profile.html"><i class="icon-user"></i> My Profile</a></li>
							<li><a href="calendar.html"><i class="icon-calendar"></i> My Calendar</a></li>
							<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
							<li class="divider"></li>
							<li><a href="${pageContext.request.contextPath}/logout"><i class="icon-key"></i> Log Out</a></li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->	
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->        	
			<ul>
				<li>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler hidden-phone"></div>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				</li>
				<li>
					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
					<form class="sidebar-search">
						<div class="input-box">
							<a href="javascript:;" class="remove"></a>
							<input type="text" placeholder="Search..." />				
							<input type="button" class="submit" value=" " />
						</div>
					</form>
					<!-- END RESPONSIVE QUICK SEARCH FORM -->
				</li>
				<li class="start active ">
					<a href="index.html">
					<i class="icon-home"></i> 
					<span class="title">主页</span>
					<span class="selected"></span>
					</a>
				</li>
				<li class="start">
					<a href="https://github.com/cghsir/note">
					<i class="icon-home"></i> 
					<span class="title">github</span>
					<span class="selected"></span>
					</a>
				</li>
				<li class="has-sub ">
					<a href="javascript:;">
					<i class="icon-bookmark-empty"></i> 
					<span class="title">角色</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub">
						<li ><a href="ui_general.html">General</a></li>
						<li ><a href="ui_buttons.html">Buttons</a></li>
						<li ><a href="ui_tabs_accordions.html">Tabs & Accordions</a></li>
						<li ><a href="ui_sliders.html">Sliders</a></li>
						<li ><a href="ui_tiles.html">Tiles</a></li>
						<li ><a href="ui_typography.html">Typography</a></li>
						<li ><a href="ui_tree.html">Tree View</a></li>
						<li ><a href="ui_nestable.html">Nestable List</a></li>
					</ul>
				</li>
				<li class="has-sub ">
					<a href="javascript:;">
					<i class="icon-table"></i> 
					<span class="title">权限</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub">
						<li ><a href="form_layout.html">Form Layouts</a></li>
						<li ><a href="form_samples.html">Advance Form Samples</a></li>
						<li ><a href="form_component.html">Form Components</a></li>
						<li ><a href="form_wizard.html">Form Wizard</a></li>
						<li ><a href="form_validation.html">Form Validation</a></li>
						<li ><a href="form_fileupload.html">Multiple File Upload</a></li>
						<li ><a href="form_dropzone.html">Dropzone File Upload</a></li>
					</ul>
				</li>
				<li class="has-sub ">
					<a href="javascript:;">
					<i class="icon-th-list"></i> 
					<span class="title">数据表格</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub">
						<li ><a href="table_basic.html">Basic Tables</a></li>
						<li ><a href="table_managed.html">Managed Tables</a></li>
						<li ><a href="table_editable.html">Editable Tables</a></li>
					</ul>
				</li>
				<li class="has-sub ">
					<a href="javascript:;">
					<i class="icon-th-list"></i> 
					<span class="title">Portlets</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub">
						<li ><a href="portlet_general.html">General Portlets</a></li>
						<li ><a href="portlet_draggable.html">Draggable Portlets</a></li>
					</ul>
				</li>
				<li class="has-sub ">
					<a href="javascript:;">
					<i class="icon-map-marker"></i> 
					<span class="title">Maps</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub">
						<li ><a href="maps_google.html">Google Maps</a></li>
						<li ><a href="maps_vector.html">Vector Maps</a></li>
					</ul>
				</li>
				<li class="">
					<a href="charts.html">
					<i class="icon-bar-chart"></i> 
					<span class="title">Visual Charts</span>
					</a>
				</li>
				<li class="">
					<a href="calendar.html">
					<i class="icon-calendar"></i> 
					<span class="title">Calendar</span>
					</a>
				</li>
				<li class="">
					<a href="gallery.html">
					<i class="icon-camera"></i> 
					<span class="title">Gallery</span>
					</a>
				</li>
				<li class="has-sub ">
					<a href="javascript:;">
					<i class="icon-briefcase"></i> 
					<span class="title">Extra</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub">
						<li ><a href="extra_profile.html">User Profile</a></li>
						<li ><a href="extra_faq.html">FAQ</a></li>
						<li ><a href="extra_search.html">Search Results</a></li>
						<li ><a href="extra_invoice.html">Invoice</a></li>
						<li ><a href="extra_pricing_table.html">Pricing Tables</a></li>
						<li ><a href="extra_404.html">404 Page</a></li>
						<li ><a href="extra_500.html">500 Page</a></li>
						<li ><a href="extra_blank.html">Blank Page</a></li>
						<li ><a href="extra_full_width.html">Full Width Page</a></li>
					</ul>
				</li>
				<li class="">
					<a href="login.html">
					<i class="icon-user"></i> 
					<span class="title">Login Page</span>
					</a>
				</li>
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div id="portlet-config" class="modal hide">
				<div class="modal-header">
					<button data-dismiss="modal" class="close" type="button"></button>
					<h3>Widget Settings</h3>
				</div>
				<div class="modal-body">
					<p>Here will be a configuration form</p>
				</div>
			</div>
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN STYLE CUSTOMIZER -->
						<div class="color-panel hidden-phone">
							<div class="color-mode-icons icon-color"></div>
							<div class="color-mode-icons icon-color-close"></div>
							<div class="color-mode">
								<p>THEME COLOR</p>
								<ul class="inline">
									<li class="color-black current color-default" data-style="default"></li>
									<li class="color-blue" data-style="blue"></li>
									<li class="color-brown" data-style="brown"></li>
									<li class="color-purple" data-style="purple"></li>
									<li class="color-white color-light" data-style="light"></li>
								</ul>
								<label class="hidden-phone">
								<input type="checkbox" class="header" checked value="" />
								<span class="color-mode-label">Fixed Header</span>
								</label>							
							</div>
						</div>
						<!-- END BEGIN STYLE CUSTOMIZER -->   	
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->			
						<h3 class="page-title">
							Dashboard				
							<small>statistics and more</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="index.html">Home</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">Dashboard</a></li>
							<li class="pull-right no-text-shadow">
								<div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive" data-tablet="" data-desktop="tooltips" data-placement="top" data-original-title="Change dashboard date range">
									<i class="icon-calendar"></i>
									<span></span>
									<i class="icon-angle-down"></i>
								</div>
							</li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<div id="dashboard">
					<!-- BEGIN DASHBOARD STATS -->
					<div class="row-fluid">
						<shiro:hasRole name="admin">
						<div class="span3 responsive" data-tablet="span6" data-desktop="span3">
							<div class="dashboard-stat blue">
								<div class="visual">
									<i class="icon-comments"></i>
								</div>
								<div class="details">
									<div class="number">
										1349
									</div>
									<div class="desc">									
										注册用户数量
									</div>
								</div>
								<a class="more" href="#">
								View more <i class="m-icon-swapright m-icon-white"></i>
								</a>						
							</div>
						</div>
						</shiro:hasRole>
						<div class="span3 responsive" data-tablet="span6" data-desktop="span3">
							<div class="dashboard-stat green">
								<div class="visual">
									<i class="icon-shopping-cart"></i>
								</div>
								<div class="details">
									<div class="number">549</div>
									<div class="desc">New Orders</div>
								</div>
								<a class="more" href="#">
								View more <i class="m-icon-swapright m-icon-white"></i>
								</a>						
							</div>
						</div>
						<div class="span3 responsive" data-tablet="span6  fix-offset" data-desktop="span3">
							<div class="dashboard-stat purple">
								<div class="visual">
									<i class="icon-globe"></i>
								</div>
								<div class="details">
									<div class="number">+89%</div>
									<div class="desc">Brand Popularity</div>
								</div>
								<a class="more" href="#">
								View more <i class="m-icon-swapright m-icon-white"></i>
								</a>						
							</div>
						</div>
						<div class="span3 responsive" data-tablet="span6" data-desktop="span3">
							<div class="dashboard-stat yellow">
								<div class="visual">
									<i class="icon-bar-chart"></i>
								</div>
								<div class="details">
									<div class="number">12,5M$</div>
									<div class="desc">Total Profit</div>
								</div>
								<a class="more" href="#">
								View more <i class="m-icon-swapright m-icon-white"></i>
								</a>						
							</div>
						</div>
					</div>
					<!-- END DASHBOARD STATS -->
					<div class="clearfix"></div>
					<div class="row-fluid">
						<div class="span6">
							<!-- BEGIN PORTLET-->
							<div class="portlet solid bordered light-grey">
								<div class="portlet-title">
									<h4><i class="icon-bar-chart"></i>Site Visits</h4>
									<div class="tools">
										<div class="btn-group pull-right" data-toggle="buttons-radio">
											<a href="javascript:;" class="btn mini">Users</a>
											<a href="javascript:;" class="btn mini active">Feedbacks</a>
										</div>
									</div>
								</div>
								<div class="portlet-body">
									<div id="site_statistics_loading">
										<img src="${pageContext.request.contextPath}/jsp/assets/img/loading.gif" alt="loading" />
									</div>
									<div id="site_statistics_content" class="hide">
										<div id="site_statistics" class="chart"></div>
									</div>
								</div>
							</div>
							<!-- END PORTLET-->
						</div>
						<div class="span6">
							<!-- BEGIN PORTLET-->
							<div class="portlet solid light-grey bordered">
								<div class="portlet-title">
									<h4><i class="icon-bullhorn"></i>Activities</h4>
									<div class="tools">
										<div class="btn-group pull-right" data-toggle="buttons-radio">
											<a href="javascript:;" class="btn blue mini active">Users</a>
											<a href="javascript:;" class="btn blue mini">Orders</a>
										</div>
									</div>
								</div>
								<div class="portlet-body">
									<div id="site_activities_loading">
										<img src="${pageContext.request.contextPath}/jsp/assets/img/loading.gif" alt="loading" />
									</div>
									<div id="site_activities_content" class="hide">
										<div id="site_activities" style="height:100px;"></div>
									</div>
								</div>
							</div>
							<!-- END PORTLET-->
							<!-- BEGIN PORTLET-->
							<div class="portlet solid bordered light-grey">
								<div class="portlet-title">
									<h4><i class="icon-signal"></i>Server Load</h4>
									<div class="tools">
										<div class="btn-group pull-right" data-toggle="buttons-radio">
											<a href="javascript:;" class="btn red mini active">
											<span class="hidden-phone">Database</span>
											<span class="visible-phone">DB</span></a>
											<a href="javascript:;" class="btn red mini">Web</a>
										</div>
									</div>
								</div>
								<div class="portlet-body">
									<div id="load_statistics_loading">
										<img src="${pageContext.request.contextPath}/jsp/assets/img/loading.gif" alt="loading" />
									</div>
									<div id="load_statistics_content" class="hide">
										<div id="load_statistics" style="height:108px;"></div>
									</div>
								</div>
							</div>
							<!-- END PORTLET-->
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row-fluid">
						<div class="span6">
							<!-- BEGIN REGIONAL STATS PORTLET-->
							<div class="portlet">
								<div class="portlet-title">
									<h4><i class="icon-globe"></i>Regional Stats</h4>
									<div class="tools">
										<a href="javascript:;" class="collapse"></a>
										<a href="#portlet-config" data-toggle="modal" class="config"></a>
										<a href="javascript:;" class="reload"></a>
										<a href="javascript:;" class="remove"></a>
									</div>
								</div>
								<div class="portlet-body">
									<div id="region_statistics_loading">
										<img src="${pageContext.request.contextPath}/jsp/assets/img/loading.gif" alt="loading" />
									</div>
									<div id="region_statistics_content" class="hide">
										<div class="btn-toolbar">
											<div class="btn-group " data-toggle="buttons-radio">
												<a href="javascript:;" class="btn mini active">Users</a>
												<a href="javascript:;" class="btn mini">Orders</a>	
											</div>
											<div class="btn-group pull-right">
												<a href="javascript:;" class="btn mini dropdown-toggle" data-toggle="dropdown">
												Select Region <span class="icon-angle-down"></span>
												</a>
												<ul class="dropdown-menu">
													<li><a href="javascript:;" id="regional_stat_world">World</a></li>
													<li><a href="javascript:;" id="regional_stat_usa">USA</a></li>
													<li><a href="javascript:;" id="regional_stat_europe">Europe</a></li>
													<li><a href="javascript:;" id="regional_stat_russia">Russia</a></li>
													<li><a href="javascript:;" id="regional_stat_germany">Germany</a></li>
												</ul>
											</div>
										</div>
										<div id="vmap_world" class="vmaps chart hide"></div>
										<div id="vmap_usa" class="vmaps chart hide"></div>
										<div id="vmap_europe" class="vmaps chart hide"></div>
										<div id="vmap_russia" class="vmaps chart hide"></div>
										<div id="vmap_germany" class="vmaps chart hide"></div>
									</div>
								</div>
							</div>
							<!-- END REGIONAL STATS PORTLET-->
						</div>
						<div class="span6">
							<!-- BEGIN PORTLET-->
							<div class="portlet paddingless">
								<div class="portlet-title line">
									<h4><i class="icon-bell"></i>Feeds</h4>
									<div class="tools">
										<a href="javascript:;" class="collapse"></a>
										<a href="#portlet-config" data-toggle="modal" class="config"></a>
										<a href="javascript:;" class="reload"></a>
										<a href="javascript:;" class="remove"></a>
									</div>
								</div>
								<div class="portlet-body">
									<!--BEGIN TABS-->
									<div class="tabbable tabbable-custom">
										<ul class="nav nav-tabs">
											<li class="active"><a href="#tab_1_1" data-toggle="tab">System</a></li>
											<li><a href="#tab_1_2" data-toggle="tab">Activities</a></li>
											<li><a href="#tab_1_3" data-toggle="tab">Recent Users</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane active" id="tab_1_1">
												<div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible1="1">
													<ul class="feeds">
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-success">								
																			<i class="icon-bell"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			You have 4 pending tasks.
																			<span class="label label-important label-mini">
																			Take action 
																			<i class="icon-share-alt"></i>
																			</span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	Just now
																</div>
															</div>
														</li>
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New version v1.4 just lunched!	
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		20 mins
																	</div>
																</div>
															</a>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-important">								
																			<i class="icon-bolt"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			Database server #12 overloaded. Please fix the issue.								
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	24 mins
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-info">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	30 mins
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-success">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	40 mins
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-warning">								
																			<i class="icon-plus"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New user registered.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	1.5 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-success">								
																			<i class="icon-bell-alt"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			Web server hardware needs to be upgraded.	
																			<span class="label label-inverse label-mini">Overdue</span>					
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	2 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	3 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-warning">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	5 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-info">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	18 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	21 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-info">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	22 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	21 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-info">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	22 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	21 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-info">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	22 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	21 hours
																</div>
															</div>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-info">								
																			<i class="icon-bullhorn"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			New order received. Please take care of it.						
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	22 hours
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<div class="tab-pane" id="tab_1_2">
												<div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible1="1">
													<ul class="feeds">
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New user registered
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		Just now
																	</div>
																</div>
															</a>
														</li>
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New order received 
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		10 mins
																	</div>
																</div>
															</a>
														</li>
														<li>
															<div class="col1">
																<div class="cont">
																	<div class="cont-col1">
																		<div class="label label-important">								
																			<i class="icon-bolt"></i>
																		</div>
																	</div>
																	<div class="cont-col2">
																		<div class="desc">
																			Order #24DOP4 has been rejected. 	
																			<span class="label label-important label-mini">Take action <i class="icon-share-alt"></i></span>
																		</div>
																	</div>
																</div>
															</div>
															<div class="col2">
																<div class="date">
																	24 mins
																</div>
															</div>
														</li>
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New user registered
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		Just now
																	</div>
																</div>
															</a>
														</li>
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New user registered
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		Just now
																	</div>
																</div>
															</a>
														</li>
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New user registered
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		Just now
																	</div>
																</div>
															</a>
														</li>
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New user registered
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		Just now
																	</div>
																</div>
															</a>
														</li>
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New user registered
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		Just now
																	</div>
																</div>
															</a>
														</li>
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New user registered
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		Just now
																	</div>
																</div>
															</a>
														</li>
														<li>
															<a href="#">
																<div class="col1">
																	<div class="cont">
																		<div class="cont-col1">
																			<div class="label label-success">								
																				<i class="icon-bell"></i>
																			</div>
																		</div>
																		<div class="cont-col2">
																			<div class="desc">
																				New user registered
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col2">
																	<div class="date">
																		Just now
																	</div>
																</div>
															</a>
														</li>
													</ul>
												</div>
											</div>
											<div class="tab-pane" id="tab_1_3">
												<div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible1="1">
													<div class="row-fluid">
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Robert Nilson</a> 
																	<span class="label label-success">Approved</span>
																</div>
																<div>29 Jan 2013 10:45AM</div>
															</div>
														</div>
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Lisa Miller</a> 
																	<span class="label label-info">Pending</span>
																</div>
																<div>19 Jan 2013 10:45AM</div>
															</div>
														</div>
													</div>
													<div class="row-fluid">
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Eric Kim</a> 
																	<span class="label label-info">Pending</span>
																</div>
																<div>19 Jan 2013 12:45PM</div>
															</div>
														</div>
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Lisa Miller</a> 
																	<span class="label label-important">In progress</span>
																</div>
																<div>19 Jan 2013 11:55PM</div>
															</div>
														</div>
													</div>
													<div class="row-fluid">
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Eric Kim</a> 
																	<span class="label label-info">Pending</span>
																</div>
																<div>19 Jan 2013 12:45PM</div>
															</div>
														</div>
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Lisa Miller</a> 
																	<span class="label label-important">In progress</span>
																</div>
																<div>19 Jan 2013 11:55PM</div>
															</div>
														</div>
													</div>
													<div class="row-fluid">
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div><a href="#">Eric Kim</a> <span class="label label-info">Pending</span>
																</div>
																<div>19 Jan 2013 12:45PM</div>
															</div>
														</div>
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Lisa Miller</a> 
																	<span class="label label-important">In progress</span>
																</div>
																<div>19 Jan 2013 11:55PM</div>
															</div>
														</div>
													</div>
													<div class="row-fluid">
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div><a href="#">Eric Kim</a> <span class="label label-info">Pending</span>
																</div>
																<div>19 Jan 2013 12:45PM</div>
															</div>
														</div>
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Lisa Miller</a> 
																	<span class="label label-important">In progress</span>
																</div>
																<div>19 Jan 2013 11:55PM</div>
															</div>
														</div>
													</div>
													<div class="row-fluid">
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Eric Kim</a> 
																	<span class="label label-info">Pending</span>
																</div>
																<div>19 Jan 2013 12:45PM</div>
															</div>
														</div>
														<div class="span6 user-info">
															<img alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar.png" />
															<div class="details">
																<div>
																	<a href="#">Lisa Miller</a> 
																	<span class="label label-important">In progress</span>
																</div>
																<div>19 Jan 2013 11:55PM</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!--END TABS-->
								</div>
							</div>
							<!-- END PORTLET-->
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row-fluid">
						<div class="span6">
							<!-- BEGIN PORTLET-->
							<div class="portlet box blue calendar">
								<div class="portlet-title">
									<h4><i class="icon-calendar"></i>Calendar</h4>
								</div>
								<div class="portlet-body light-grey">
									<div id="calendar">
									</div>
								</div>
							</div>
							<!-- END PORTLET-->
						</div>
						<div class="span6">
							<!-- BEGIN PORTLET-->
							<div class="portlet">
								<div class="portlet-title line">
									<h4><i class="icon-comments"></i>Chats</h4>
									<div class="tools">
										<a href="javascript:;" class="collapse"></a>
										<a href="#portlet-config" data-toggle="modal" class="config"></a>
										<a href="javascript:;" class="reload"></a>
										<a href="javascript:;" class="remove"></a>
									</div>
								</div>
								<div class="portlet-body" id="chats">
									<div class="scroller" data-height="343px" data-always-visible="1" data-rail-visible1="1">
										<ul class="chats">
											<li class="in">
												<img class="avatar" alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar1.jpg" />
												<div class="message">
													<span class="arrow"></span>
													<a href="#" class="name">Bob Nilson</a>
													<span class="datetime">at Jul 25, 2012 11:09</span>
													<span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
												</div>
											</li>
											<li class="out">
												<img class="avatar" alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar2.jpg" />
												<div class="message">
													<span class="arrow"></span>
													<a href="#" class="name">Lisa Wong</a>
													<span class="datetime">at Jul 25, 2012 11:09</span>
													<span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
												</div>
											</li>
											<li class="in">
												<img class="avatar" alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar1.jpg" />
												<div class="message">
													<span class="arrow"></span>
													<a href="#" class="name">Bob Nilson</a>
													<span class="datetime">at Jul 25, 2012 11:09</span>
													<span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
												</div>
											</li>
											<li class="out">
												<img class="avatar" alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar3.jpg" />
												<div class="message">
													<span class="arrow"></span>
													<a href="#" class="name">Richard Doe</a>
													<span class="datetime">at Jul 25, 2012 11:09</span>
													<span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
												</div>
											</li>
											<li class="in">
												<img class="avatar" alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar3.jpg" />
												<div class="message">
													<span class="arrow"></span>
													<a href="#" class="name">Richard Doe</a>
													<span class="datetime">at Jul 25, 2012 11:09</span>
													<span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
												</div>
											</li>
											<li class="out">
												<img class="avatar" alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar1.jpg" />
												<div class="message">
													<span class="arrow"></span>
													<a href="#" class="name">Bob Nilson</a>
													<span class="datetime">at Jul 25, 2012 11:09</span>
													<span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
												</div>
											</li>
											<li class="in">
												<img class="avatar" alt="" src="${pageContext.request.contextPath}/jsp/assets/img/avatar3.jpg" />
												<div class="message">
													<span class="arrow"></span>
													<a href="#" class="name">Richard Doe</a>
													<span class="datetime">at Jul 25, 2012 11:09</span>
													<span class="body">
													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, 
													sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
													</span>
												</div>
											</li>
										</ul>
									</div>
									<div class="chat-form">
										<div class="input-cont">   
											<input class="m-wrap" type="text" placeholder="Type a message here..." />
										</div>
										<div class="btn-cont"> 
											<span class="arrow"></span>
											<a href="javascript:;" class="btn blue icn-only"><i class="icon-ok icon-white"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!-- END PORTLET-->
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTAINER-->		
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->

<jsp:include page="inc/footer.jsp"></jsp:include>