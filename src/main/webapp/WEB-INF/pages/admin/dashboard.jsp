<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<jsp:include page="../include/headDashboard.jsp" />
<jsp:include page="../include/headChart.jsp" />
<style>
	.row{
		    margin-right: 0;
    		margin-left: 0;
	}
	<!-- Char styel start here-->
	.vertical-skills {
    margin-top: 60px;
    text-align: center; }
    .vertical-skills li {
      display: inline-block;
      position: relative;
      width: 30px;
      height: 200px;
      background: #f0f0f0;
      margin: 0 10px; }
      @media (max-width: 400px) {
        .vertical-skills li {
          width: 25px; } }
      .vertical-skills li span.skill {
        position: absolute;
        animation-duration: 3s;
       animation-name: height;
        left: 0;
        right: 0;
        bottom: 0; }
      .vertical-skills li span.title {
        position: absolute;
        left: 0;
        right: 0;
        text-align: center;
        bottom: -20px; }

        /* ANIMATIONS */
@keyframes height {
  0%, 100% {
    transition-timing-function: cubic-bezier(1, 0, 0.65, 0.85);
  }
  0% {
    height: 0;
  }
  100% {
    max-height: 100%;
  }
 
	<!-- Char styel end here-->
</style>
</head>

<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent" style="padding-left:15px; padding-right:15px">
		<section class="content-header">
			<h1>Dashboard</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
		</section>
		<!-- Main content-->
		<section class="content">
			<div class="row" style="margin: 0 !important">
				<div class="small-box" style="background-color: #e0f2f2;">
					<div class="inner" style="padding-bottom: 35px">
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
		</div>
		<!--statistic-->

 					<div class="row" ng-app='app' ng-controller='BarCtrl'>
 						<h3 style="text-align:center;font-weight: 900;">SUMMARY STUDENT IN GENERATION AND COURSE</h3>
						<canvas id="bar" class="chart chart-bar"
  								chart-data="data" chart-labels="labels" chart-series="series">
						</canvas>
				 	</div>
				<!-- <div class="row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<p>Generation 1:</p>
						<p>Generation 2:</p>
						<p>Generation 3:</p>
						<p>Generation 4:</p>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2 pull-left">
						<p>30%</p>
						<p>70%</p>
						<p>90%</p>
						<p>100%</p>
					</div>
				</div> -->
		<!--Chart end here -->
		</section>
	</div>
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footDashboard.jsp" />
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<!-- <script>
		var app = angular.module('app',[]);
		app.controller('ctrl', function($scope, $http) {
			
			
	});
</script> -->
	
</body>
</html>