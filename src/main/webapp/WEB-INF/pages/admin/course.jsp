<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>School Management System</title>
<jsp:include page="../include/headDashboard.jsp" />
</head>
<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">
		<section class="content-header">
		<h1>
			Advanced Form Elements <small>Preview</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
					Home</a></li>
			<li><a href="#">Study Management</a></li>
			<li class="active">Course</li>
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
						<i class="fa fa-book" style="color: black;"></i> <small
							style="color: black;"> Course</small>
					</div>

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
								style="color: white; background-color: green;"> <i
								class="fa fa-align-justify"></i>
							</span> <select class="form-control selectionpicker" ng-init="select | select='No'" ng-model="select">
								<option value="">No</option>
								<option>1</option>
								<option>10</option>
							</select>
							<!-- End Selection -->
						</div>
					</div>
					<!--div class="col-md-3" -->
					<div class="col-sm-3">

						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: green;">
								Generation </span> <select class="form-control selectpicker" ng-init="searchGeneration | searchGeneration='Generation'" ng-model="searchGeneration" ng-mouseleave="getGeneration()">
								<option value="">Generation</option>
								<option ng-repeat="gen in generations | orderBy:'GENERATION_NAME'">{{gen.GENERATION_NAME}}</option>
							</select>
						</div>

					</div>
					<!-- End Selection -->
					<!-- Text Search -->
					<div class="col-md-3">
						<div class="input-group">
							<span class="input-group-addon" style="background-color: green;"><i
								class="fa fa-search" style="color: white;"></i> </span> <input
								type="text" class="form-control" placeholder="Course" ng-model="searchCourse">
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
									<tr>
										<th ng-click="sort('id')">N <sup>o</sup><span style="color: blue; font-weight: bold;">&#x2191;&#x2193;</th>
										<th>Generation</th>
										<th>Course</th>
										<th>Start Date</th>
										<th>End Date</th>
										<th>Finish</th>
									</tr>
								</thead>
							<tbody>
									<tr dir-paginate="course in courses|orderBy:sortKey:reverse|filter:{'COURSE_NAME':searchCourse}:{'COURSE_NAME':searchCourse}|itemsPerPage:select">
										<td>{{course.COURSE_ID}}</td>
										<td>3rd Generation</td>
										<td>{{course.COURSE_NAME}}</td>
										<td>{{course.COURSE_START_DATE}}</td>
										<td>{{course.COURSE_END_DATE}}</td>
										<td>
											<button type="button" class="btn btn-danger"
												ng-if="course.STATUS==false">
												<span class="glyphicon glyphicon-ok"></span>
											</button>
											<button type="button" class="btn btn-success"
												ng-if="course.STATUS==true" ng-click="finish(course.COURSE_ID)">
												<span class="glyphicon glyphicon-ban-circle"></span>
											</button>
										</td>
									</tr>
								</tbody>
						</table>
					</div>
				</div>
					
				<!-- End Table -->
				<!-- Add subject and button -->
				<div class="row" style="margin: 0px;">
					<!-- <div class="col-md-2"> -->
					<div class="pull-left" style="color: black;">
						<i class="fa fa-plus-circle" style="color: green;"></i> <span>Add
							Course</span>
					</div>

					<div class="pull-right">
						<button class="pull-right btn btn-success" id="btn-plus">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>

				</div>
				<!-- end Add subject and button-->

				<!-- Start Panel-->
				<!-- Start Add Generation -->
				<div class="row">
					<div id="hide">
						<div class="col-md-4" id="add-gen" style="display: none;">
							<span>Course<span class="star">*</span></span> <input
								type="text" class="form-control" placeholder="Course"
								style="margin: 5px;" id="course" ng-model="course">
						</div>

						<div class="col-md-4" id="start-date" style="display: none;">
							<span>Start Date<span class="star">*</span></span> <input
								type="text" id="datepicker1" class="form-control"
								placeholder="Click here to select date" style="margin: 5px;">
						</div>

						<div class="col-md-4" style="display: none;" id="end-date">
							<span>End Date<span class="star">*</span></span> <input
								type="text" id="datepicker2" class="form-control"
								placeholder="Click here to select date" style="margin: 5px;">
						</div>

					</div>
					<div class="row" style="margin: 5px;">
						<div class="pull-right" id='btn' style="display: none;">
							<button class="btn btn-success" id="btnSave" ng-click="submit()">Save</button>
							<button class="btn btn-danger" id="btnCancel">Cancel</button>
						</div>
					</div>
				</div>
				<!-- End Row -->
			</fieldset>
		</div>
		<!-- End Panel--> </section>
	</div>
	<!-- End Main content -->
	</div>
	</div>
	<!-- End Content-->
	</div>
	</div>
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<jsp:include page="../include/footDashboard.jsp"/>
	<jsp:include page="../include/sweetalert.jsp"/>
	<script
		src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/datetimepicker/jquery.datetimepicker.min.js"></script>
	<script>
		var app = angular.module('app',
				[ 'angularUtils.directives.dirPagination' ]);
		app.controller('ctrl', function($scope, $http) {
			
			getData();
			getCourseID();
			getGeneration();
			clearInputControll();
			
			$scope.getGeneration = function(){
				getData();
			}

			function getData() {
				$http({
					url : 'http://localhost:8080/api/course/find-all-course',
					method : 'GET'
				}).then(function(response) {
					$scope.courses = response.data.DATA;
				}, function(response) {
					alert("error");
				});
			};
			
			/* function getCourseStatus() {
				$http({
					url : 'http://localhost:8080/api/course/find-all-course',
					method : 'GET'
				}).then(function(response) {
					$scope. = response.data.DATA.STATUS;
				}, function(response) {
					alert("error");
				});
			}; */
			
			function getGeneration(){
				$http({
						url:'http://localhost:8080/api/generation/find-all-generation',
						method:'GET'
					}).then(function(response){
						$scope.generations = response.data.DATA;
					}, function(response){
						alert("error");
					});
			};
			
			$scope.sort = function(keyname) {
				$scope.sortKey = keyname; //set the sortKey to the param passed
				$scope.reverse = !$scope.reverse; //if true make it false and vice versa
			}
			
			$scope.submit = function(){
				$scope.end_date = $('#datepicker1').val();
				$scope.start_date = $('#datepicker2').val()
				$http({
					url: 'http://localhost:8080/api/course/register-course',
					data:{
						 "COURSE_END_DATE": $scope.end_date,
						 "COURSE_ID": $scope.id,
						 "COURSE_NAME": $scope.course,
						 "COURSE_START_DATE": $scope.start_date,
						 "STATUS": true
					},
					method: 'POST'
				}).then(function(response){
					getData();
					clearInputControll();
				}, function(response){
					
				})
			}
			
			function getCourseID(){
				$http({
						url:'http://localhost:8080/api/course/auto-course-id',
						method:'GET'
					}).then(function(response){
						$scope.id = response.data.DATA.MAX_ID;
					}, function(response){
						alert("error");
					});
			};
			
			$scope.finish = function(id){
				swal({   title: "Are you sure want finish?",   text: "You want finish!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, Finished!",   closeOnConfirm: false }, function(){   
						swal("Finished!", "Finished.", "success"); 
						alert(id);
						
					});
			}
			
			function clearInputControll(){
				$('input').val("");
				$("select").prop("selectedIndex",0);
			}
		});
	
		
		/* jquery */
		$(document).ready(
				function() {

					$("#btn-plus").click(function() {
						$("#hide").fadeIn();
						$("#add-gen").fadeIn();
					});
					$("#btnCancel").click(function() {
						$("#start-date").fadeOut("fast");
						$("#end-date").fadeOut("fast");
						$("#add-gen").fadeOut("fast");
						$("#btn").fadeOut("fast");
						$("#hide").fadeOut("fast");
					});
					//--Add Course--//
					$("#add-gen").keypress(function() {
						if($('#course').val() != '' && $('#course').val() != null)
							$("#start-date").fadeIn("slow");
					});
					//--Add Class--//
					$("#start-date").mouseleave(function() {
						if($("#datepicker1").val() != '' && $("#datepicker1").val() != null)
							$("#end-date").fadeIn("slow");
					});

					$("#end-date").mouseleave(function() {
						if($("#datepicker2").val() != '' && $("#datepicker2").val() != null)
							$("#btn").fadeIn("slow");
					});
					//Date Time Picker
					$(function() {
						$("#datepicker1").datepicker();
					});

					$(function() {
						$("#datepicker2").datepicker();
					});

				});
		
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!--End Script-->
</body>
</html>