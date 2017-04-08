<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp" />

<!-- BEGIN CONTAINER -->
<!-- <div class="page-container row-fluid"> 去掉上边距-->
<div class="row-fluid">
	<!-- BEGIN PAGE -->
	<div class="page-content page-content-noleft">
		<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
		<div class="container-fluid">
			<!-- BEGIN PAGE HEADER-->
			<div class="row-fluid">
				<div class="span12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->			
					<h3 class="page-title">
						404 Page				<small>404 page </small>
					</h3>
					<ul class="breadcrumb">
						<li>
							<i class="icon-home"></i>
							<a href="${pageContext.request.contextPath}/jsp/index.jsp">Home</a> 
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="#">Extra</a>
							<i class="icon-angle-right"></i>
						</li>
						<li><a href="#">404 Page</a></li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->				
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid page-404">
						<div class="span5 number">
							404
						</div>
						<div class="span7 details">
							<h3>Sorry, Your request is not found.</h3>
							<p>
								Maybe you could change your position and try again.<br />
								Here's a button you can click on it to return to the home page.
							</p>
							<form action="#">You can&nbsp;&nbsp;
								<div class="input-append">                      
									<!-- <input class="m-wrap" size="16" type="text" placeholder="keyword..." /> -->
									<button class="btn blue" onclick="alert();">click me</button>
								</div>
								&nbsp;&nbsp;&nbsp;&nbsp;back to index page!
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
		<!-- END PAGE CONTAINER-->			
	</div>
	<!-- BEGIN PAGE -->	 	
</div>
<!-- END CONTAINER -->
	
<!-- BEGIN FOOTER -->
	<jsp:include page="../inc/footer.jsp"></jsp:include>
<!-- END FOOTER -->