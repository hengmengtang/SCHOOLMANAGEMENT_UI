<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
<script
	src="${pageContext.request.contextPath }/resources/Jquery-new/jquery-2.2.4.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/js/jquery.js"></script>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<jsp:include page="../include/headDashboard.jsp"></jsp:include>
<link
	href="${pageContext.request.contextPath }/resources/style/custominstructorenroll.css"
	rel="stylesheet" />
</head>
<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent" ng-app="appInstructEnroll" ng-controller="instEnrollCtrl">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			<b>HRD</b> Instructor Enroll Management
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Instructor Enroll</li>
		</ol>
		</section>

		<section class="content"> <!-- Main content-->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
			<div class="row">

				<div class="col-md-2 pull-left" style="font-size: 18px;">
					<i class="fa fa-users" aria-hidden="true"></i> Instructor
					Enrollment
				</div>

				<div class="col-md-10 pull-right">
					<!-- <nav class="page">       -->
					<ul class="pagination pull-right" style="margin-top: 2px;">
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
					<!-- </nav> -->
				</div>
			</div>
			<!-- End Row 1 -->
			<!-- Start Row 2 -->
			<div class="row">
				<!-- Selection -->
				<div class="col-md-3">

					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: #00A65A;"> <i
							class="fa fa-align-justify"></i>
						</span> <select class="form-control selectpicker">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>

				</div>
				<!-- End Selection -->
				<div class="col-md-3">

					<div class="input-group pull-left">

						<span class="input-group-btn">
							<button class="btn btn-success">Generation</button>
						</span> <select class="form-control selectpicker" ng-model="generation">
							<option value="">Generations</option>
							<option ng-repeat="gen in generations">{{gen.GENERATION_NAME}}</option>
						</select>
					</div>

				</div>

				<!--Search Location-->
				<div class="col-md-6">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: #00A65A"><i
							class="fa fa-search" aria-hidden="true" style="font-size: 16px;"></i>
						</span> <input type="text" class="form-control"
							placeholder="Search Instructor"
							style="width: 160px; height: 31px;">
					</div>
				</div>

			</div>
			<!-- End pagination -->

			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr style="font-size: 16px;">
								<th>N <sup>o</sup></th>
								<th>Instructor&#x2191;&#x2193;</th>
								<th>Khmer Name&#x2191;&#x2193;</th>
								<th>Class&#x2191;&#x2193;</th>
								<th>Start Date&#x2191;&#x2193;</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="inst in instructor">
								<td>{{$index+1}}</td>
								<td>{{inst.ENGLISH_FULL_NAME}}</td>
								<td>{{inst.KHMER_FULL_NAME}}</td>
								<td>{{inst.CLASS_NAME}}</td>
								<td>{{inst.DATE}}</td>
								<td>
									<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" ng-click="update(student.STUDENT_ID)"><i class="glyphicon glyphicon-refresh"></i></button>
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
						style="font-size: 16px;">Add Instructor Enrollment</b>
				</div>

				<div class="pull-right" style="margin: 0px;">
					<button class="btn btn-success" id="btn-add">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>

			</div>
			<!--End Add Student-->
			

			<!--Input for gen, stu, class-->
			<div class="row" style="margin-bottom: 5px;">
				<div class="col-md-4">
					Generation<span class="star">*</span>
				</div>
				<div class="col-md-4">
					Course<span class="star">*</span>
				</div>
				<div class="col-md-4">
					Instructor<span class="star">*</span>
				</div>
				
			</div>

			<div class="row">

				<div class="col-md-4">
					<label class="form-control select" id="add-gen"
					style="display: none;" readonly>{{gen_last}}</label>
				</div>

				<div class="col-md-4">
					<input type="text" class="form-control select" id="add-course"
						style="display: none;" value="{{course}}" ng-model="course" readonly>
				</div>
				<!-- <div id="hide-sub"> -->
				<div class="col-md-3">
					<select class="form-control select" id="add-instructor"
						style="display: none; position: absolute;" >
						<option value="" selected>Instructors</option>
						<option ng-repeat="ins in instructors">{{ins.INSTRUCTOR_NAME}}</option>
					</select>
				</div>

			</div>
			<!-- End Row -->
			<div class="row" style="margin-top: 5px;">
				<div class="col-md-4">
					Class<span class="star">*</span>
				</div>
				<div class="col-md-4">
					Subject<span class="star">*</span>
				</div>
				<div class="col-md-4">
					Enroll Date<span class="star">*</span>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<select class="form-control select" id="add-class"
						style="display: none;" ng-model="class">
						<option value="">Classes</option>
						<option ng-repeat="cls in classes">{{cls.CLASS_NAME}}</option>
					</select>
				</div>
				<div class="col-md-4">
					<div class="form-group" id="add-stu" style="display: none;">
						<select class="form-control select" id="add-subject"
						style="display: none;" ng-model="subject">
							<option value="">Subjects</option>
							<option ng-repeat="sub in subjects">{{sub.SUBJECT_NAME}}</option>
						</select>
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group" id="add-date" style="display: none;">
						<input type="text" class="form-control"
							placeholder="Enroll Date" id="date" ng-model="date">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="pull-right" id="add-btn"
					style="margin: 7px; display: none;">
					<button type="button" class="btn btn-success" id="btnSave" ng-click="add()">Save</button>
					<button type="button" class="btn btn-danger" id="btnCancel">Cancel</button>
				</div>
			</div>
		</fieldset>
		</div>
	</section>
	<!-- /.content-wrapper -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/resources/angularjs/angular.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script src="${pageContext.request.contextPath}/resources/datetimepicker/jquery.datetimepicker.js"></script>
	<script >
	$(function(){	
		/* initialize date picker */
	$("#date").datepicker();
	
	});
	</script>
	<script>
		$(document)
				.ready(
						function() {
							//--Add Generation--//
							$("#btn-add").click(function() {
								$("#hide").fadeIn();
								$("#add-gen").fadeToggle("slow", function() {
								});
								$("#add-course").fadeIn();
								$("#add-course").fadeIn("fast");
								$("#add-class").fadeIn("fast");
								$("#add-stu").fadeIn("fast");
								$("#add-btn").fadeIn("fast");
								$("#add-gen").fadeIn("fast");
								$("#add-subject").fadeIn("fast");
								$("#add-date").fadeIn("fast");
								$("#add-subject").fadeIn("fast");
								$("#add-instructor").fadeIn("fast");
							});
							$("#btnCancel").click(function(){
								$("#add-course").fadeOut("fast");
								$("#add-class").fadeOut("fast");
								$("#add-stu").fadeOut("fast");
								$("#add-btn").fadeOut("fast");
								$("#add-gen").fadeOut("fast");
								$("#add-subject-advance").fadeOut("fast");
								$("#add-date").fadeOut("fast");
							});
							//--Add Course--//
							/* $("#add-gen")
									.change(
											function() {
												var gen = $(this).val();
												(gen == "gen1" || gen == "gen2"
														|| gen == "gen3" || gen == "gen4") ? $(
														"#add-course").fadeIn(
														'slow')
														: $("#add-course")
																.fadeOut('slow');
											}); */

							//--Add Subject--//
							/* $("#add-course")
									.change(
											function() {
												var course = $(this).val();
												$("#add-subject-advance").fadeIn(slow");
												
											}); */
							//--Add Class--//
							/* $("#add-subject-basic,#add-subject-advance")
									.change(
											function() {
												var sub = $(this).val();
												if(sub) $("#add-class").fadeIn(
														"slow")
												if(sub=='Select Subject') $("#add-class")
																.fadeOut("slow");
											});
							 */
							//--Add Instructor--//
							/* $("#add-class")
									.change(
											function() {
												var clas = $(this).val();
												(clas == 'BTB' || clas == 'PP'
														|| clas == 'KPS' || clas == 'SR') ? $(
														"#add-stu").fadeIn(
														"slow")
														: $("#add-stu")
																.fadeOut("slow");
											}); */
							//--Add Date--//
							/* $("#add-stu")
									.click(
											function() {
												$("#add-date").fadeIn("slow")
											});
 */
							//--Add Button--//
							/* $("#add-date").click(function() {
								$("#add-btn").fadeIn("slow");
							});
 */
						});
		
	</script>
	<!-- Angular Js -->
	<script>
		var app = angular.module('appInstructEnroll', ['angularUtils.directives.dirPagination']);
			app.controller('instEnrollCtrl', function($scope, $http){
				
				getData(); 
				getClass();
				getSubject();
				getLastCourse();
				getGeneration();
				getLastGeneration();
				clearInputControll();
				
				
				function getData(){
						$http({
								url:'http://localhost:8080/api/staff/display-staff-in-class',
								method:'GET'
							}).then(function(response){
								$scope.instructor = response.data.DATA;
							}, function(response){
								/* alert("error"); */
							});
				};
				
				$scope.add=function(){
					$http({
						url:'http://localhost:8080/handle-subject-to-staff-to-class',
						method:'POST',
						data:{
							'COURSE_NAME': $scope.course,
							'SUBJECT_TYPE_NAME': $scope.subject,
							'CLASS_ROOM_NAME': $scope.Class,
							'STAFF_HANDLE_NAME': $scope.staff,
							'DATE': $scope.date
						}
					}).then(function(response){
						getData();
						clearInputControll();
					}, function(response){
						/* alert("error"); */
					});
				}; 
				
				function getGeneration(){
					$http({
							url:'http://localhost:8080/api/generation/find-all-generation',
							method:'GET'
						}).then(function(response){
							$scope.generations = response.data.DATA;
						}, function(response){
							/* alert("error"); */
						});
				};
				
				function getLastCourse(){
					$http({
						url:'http://localhost:8080/api/course/get-last-course',
						method:'GET'
					}).then(function(response){
						$scope.course = response.data.DATA.COURSE_NAME;
					}, function(response){
						/* alert("error"); */
					});
				}
				
				function getLastGeneration(){
					$http({
							url:'http://localhost:8080/api/generation/get-last-generation',
							method:'GET'
						}).then(function(response){
							$scope.gen_last = response.data.DATA.GENERATION_NAME;
						}, function(response){
							/* alert("error"); */
						});
				};
				
				function getClass() {
					$http({
						url : 'http://localhost:8080/api/class/find-all-class',
						method : 'GET'
					}).then(function(response) {
						$scope.classes = response.data.DATA;
					}, function(response) {
						alert("error");
					});
				};
				
				function getSubject() {
					$http({
						url : 'http://localhost:8080/api/subject/find-all-subject',
						method : 'GET'
					}).then(function(response) {
						$scope.subjects = response.data.DATA;
					}, function(response) {
						alert("error");
					});
				};
				
				function clearInputControll(){
					$('input').val("");
					$("select").prop("selectedIndex",0);
				}
				
			});
	</script>
	
</body>
</html>