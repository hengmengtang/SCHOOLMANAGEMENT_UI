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
			Monthly Results <small>Preview</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
					Home</a></li>
			<li class="active">Monthly Results</li>
		</ol>
		</section>
		<!-- Main content -->
		<section class="content" ng-app="app" ng-controller="ctrl">

		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
				<div class="row">
					<!----------- pagination ------------>
					<div class="col-md-2 pull-left">
						<i class="fa fa-book" style="color: black;font-size: 18px"></i> <small
							style="color: black; font-size: 18px">&nbsp Monthly Results</small>
					</div>
					<br>
					</br>
					<div class="col-md-10">
						<ul class="pagination pull-right" style="margin-top: 2px;">
							<dir-pagination-controls
						       max-size="5"
						       direction-links="true"
						       boundary-links="true" >
					    	</dir-pagination-controls>
						</ul>
					</div>

				</div>
				<!-- End Row 1 -->
				<!-- Start Row 2(Generation and Search) -->
				<div class="row">
					<!-- <div class="col-md-2"> -->
					<div class="col-md-2">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> <i
								class="fa fa-align-justify"></i>
							</span> <select class="form-control selectionpicker" ng-init="select | select='No'" ng-model="select">
								<option value="">All</option>
								<option>10</option>
								<option>30</option>
								<option>60</option>
							</select>
							<!-- End Selection -->
						</div>
					</div>
					<!--div class="col-md-3" -->
					<div class="col-sm-3">

						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Generation </span> <select class="form-control selectpicker" ng-init="searchGeneration | searchGeneration='Generation'" ng-model="searchGeneration" ng-mouseleave="getGeneration()">
								<option value="">Generation</option>
								<option ng-repeat="gen in generations | orderBy:'GENERATION_NAME'">{{gen.GENERATION_NAME}}</option>
							</select>
						</div>

					</div>
					<div class="col-sm-2">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Course </span> <select class="form-control selectpicker" ng-init="searchGeneration | searchGeneration='Generation'" ng-model="searchGeneration" ng-mouseleave="getGeneration()">
								<option value="">Generation</option>
								<option ng-repeat="gen in generations | orderBy:'GENERATION_NAME'">{{gen.COURSE_NAME}}</option>
							</select>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Date </span> 
								<input type="text" placeholder="Date" id="date" class="form-control selectpicker" ng-init="searchGeneration | searchGeneration='Generation'" ng-model="searchGeneration" ng-mouseleave="getGeneration()">
						</div>
						
					</div>
					<!-- End Selection -->
					<!-- Text Search -->
					<div class="col-md-3">
						<div class="input-group">
							<span class="input-group-addon" style="background-color: #00A65A;"><i
								class="fa fa-search" style="color: white;"></i> </span> <input
								type="text" class="form-control" placeholder="Search Name" id="search_course"
								onkeyup="this.value=this.value.replace(/[^A-Za-z]/g,'');" ng-keypress="searchCourse()">
						
						<div class="input-group-btn">
							<button type="button" class="btn btn-danger"
													id="btn-preview">Print</button>
							<button type="button" class="btn btn-success"
													id="btn-export">Export</button>
						</div>
						</div>
						
					</div>
					<!-- End Text Search -->
				</div>
				<!-- End Row 2 -->

					<!-- Start Table -->
					<div class="row" style="margin: 0px;">
						<div class="table-responsive">
							<table class="table table-hover">
								<thead>
									<tr style="font-size: 16px;">
										<th>Rank</th>
										<th>Student&#x2191;&#x2193;</th>
										<th>Gender</th>
										<th>Class&#x2191;&#x2193;</th>
										<th>Java&#x2191;&#x2193;</th>
										<th>Korean&#x2191;&#x2193;</th>
										<th>Web&#x2191;&#x2193;</th>
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
		$(function() {
			/* initialize date picker */
			$("#date").datepicker();
		});
		$.widget.bridge('uibutton', $.ui.button);
	</script>

</body>
</html>