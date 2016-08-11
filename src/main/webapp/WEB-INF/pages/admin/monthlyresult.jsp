<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../include/headDashboard.jsp"></jsp:include>
</head>
<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent" ng-app="appListStu"
		ng-controller="ctrlListStu">

		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			<b>HRD</b> Student Score
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Monthly Result</li>
		</ol>
		</section>

		<!-- Main content-->
		<div class="container-fluid">
			<fieldset>
				<!-- Main content-->
				<section class="content">
				<div class="container-fluid"
					style="border: 2px solid green; background-color: #e0f2f2">
					<fieldset>
					<div class="row">

						<div class="col-md-2 pull-left" style="font-size: 18px;">
							<i class="fa fa-users" aria-hidden="true"></i> Student Score
						</div>

						<div class="col-md-10 pull-right" style="margin-bottom: -20px">
							<nav class="page">
							<ul class="pagination pull-right toptable"
								style="margin-top: 2px;">
								<dir-pagination-controls max-size="5" direction-links="true"
									boundary-links="true"> </dir-pagination-controls>
							</ul>
							</nav>
						</div>
					</div>
					<!-- end pagination(Row 1) -->

					<!-- Start Row 2 -->
					<div class="row" style="margin-top: 15px;">
						<div class="col-md-2 pull-left">
							<div class="input-group pull-left">
								<span class="input-group-addon" style="background-color: green;">
									<i class="fa fa-align-justify"
									style="color: white; font-size: 20px"></i>
								</span><select class="form-control" ng-init="select | select='5'"
									ng-model="select">
									<option value="">10</option>
									<option>15</option>
									<option>20</option>
								</select>
							</div>
						</div>
						<!-- End Selection -->
						
						<div class="col-md-3 pull-left">
							<div class="input-group pull-left">
								<span class="input-group-addon"
									style="color: white; background-color: green;"> Generation </span> <select
									class="form-control selectpicker" ng-model="searchGeneration">
									<option value=" ">Select Generation</option>
									<option value="BTB">1st</option>
									<option value="KSP">2nd</option>
									<option value="SR">3rd</option>
									<option value="PP">4th</option>
								</select>
							</div>
						</div>

						<div class="col-md-3 pull-left">
							<div class="input-group pull-left">
								<span class="input-group-addon"
									style="color: white; background-color: green;"> Class </span> <select
									class="form-control selectpicker" ng-model="searchClass">
									<option value=" ">Select Class</option>
									<option value="BTB">BTB</option>
									<option value="KSP">KSP</option>
									<option value="SR">SR</option>
									<option value="PP">PP</option>
								</select>
							</div>
						</div>
						<!--Search Location-->
						<div class="col-md-3 pull-left">
							<div class="input-group">
								<span class="input-group-addon" id="basic-addon1"
									style="color: white; background-color: green;"><i
									class="fa fa-search" aria-hidden="true"
									style="font-size: 20px;"></i> </span> <input type="text"
									class="form-control" placeholder="Search Student..."
									ng-model="searchStudent"> <span class="input-group-btn">
								</span>
							</div>
						</div>
					</div>
					<!-- End Search Location-->

					<!-- End Row 2 -->

					<!-- Start Table -->
					<div class="row" style="margin: 0px;">
						<div class="table-responsive">
							<table class="table table-hover">
								<thead>
									<tr style="font-size: 16px;">
										<th>N <sup>o</sup></th>
					                    <th>Student&#x2191;&#x2193;</th>
					                    <th>Gender</th>
					                    <th>Class&#x2191;&#x2193;</th>
					                    <th>Korean&#x2191;&#x2193;</th>
					                    <th>Web&#x2191;&#x2193;</th>
					                    <th>Java&#x2191;&#x2193;</th>
					                    <th>Total Score&#x2191;&#x2193;</th>
									</tr>
								</thead>
								<tbody>
									<tr
										dir-paginate="student in students|orderBy:sortKey:reverse|filter:{'KHMER_FULL_NAME':searchStudent}|itemsPerPage:select">
										<td>{{student.STUDENT_ID}}</td>
										<td>{{student.KHMER_FULL_NAME}}</td>
										<td>{{student.ENGLIST_FULL_NAME}}</td>

										<td><center>
												<span class="label label-danger" style="font-size: 13px;"
													ng-if="student.GENDER=='f'">{{student.GENDER |
													uppercase}}</span> <span class="label label-info"
													style="font-size: 13px;" ng-if="student.GENDER=='m'">{{student.GENDER
													| uppercase}}</span>
											</center></td>

										<td>{{student.DATE_OF_BIRTH}}</td>
										<td>{{student.PLACE_OF_BIRTH}}</td>
										<td>{{student.EMAIL}}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- End Table(Row 3) -->
				</fieldset>
				</div>
				<div class="row pull-right" style="margin: 7px;">
					<div id="button">
						<input type="submit" value="Print" class="btn btn-success">
						<input type="submit" value="Export" class="btn btn-danger">
					</div>
				</div>
				</section>
		</div>
		</fieldset>
	</div>
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />

	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>

</body>
</html>