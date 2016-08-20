<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
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
						<dir-pagination-controls
					       max-size="5"
					       direction-links="true"
					       boundary-links="true" >
				    	</dir-pagination-controls>
					</ul>
					<!-- </nav> -->
				</div>
			</div>
			<!-- End Row 1 -->
			<!-- Start Row 2 -->
			<div class="row">
				<!-- Selection -->
				<div class="col-md-2">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: #00A65A;"> <i
							class="fa fa-align-justify"></i>
						</span> <select class="form-control selectpicker" ng-model="no">
							<option value="">No</option>
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
							style="color: white; background-color: #00A65A"><i
							class="fa fa-search" aria-hidden="true" style="font-size: 16px;"></i>
						</span> <input type="text" class="form-control"
							placeholder="Search Instructor"
							style="height: 31px;" ng-model="search">
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
								<th>Class</th>
								<th>Subject</th>
								<th>Start Date</th>
							</tr>
						</thead>
						<tbody>
							<tr dir-paginate="inst in instructor|orderBy:sortKey:reverse|filter:{'ENGLISH_FULL_NAME':search}|itemsPerPage:no|limitTo : 6">
								<td>{{$index+1}}</td>
								<td>{{inst.ENGLISH_FULL_NAME}}</td>
								<td>{{inst.KHMER_FULL_NAME}}</td>
								<td>{{inst.CLASS_NAME}}</td>
								<td>{{inst.SUBJECT_NAME}}</td>
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
					<label type="text" class="form-control select" id="add-course"
						style="display: none;" readonly>{{course}}</label>
				</div>
				<!-- <div id="hide-sub"> -->
				<div class="col-md-3">
					<select class="form-control select" id="add-instructor"
						style="display: none; position: absolute;" ng-model="ins">
						<option value="" selected>Instructors</option>
						<option ng-repeat="ins in instructors">{{ins.ENGLIST_FULL_NAME}}</option>
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
						style="display: none;" ng-model="cls" ng-change="checked()" ng-disabled="!ins">
						<option value="">Classes</option>
						<option ng-repeat="cls in classes">{{cls.CLASS_NAME}}</option>
					</select>
				</div>
				<div class="col-md-4">
					<div class="form-group" id="add-stu" style="display: none;">
						<select class="form-control select" id="add-subject"
						style="display: none;" ng-model="subject" ng-disabled="sub">
							<option value="">Subjects</option>
							<option ng-repeat="sub in subjects">{{sub.SUBJECT_NAME}}</option>
						</select>
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group" id="add-date" style="display: none;">
						<input type="text" class="form-control"
							placeholder="Enroll Date" id="date" ng-model="date" ng-disabled="!subject">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="pull-right" id="add-btn"
					style="margin: 7px; display: none;">
					<button type="button" class="btn btn-success" id="btnSave" ng-click="enroll()" ng-disabled="!date">Enroll</button>
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
	<jsp:include page="../include/sweetalert.jsp"/>
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
								$("#add-subject").fadeOut("fast");
								$("#add-date").fadeOut("fast");
								$("#add-instructor").fadeOut("fast");
							});
							
						});
		
	</script>
	<!-- Angular Js -->
	<script>
		var app = angular.module('appInstructEnroll', ['angularUtils.directives.dirPagination']);
			app.controller('instEnrollCtrl', function($scope, $http){
				
				getData(); 
				clearInputControll();
				
				$scope.sub = true;
				$scope.checked = function(){
					$scope.ins_name = $scope.ins;
					$scope.cla_name = $scope.cls;
					angular.forEach($scope.instructor, function(check){
						if(check.ENGLISH_FULL_NAME == $scope.ins_name && check.CLASS_NAME == $scope.cla_name){
							$scope.sub = true;
							$scope.cls = "";
							$scope.ins = "";
							sweetAlert(
									  'Enroll is not available...',
									  'Instructor and Class already existed!',
									  'error'
									)
							return;
						}
						$scope.sub = false;
					})
					
					
				}
				
				function getData(){
						$http({
								url:'http://localhost:2222/api/staff/display-staff-in-class',
								method:'GET'
							}).then(function(response){
								$scope.instructor = response.data.DATA;
								getClass();
								getSubject();
								getLastCourse();
								getGeneration();
								getLastGeneration();
								getInstructor();
							}, function(response){
								/* alert("error"); */
							});
				};
				
				$scope.enroll = function(){
					/* alert($scope.course+", "+$scope.subject+", "+$scope.cls+", "+$scope.ins+", "+$scope.date+", "+$scope.gen_last) */
					$http({
						url:'http://localhost:2222/handle-subject-to-staff-to-class',
						method:'POST',
						data:{
							'COURSE_NAME': $scope.course,
							'SUBJECT_TYPE_NAME': $scope.subject,
							'CLASS_ROOM_NAME': $scope.cls,
							'STAFF_HANDLE_NAME': $scope.ins,
							'GENERATION_NAEM': $scope.gen_last,
							'DATE': $scope.date
						}
					}).then(function(response){
						getData();
						clearInputControll();
					}, function(response){
						/* alert("error");*/
					}); 
				}; 
				
				function getGeneration(){
					$http({
							url:'http://localhost:2222/api/generation/find-all-generation',
							method:'GET'
						}).then(function(response){
							$scope.generations = response.data.DATA;
						}, function(response){
							/* alert("error"); */
						});
				};
				
				function getLastCourse(){
					$http({
						url:'http://localhost:2222/api/course/get-last-course',
						method:'GET'
					}).then(function(response){
						$scope.course = response.data.DATA.COURSE_NAME;
					}, function(response){
						/* alert("error"); */
					});
				}
				
				function getLastGeneration(){
					$http({
							url:'http://localhost:2222/api/generation/get-last-generation',
							method:'GET'
						}).then(function(response){
							$scope.gen_last = response.data.DATA.GENERATION_NAME;
						}, function(response){
							/* alert("error"); */
						});
				};
				
				function getClass() {
					$http({
						url : 'http://localhost:2222/api/class/find-all-class',
						method : 'GET'
					}).then(function(response) {
						$scope.classes = response.data.DATA;
					}, function(response) {
						/* alert("error"); */
					});
				};
				
				function getSubject() {
					$http({
						url : 'http://localhost:2222/api/subject/find-all-subject',
						method : 'GET'
					}).then(function(response) {
						$scope.subjects = response.data.DATA;
					}, function(response) {
						/* alert("error"); */
					});
				};
				
				function getInstructor() {
					$http({
						url : 'http://localhost:2222/api/staff/find-all-staff',
						method : 'GET'
					}).then(function(response) {
						$scope.instructors = response.data.DATA;
					}, function(response) {
						/* alert("error"); */
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