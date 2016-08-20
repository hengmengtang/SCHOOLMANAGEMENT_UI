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
							<dir-pagination-controls max-size="5" direction-links="true"
								boundary-links="true"> </dir-pagination-controls>
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
							</span> <select class="form-control select" ng-model="select">
								<option value="">No</option>
								<option>1</option>
								<option>20</option>
							</select>
						</div>
					</div>
					<!-- End Selection -->
					<div class="col-md-3 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: green;"> Classes </span>
							<select class="form-control selectpicker" ng-model="clas"
								ng-mouseover="getAllClass()">
								<option value="">Classes</option>
								<option ng-repeat="cls in classes | orderBy:'CLASS_NAME'">{{cls.CLASS_NAME}}</option>
							</select>
						</div>
					</div>
					<!-- End Search Location -->

					<div class="col-md-3">
						<div class="input-group pull-left">
							<span class="input-group-addon" style="background-color: green;">
								<i class="fa fa-search" style="color: white;"></i>
							</span> <input type="text" class="form-control" id="stuname"
								placeholder="Search Student Name..."
								onkeyup="this.value=this.value.replace(/[^A-Za-z]/g,'');" ng-keyup="searchAll()">
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
									<th ng-click="sort('ENGLIST_FULL_NAME')">Student<span
										class="arrow1">&#x2191;&#x2193;</span></th>
									<th ng-click="sort('CLASS_NAME')">Class<span
										class="arrow1">&#x2191;&#x2193;</span></th>
									<th><center>Gender</center></th>
									<th>University</th>
									<th>Email</th>
								</tr>
							</thead>
							<tbody>
								<tr
									dir-paginate="student in studentenrolls|orderBy:sortKey:reverse|filter:{'ENGLISH_FULL_NAME':stuname, 'CLASS_NAME':class}|itemsPerPage:select|limitTo : 10">
									<td>{{$index+1}}</td>
									<td>{{student.ENGLISH_FULL_NAME}}</td>
									<td>{{student.CLASS_NAME}}</td>
									<td><center>
											<span class="label label-danger" style="font-size: 13px;"
												ng-if="student.GENDER=='F' || student.GENDER=='f'">{{student.GENDER
												| uppercase}}</span> <span class="label label-info"
												style="font-size: 13px;"
												ng-if="student.GENDER=='M' || student.GENDER=='m'">{{student.GENDER
												| uppercase}}</span>
										</center></td>
									<td>{{student.UNIVERSITY}}</td>
									<td>{{student.EMAIL}}</td>
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
					<div class="row">
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
								style="margin-top: 15px;" readonly>{{generation}}</label>
						</div>
						<div class="col-md-3">
							<label class="form-control" id="add-course"
								style="margin-top: 15px" readonly>{{course}}</label>
						</div>

						<div class="col-md-3">
							<select class="form-control select" id="add-class"
								style="margin-top: 15px;" ng-mouseover="getAllClass()">
								<option value="">Select Class</option>
								<option ng-repeat="class in classes">{{class.CLASS_NAME}}</option>
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
													id="searchStudent"
													onkeyup="this.value=this.value.replace(/[^A-Za-z]/g,'');" ng-keyup="searchEnroll()">
												<span class="input-group-btn"> </span>
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
														<th ng-click="sort('id')">Student No <span
															class="arrow1">&#x2191;&#x2193;</span></th>
														<th ng-click="sort('khmerName')">Khmer Name<span
															class="arrow1">&#x2191;&#x2193;</span></th>
														<th ng-click="sort('LatinName')">English Name<span
															class="arrow1">&#x2191;&#x2193;</span></th>
														<th><center>Gender</center></th>
														<th style="width: 200px;">Email</th>
														<th>University</th>
														<th>Address</th>
														<th>Enroll</th>
													</tr>
												</thead>
												<tbody>
													<tr
														dir-paginate="student in students|orderBy:sortKey:reverse|filter:{'KHMER_FULL_NAME':searchStudent}|itemsPerPage:select|limitTo : 10">
														<td>{{student.STUDENT_ID}}</td>
														<td>{{student.KHMER_FULL_NAME}}</td>
														<td>{{student.ENGLIST_FULL_NAME}}</td>

														<td><center>
																<span class="label label-danger"
																	style="font-size: 13px;"
																	ng-if="student.GENDER=='f' || student.GENDER=='F'">{{student.GENDER
																	| uppercase}}</span> <span class="label label-info"
																	style="font-size: 13px;"
																	ng-if="student.GENDER=='m' || student.GENDER=='M'">{{student.GENDER
																	| uppercase}}</span>
															</center></td>

														<td>{{student.EMAIL}}</td>
														<td>{{student.UNIVERSITY}}</td>
														<td>{{student.PERMANENT_ADDRESS}}</td>
														<td><label><input type="checkbox"
																ng-click="enroll($event, student.STUDENT_ID)"></label></td>
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
								<button type="button" class="btn btn-success" id="btnSave"
									ng-click="submit()" ng-disabled="save">Save</button>
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
	<jsp:include page="../include/sweetalert.jsp" />
	<script
		src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script>
		var app = angular.module('app',
				[ 'angularUtils.directives.dirPagination' ]);
		app
				.controller(
						'ctrl',
						function($scope, $http) {

							getData();
							getLastGeneration();
							getLastCourse();
							getStudentEnroll();

							$scope.save = true;
							$scope.getAllClass = function() {
								getClass();
							}

							function getData() {
								$http(
										{
											url : 'http://localhost:2222/api/student/display-student-not-yet-enroll-to-class',
											method : 'GET'
										}).then(function(response) {
									$scope.students = response.data.DATA;
								}, function(response) {
									/* alert("error"); */
								});
							}
							;
							
							$scope.searchEnroll = function(){
								$scope.searchStudent = $('#searchStudent').val();
							}
							
							$scope.searchAll = function(){
								$scope.stuname = $('#stuname').val();
							}

							function getClass() {
								$http(
										{
											url : 'http://localhost:2222/api/class/get-class-by-generation-course',
											data : {
												"COURSE_NAME" : $scope.course,
												"GENERATION_NAME" : $scope.generation
											},
											method : 'POST'
										}).then(function(response) {
									$scope.classes = response.data.DATA;
								}, function(response) {
									/* alert("error"); */
								});
							}
							;

							function getStudentEnroll() {
								$http(
										{
											url : 'http://localhost:2222/api/student/display-student-already-enroll-to-class',
											method : 'GET'
										}).then(function(response) {
									$scope.studentenrolls = response.data.DATA;
								}, function(response) {
									/* alert("error"); */
								});
							}
							;

							function getLastGeneration() {
								$http(
										{
											url : 'http://localhost:2222/api/generation/get-last-generation',
											method : 'GET'
										})
										.then(
												function(response) {
													$scope.generation = response.data.DATA.GENERATION_NAME;
												}, function(response) {
													/* alert("error"); */
												});
							}
							;

							/* function updateStatus(id){
								$http({
									url:'http://localhost:8080/api/student/updateStatus/'+id,
									method:'PUT'
								}).then(function(response){
									
								}, function(response){
									alert("error");
								});
							}  */

							function getLastCourse() {
								$http(
										{
											url : 'http://localhost:2222/api/course/get-last-course',
											method : 'GET'
										})
										.then(
												function(response) {
													$scope.course = response.data.DATA.COURSE_NAME;
												}, function(response) {
													/* alert("error"); */
												});
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
									if ($scope.studentIDs.length > 19) {
										swal('You mush submit.',
												'Data is over 20!', 'warning')
										e.target.checked = false;
										return;
									}

									$scope.studentIDs.push(id);
									$scope.save = false;
								}
								if (!e.target.checked) {
									$scope.studentIDs.splice($scope.studentIDs
											.indexOf(id), 1);
								}
							}

							$scope.submit = function() {

								$scope.classs = $('#add-class').val();

								angular
										.forEach(
												$scope.studentIDs,
												function(id) {
													/* alert($scope.classs+", "+$scope.course+", "+$scope.generation+" "+id);*/
													$http(
															{
																url : 'http://localhost:8080/api/enrollment/enroll-student',
																data : {
																	"CLASS_NAME" : $scope.classs,
																	"COURSE_NAME" : $scope.course,
																	"GENERATION_NAME" : $scope.generation,
																	"STUDENT_ID" : id,
																	"SUCCESS" : 0
																},
																method : 'POST'
															})
															.then(
																	function(
																			response) {
																		/* updateStatus(id); */
																		getData();
																		$scope.save = true;
																	},
																	function(
																			response) {
																		alert("error");
																	});
												});

								getClass();
								getLastGeneration();
								getLastCourse();
							}
						});

		/* jquery */
		$(document).ready(

		function() {

			$("#hide").fadeOut("fast");
			$('#lststudent').fadeOut("fast");

			//--Add Generation--//
			$("#btn-add").click(function() {
				$("#hide").fadeIn("slow");
				$('#add-class').fadeIn("slow");
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

			function clearInputControll() {
				$('input').val("");
				$("select").prop("selectedIndex", 0);
			}

		});
	</script>

</body>
</html>