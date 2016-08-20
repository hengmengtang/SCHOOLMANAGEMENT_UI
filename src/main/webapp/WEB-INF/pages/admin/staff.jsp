<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>HRD Student Management</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<jsp:include page="../include/headDashboard.jsp" />
<link
	href="${pageContext.request.contextPath }/resources/style/customSubject.css"
	rel="stylesheet" />
 <script src="${pageContext.request.contextPath }/resources/bootstrapcheckbox/bootstrap-checkbox.min.js"></script>
</head>
<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			Staff <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Staff</li>
		</ol>
		</section>

		<!-- Main content-->
		<section class="content"> <!-- Start Container -->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2"
			ng-app="app" ng-controller="ctrl">
			<fieldset>
			<!-- Start Row 1 -->
			<div class="row">

				<div class="col-md-8" style="font-size: 18px;">
					<i class="fa fa-user" aria-hidden="true"></i> Staff List
				</div>
				<!-- Start Pagination -->
				<div class="col-md-4">
					<ul class="pagination pull-right" style="margin-top: 3px;">
						<li><a href="#">First</a></li>
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
						<li><a href="#">Last</a></li>
					</ul>
				</div>
				<!-- End Pagination -->
			</div>
			<!-- End Row 1 -->
			<!-- Start Selection -->
			<div class="row">
				<div class="col-md-2">
					<div class="input-group pull-left">
						<span class="input-group-addon" style="background-color: green;">
							<i class="fa fa-align-justify" style="color: white;"></i>
						</span> <select class="form-control select">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
				</div>
				<!-- End Selection -->

				<!--Search Location-->
				<div class="col-md-3">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"><i
							class="fa fa-search" style="font-size: 16px;"></i> </span> <input
							type="text" class="form-control" placeholder="Search Staff...">
					</div>
				</div>
				<!-- End Search Location -->
			</div>
			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr style="font-size: 16px;">
								<th ng-click="sort('id')">Staff ID&#x2191;&#x2193;</th>
								<th ng-click="sort('khmerName')">English Full
									Name&#x2191;&#x2193;</th>
								<th><center>Gender</center></th>
								<th>Position</th>
								<th>Email</th>
								<th>Drop</th>
							</tr>
						</thead>
						<tbody>
							<tr
								dir-paginate="staff in staffs|orderBy:sortKey:reverse|filter:{'KHMER_FULL_NAME':searchStudent}|itemsPerPage:select">
								<td>{{staff.STAFF_ID}}</td>
								<!-- <td>{{student.KHMER_FULL_NAME}}</td> -->
								<td>{{staff.ENGLIST_FULL_NAME}}</td>

								<td><center>
										<span class="label label-danger" style="font-size: 13px;"
											ng-if="staff.GENDER=='f'">{{staff.GENDER | uppercase}}</span>
										<span class="label label-info" style="font-size: 13px;"
											ng-if="staff.GENDER=='m'">{{staff.GENDER | uppercase}}</span>
									</center></td>

								<td>{{staff.DATE_OF_BIRTH}}</td>
								<td>{{staff.PLACE_OF_BIRTH}}</td>
								<td>{{staff.EMAIL}}</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
									<button type="button" class="btn btn-info" data-toggle="modal"
										data-target="#myModal" ng-click="update(student)">
										<i class="glyphicon glyphicon-refresh"></i>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- End Table -->

			<!--Start Add Staff-->
			<div class="row" style="margin: 5px;">

				<div class="pull-left" style="color: black;">
					<span class="glyphicon glyphicon-pencil" style="color: green;"></span>
					<span>Add Staff</span>
				</div>

				<div class="pull-right">
					<div class="btn-group">
						<button type="button" class="btn btn-primary" id="btnpss">
							Promote student to staff <i class="glyphicon glyphicon-user"></i>
						</button>
						<button type="button" class="btn btn-primary" id="other">
							Other <i class="glyphicon glyphicon-user"></i>
						</button>
					</div>
				</div>

			</div>
			<!-- Start Form -->

			<form style="margin: 20px; display: none" id="form-add">
				<fieldset>
					<!-- Main content-->
					<section class="content">
					<div class="container-fluid"
						style="border: 2px solid green; background-color: #e0f2f2">
						<div class="row">

							<div class="col-md-2 pull-left" style="font-size: 18px;">
								<i class="fa fa-users" aria-hidden="true"></i> Student List
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
						<div class="row">
							<div class="col-md-2 pull-left">
								<div class="input-group pull-left">
									<span class="input-group-addon"
										style="background-color: green;"> <i
										class="fa fa-align-justify"
										style="color: white; font-size: 20px"></i>
									</span><select class="form-control select"
										ng-init="select | select='5'" ng-model="select">
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
										style="color: white; background-color: green;">
										Class </span> <select class="form-control selectpicker"
										ng-model="searchGeneration">
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
										ng-model="searchStudent"> <span
										class="input-group-btn">								
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
											<th ng-click="sort('khmerName')">Khmer
												Name&#x2191;&#x2193;</th>
											<th ng-click="sort('LatinName')">English
												Name&#x2191;&#x2193;</th>
											<th><center>Gender</center></th>
											<th style="width: 200px;">Email</th>
											<th>Position</th>
											<th>Promote</th>
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
											<td>
												<button type="button" class="btn btn-success">
													<i class="fa fa-check-circle" aria-hidden="true"></i>
												</button>
												<button type="button" class="btn btn-info"
													data-toggle="modal" data-target="#myModal"
													ng-click="update(student)">
													<i class="glyphicon glyphicon-refresh"></i>
												</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- End Table(Row 3) -->
					</div>
					</section>
					<div class="row pull-right" style="margin: 7px;">
						<div id="button">
							<button type="button" class="btn btn-success" id="btnSave">Save</button>
							<button type="button" class="btn btn-danger" id="btnCancel">Cancel</button>
						</div>
					</div>
			</fieldset>
		</div>
		<!-- /.content-wrapper -->
		</fieldset>
		</form>
		<!-- End Form -->
		</div>
		</section>

	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp"></jsp:include>
	<script>
  $(document).ready(function(){
    $( "#btnpss" ).click(function() {
      $( "#form-add" ).fadeIn();
    });
    $("#btnCancel").click(function(){
    	$( "#form-add" ).fadeOut("fast");
	});
  });
</script>
<script src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script>
		var app = angular.module('app', ['angularUtils.directives.dirPagination']);
			app.controller('ctrl', function($scope, $http){
				
				getData();
				
				function getData(){
						$http({
								url:'http://localhost:2222/staff/find-all-staff',
								method:'GET'
							}).then(function(response){
								$scope.staffs = response.data.DATA;
									
							}, function(response){
								/* alert("error"); */
							});
				};
				
				$scope.update = function(data){
					$scope.stu_id = data.STUDENT_ID;
					$scope.khmerFName = data.KHMER_FULL_NAME;
				}
				
				$scope.sort = function(keyname){
			        $scope.sortKey = keyname;   //set the sortKey to the param passed
			        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
			    }
			});
	</script>
</body>
</html>