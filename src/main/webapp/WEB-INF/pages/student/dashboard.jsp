<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>KSchool</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<jsp:include page="../include/headDashboard.jsp"/>
</head>

<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">
		<section class="content-header">
			<h1>Dashboard</h1>
			<ol class="breadcrumb">
				<li>
					<a href="#">
						<i class="fa fa-dashboard"></i> Home
					</a>
				</li>
				<li class="active">Dashboard</li>
			</ol>
		</section>

		<!-- Main content-->
		<section class="content" ng-app="app" ng-controller="LineCtrl">
			<div class="row" style="margin: 0px;">
				<div class="small-box" style="background-color: #e0f2f2;">
					<div class="inner">
						<div class="row">
							<div
								class="col-sm-3 col-md-3 col-md-offset-0 col-xs-8 col-xs-offset-2">
								<img
									src="${pageContext.request.contextPath }/resources/images/logo.png"
									class="logodash">
							</div>
							<div class="col-sm-9 col-md-7 col-xs-12"
								style="color: black; text-align: center; top: 25px; font-size: 19px;">
								<b>#12, St 323, Sangkat Boeung Kak II, Khan Toul Kork, Phnom
									Penh<br /> Tel:(855)23 99 13 14, Fax(855)23 99 14 15<br />
									Email: info.kshrd@gmail.com, phirum gm@gmail.com<br /> Website:
									www.kshrd.com.kh, Facebook:facebook.com/ksignhrd
								</b>
							</div>
						</div>
					</div>
				</div>
			<!--statistic-->
				<div class="row">
					<sec:authorize access="isAuthenticated()">
						<canvas ng-model="student" ng-init="student='<sec:authentication property="principal.username" />'" id="line" class="chart chart-line" chart-data="data" 
							chart-labels="labels" chart-series="series" chart-options="options" 
							chart-dataset-override="datasetOverride" chart-click="onClick">
						</canvas>
					</sec:authorize>
				</div>
		<!-- Generation Summary -->				
			</div>
		</section>
		</div>
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footDashboard.jsp" />
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<jsp:include page="../include/headChart.jsp" />
	<script src="${pageContext.request.contextPath }/resources/angular/line-chart-script.js"></script>
</body>
</html>