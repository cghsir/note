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
						500 Page				<small>500 page </small>
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
						<li><a href="#">500 Page</a></li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->				
			<div class="row-fluid">
				<div class="span12">
					<div class="row-fluid page-500">
						<div class="span5 number">
							500
						</div>
						<div class="span7 details">
							<h3>Opps, Something went wrong.</h3>
								<p>
									We are fixing it!<br />
									Please come back in a while.<br />
									You can&nbsp;&nbsp;
									<a href="${pageContext.request.contextPath}/jsp/index.jsp">click me</a> 
									&nbsp;&nbsp;&nbsp;&nbsp;back to index page!
								</p>
						</div>
					</div>
				</div>
				<div class="span12">
					<div class="span7 details">
							<h3 class="page-500">error message:</h3>
								<p>
									<% Exception ex = (Exception) request.getAttribute("ex");%>
									Exception:&nbsp;&nbsp;<%=ex.getMessage()%>
								</p>
							<h3 class="page-500">error more message:</h3>
								<p>
									<% Exception exmore = (Exception) request.getAttribute("exmore");%>
									Exception:&nbsp;&nbsp;<%=exmore.getMessage()%>
								</p>
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