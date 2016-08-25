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
		<div class="row">
			<!--Chart start here -->
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<script type="text/javascript">
						  window.onload = function () {
						    var chart = new CanvasJS.Chart("chartContainer",
						    {
						      title:{
						        text: "Score by subject in each class",
						        fontFamily: "arial",
						        color:"black",
						        fontWeight: "normal"
						      },
						
						      legend:{
						        verticalAlign: "bottom",
						        horizontalAlign: "center"
						      },
						      data: [
						      {
						        //startAngle: 45,
						       indexLabelFontSize: 14,
						       indexLabelFontFamily: "Garamond",
						       indexLabelFontColor: "black",
						       indexLabelPlacement: "outside",
						       type: "doughnut",
						       showInLegend: true,
						       dataPoints: [
								   {  y: 20, legendText:"BTB Korean", indexLabel: "BTB Korea" },
							       {  y: 20, legendText:"BTB Web", indexLabel: "BTB Web" },
							       {  y: 20, legendText:"BTB Java", indexLabel: "BTB Java" },
							       {  y: 20, legendText:"PP Korean", indexLabel: "PP Korea" },
							       {  y: 20, legendText:"PP Web", indexLabel: "PP Web" },
							       {  y: 20, legendText:"PP Java", indexLabel: "PP Java" },
							       {  y: 20, legendText:"SR Korean", indexLabel: "SR Korean" },
							       {  y: 20, legendText:"SR Web", indexLabel: "SR Web" },
							       {  y: 20, legendText:"SR Java", indexLabel: "SR Java%" },
							       {  y: 20, legendText:"KS Korean", indexLabel: "KS Korean" },
							       {  y: 20, legendText:"KS Web", indexLabel: "KS Web" },
							       {  y: 20, legendText:"KS Java", indexLabel: "KS Java" }
								]
						     }
						     ]
						   });
						
						    chart.render();
  							}
 						 </script>
 						 <div id="chartContainer" style="height: 300px; width: 100%;">
   						 </div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<h3>Score</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 col-sm-2 col-xs-2">
						<p>Battambang class:</p>
						<p>Phnom Penh class:</p>
						<p>Siemreap class:</p>
						<p>Kampongsom class:</p>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2 pull-left">
						<p>30%</p>
						<p>70%</p>
						<p>90%</p>
						<p>100%</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<h3>Generation Detail</h3>
					</div>
				</div>
				<div class="row" style="margin-bottom:10px;">
				<div class="col-md-3 col-sm-3 col-xs-3 pull-center">
					<h5>Generation 1</h5>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-3 pull-center">
					<h5>Generation 2</h5>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-3 pull-center">
					<h5>Generation 3</h5>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-3 pull-center">
					<h5>Generation 4</h5>
				</div>
			</div>
				<div class="row" style="background-color: #fff">
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="vertical-skills pull-right xs-center">
							<ul class="list-inline">
								<li><span class="skill" style="height:90%; background:#ff0000;"></span><span class="title">Female</span></li>
								<li><span class="skill" style="height:85%; background:#00bbff;"></span><span class="title">Male</span></li>
								<li><span class="skill" style="height:75%; background:#9168e5;"></span><span class="title">Total</span></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="vertical-skills pull-right xs-center">
							<ul class="list-inline" >
								<li><span class="skill" style="height:90%; background:#ff0000;"></span><span class="title">Female</span></li>
								<li><span class="skill" style="height:85%; background:#00bbff;"></span><span class="title">Male</span></li>
								<li><span class="skill" style="height:75%; background:#9168e5;"></span><span class="title">Total</span></li>
							</ul> 
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="vertical-skills pull-right xs-center">
							<ul class="list-inline" >
								<li><span class="skill" style="height:90%; background:#ff0000;"></span><span class="title">Female</span></li>
								<li><span class="skill" style="height:85%; background:#00bbff;"></span><span class="title">Male</span></li>
								<li><span class="skill" style="height:75%; background:#9168e5;"></span><span class="title">Total</span></li>
							</ul> 
						</div>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3">
						<div class="vertical-skills pull-right xs-center">
							<ul class="list-inline" >
								<li><span class="skill" style="height:90%; background:#ff0000;"></span><span class="title">Female</span></li>
								<li><span class="skill" style="height:85%; background:#00bbff;"></span><span class="title">Male</span></li>
								<li><span class="skill" style="height:75%; background:#9168e5;"></span><span class="title">Total</span></li>
							</ul> 
						</div>
					</div>
				</div>
				<div class="row">
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
				</div>
		<!--Chart end here -->
		</section>
	</div>
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footDashboard.jsp" />
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->

</body>
</html>