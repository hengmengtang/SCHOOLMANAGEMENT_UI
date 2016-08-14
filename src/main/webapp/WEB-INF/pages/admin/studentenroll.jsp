<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
<jsp:include page="../include/headDashboard.jsp"></jsp:include>
<link
	href="${pageContext.request.contextPath }/resources/style/customSubject.css"
	rel="stylesheet" />
</head>
<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			<b>HRD</b> Student Enroll Management
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Studetn Enroll</li>
		</ol>
		</section>
		<section class="content" ng-app="app" ng-controller="ctrl">
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
			<div class="row">

				<div class="col-md-3" style="font-size: 18px;">
					<i class="fa fa-users" aria-hidden="true"></i> Student Enrollment
				</div>

				<div class="col-md-9">
					<ul class="pagination pull-right" style="margin-top: 3px;">
						<li><a href="#">First</a></li>
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
						<li><a href="#">Last</a></li>
					</ul>
				</div>

			</div>
			<!-- End Row 1 -->
			<div class="row">
				<div class="col-md-2">
					<div class="input-group pull-left">
						<span class="input-group-addon" style="background-color: green;">
							<i class="fa fa-align-justify"
							style="color: white; font-size: 20px"></i>
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
				<div class="col-md-3 pull-left">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> Generation
						</span> <select class="form-control selectpicker">
							<option value="allgeneration">All Generation</option>
							<option value="generation1">Generation 1</option>
							<option value="generation2">Generation 2</option>
							<option value="generation3">Generation 3</option>
							<option value="generation4">Generation 4</option>
						</select>
					</div>
				</div>
				<!-- End Search Location -->

				<div class="col-md-3">
					<div class="input-group pull-left">
						<span class="input-group-addon" style="background-color: green;">
							<i class="fa fa-search" style="color: white;"></i>
						</span> <input type="text" class="form-control"
							placeholder="Search Cource">
					</div>
				</div>
			</div>
			<!-- End Row 2 -->

			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr style="font-size: 16px;">
								<th>N <sup>o</sup></th>
								<th>Student&#x2191;&#x2193;</th>
								<th>Class&#x2191;&#x2193;</th>
								<th>Start Date&#x2191;&#x2193;</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Sam Ol Sam On</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Heng Mengtang</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Chea Phakdey</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Cheang Sovannveasna</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>5</td>
								<td>Him Khemera</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- End Table -->

			<!--Start Add Student-->
			<div class="row" style="margin: 0px;">
				<div class="pull-left">
					<span class="glyphicon glyphicon-pencil"></span> <b
						style="font-size: 16px;">Add Student Enrollment</b>
				</div>
				<div class="pull-right">
					<button class="btn btn-success" id="btn-add">
						<span class="glyphicon glyphicon-plus"> </span>
					</button>
				</div>
			</div>
			<!--End Add Student-->

			<!--Input for gen, stu, class-->
			<div id="hide">
			<div class="row" >
				<div class="col-md-3">
					Generation<sup style="color: red">*</sup>
				</div>
				<div class="col-md-3">
					Course<sup style="color: red">*</sup>
				</div>
				<div class="col-md-3">
					Class<sup style="color: red">*</sup>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<label class="form-control" id="add-gen"
						style="margin-top: 15px;" ng-bind="generation" readonly></label>
				</div>
				<div class="col-md-3">
					<label class="form-control" id="add-course"
						style="margin-top: 15px" ng-bind="course" readonly></label>
				</div>
				
				<div class="col-md-3">
					<select class="form-control select" id="add-class"
						style="margin-top: 15px;">
						<option value="">Select Class</option>
						<option >Battambang</option>
						<option >Phnom Penh</option>
						<option >Kampongsom</option>
						<option >Siem Reap</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					Student<sup style="color: red">*</sup>
				</div>
			</div>
			
			<!-- student list -->
			<div class="row" id="lststudent">
				<div class="col-md-12">
					<!-- Main content-->
					<section class="content">
					<div class="container-fluid"
						style="border: 2px solid green; background-color: #e0f2f2">
						<fieldset>
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
											<th ng-click="sort('id')">Student No
												&#x2191;&#x2193;</th>
											<th ng-click="sort('khmerName')">Khmer
												Name&#x2191;&#x2193;</th>
											<th ng-click="sort('LatinName')">English
												Name&#x2191;&#x2193;</th>
											<th><center>Gender</center></th>
											<th style="width: 200px;">Email</th>
											<th>University</th>
											<th>Address</th>
											<th>Enroll</th>
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
														ng-if="student.GENDER=='f' || student.GENDER=='F'">{{student.GENDER |
														uppercase}}</span> <span class="label label-info"
														style="font-size: 13px;" ng-if="student.GENDER=='m' || student.GENDER=='M'">{{student.GENDER
														| uppercase}}</span>
												</center>
											</td>

											<td>{{student.EMAIL}}</td>
											<td>{{student.UNIVERSITY}}</td>
											<td>{{student.PERMANENT_ADDRESS}}</td>
											<td>
												 <label><input type="checkbox" ng-click="enroll($event, student.STUDENT_ID)"></label>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<!-- End Table(Row 3) -->
					</fieldset>
					</div>
					</section>
				</div>
			</div>
			<div class="row" style="margin-bottom: 7px;">
				<div class="col-md-12">
					<div class="pull-right" id="add-btn"">
						<button type="button" class="btn btn-success" id="btnSave" ng-click="submit()">Save</button>
						<button type="button" class="btn btn-danger" id="btnCancel">Cancel</button>
					</div>
				</div>
			</div>
		</div>
		</fieldset>
		</div>
		<!-- End Page --> </section>
		<!-- /.content-wrapper -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp"></jsp:include>
	<script
		src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/angularjs/checklist-model.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script>
		var app = angular.module('app',
				[ 'angularUtils.directives.dirPagination','checklist-model' ]);
		app.controller('ctrl', function($scope, $http) {
			
			getData();
			
			function getData() {
				$http({
					url : 'http://localhost:8080/api/student/find-all',
					method : 'GET'
				}).then(function(response) {
					$scope.students = response.data.DATA;
				}, function(response) {
					alert("error");
				});
			};
			

			$scope.submit = function() {
					$scope.classs = $('#add_class').val();
					
					$http({
						url : 'http://localhost:8080/api/enrollment/enroll-student',
						data : {
						 "CLASS_NAME": $scope.classs,
						  "COURSE_NAME": "string",
						  "ENROLL_DATE": "string",
						  "GENERATION_NAME": "string",
						  "STUDENT_NAME": "string",
						  "SUCCESS": 0
						},
						method : 'POST'
					}).then(function(response) {
	
					}, function(response) {
	
					})
				}

				$scope.sort = function(keyname) {
					$scope.sortKey = keyname; //set the sortKey to the param passed
					$scope.reverse = !$scope.reverse; //if true make it false and vice versa
				};

			/* $(document).on('change', '#enroll', function(){
				if($(this).is(':checked')){
					$scope.enroll = function(id){
						alert(id);
					} 
				}
			}) */

				$scope.studentIDs = [];
	
				$scope.enroll = function(e, id) {
					if (e.target.checked) {
						$scope.studentIDs.push(id);
					}
					if (!e.target.checked) {
						$scope.studentIDs.splice($scope.studentIDs.indexOf(id), 1);
					}
				}

				$scope.submit = function() {
					angular.forEach($scope.studentIDs, function(id) {
						alert(id);
					});
				}
	
			});

		/* jquery */
		$(document).ready(

		function() {

			$("#hide").fadeOut("fast");
			$('#lststudent').fadeOut("fast");

			//--Add Generation--//
			$("#btn-add").click(function() {
				$("#hide").fadeIn();
			});

			$("#btnCancel").click(function() {
				$("#hide").fadeOut("fast");
				$('#lststudent').fadeOut("fast");
				$('#add-class').fadeOut("fast");
				clearInputControll();
			});

			$(function() {
				$("#add-class").change(function() {
					$('#lststudent').fadeIn("slow");
				});
			});

			$(function() {
				$("#subject").change(function() {
					$('#add-class').fadeIn("slow");
				});
			});

			function clearInputControll() {
				$('input').val("");
				$("select").prop("selectedIndex", 0);
			}

		});
	</script>

</body>
</html>