<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>WEBPROJECT</title>
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

			<div class="col-md-8 col-sm-12 col-xs-12" style="padding-left:0">
				<div class="small-box bgcolor">
					<div style="width:100%; height:365px" class="ct-chart"></div>
				</div>
			</div>

			<div class="col-md-4 col-sm-8 col-xs-8 bgcolor"
				style="padding-left: 10px; padding-right: 10px;">
				<h5>Student summary</h5>
				<hr style="height: 2px; background: #e0f2f2">
				<!-- Generation 1 -->
				<div class="row"
					style="margin-left: 0 !important; margin-right: 0 !important">

					<div class="col-md-3 col-sm-12 col-xs-12 small-box bg-aqua">

						<div class="first">
							<h2>
								1<sup>st</sup>
							</h2>
						</div>

					</div>
					<div class="col-md-9 col-sm-12 col-xs-12 small-box bg-aqua"
						style="background: #FF5722 !important;">

						<div class="generation">
							1<sup>st</sup> GENERATION &nbsp&nbsp&nbsp&nbsp56
							<div class="progress" style="margin-top: 11px;">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
									60%</div>
							</div>
							<ul class="nav nav-pills" role="tablist">
								<li role="presentation">Male<span class="badge">50</span></li>
								<li role="presentation">&nbsp&nbsp&nbsp&nbspFemale<span
									class="badge">6</span></li>
							</ul>
						</div>
					</div>
					<!-- End Generation -->
				</div>
				<!-- Generation Summary -->
			</div>
			<!-- End Calendar -->
		</section>
	</div>
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footDashboard.jsp" />
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- chart script -->
<script>
new Chartist.Bar('.ct-chart', {
  labels: ['KSP', 'PP', 'SRP', 'BTB'],
  series: [
    [5, 4, 3, 7],
    [30, 2, 9, 5],
    [10, 5, 8, 4],
    [20, 3, 4, 6]
  ]
}, {
  // Default mobile configuration
  stackBars: true,
  axisX: {
    labelInterpolationFnc: function(value) {
      return value.split(/\s+/).map(function(word) {
        return word[0];
      }).join('');
    }
  },
  axisY: {
    offset: 20
  }
}, [
  // Options override for media > 400px
  ['screen and (min-width: 400px)', {
    reverseData: true,
    horizontalBars: true,
    axisX: {
      labelInterpolationFnc: Chartist.noop
    },
    axisY: {
      offset: 60
    }
  }],
  // Options override for media > 800px
  ['screen and (min-width: 800px)', {
    stackBars: false,
    seriesBarDistance: 10
  }],
  // Options override for media > 1000px
  ['screen and (min-width: 1000px)', {
    reverseData: false,
    horizontalBars: false,
    seriesBarDistance: 38
  }]
]);
</script>
</body>
</html>