<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>School Management System</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<jsp:include page="../include/headDashboard.jsp" />
<link
	href="${pageContext.request.contextPath }/resources/style/customClass.css"
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
			Study <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
					Home</a></li>
			<li><a href="#">Student Management</a></li>
			<li class="active">Class</li>
		</ol>
		</section>

		<!-- Main content -->
		<section class="content" ng-app="app" ng-controller="ctrl">
		<!-- Main content -->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
				<!-- Start Row 1(Titel and Pagination) -->
				<div class="row">
					<!-- pagination -->
					<div class="col-md-2 pull-left">
						<i class="fa fa-university" style="color: black;"></i> <small
							style="color: black;"> Class</small>
					</div>

					<div class="col-md-10">
						<ul class="pagination pull-right" style="margin-top: 2px;">
							<dir-pagination-controls max-size="5" direction-links="true"
								boundary-links="true"> </dir-pagination-controls>
						</ul>
					</div>

				</div>
				<!-- End Row 1(Titel and Pagination) -->
				<!-- Start Row 2(Generation and Search) -->
				<div class="row">
					<!-- <div class="col-md-2"> -->
					<div class="col-md-2">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: green;"> <i
								class="fa fa-align-justify"></i>
							</span> <select class="form-control selectionpicker" ng-model="No"
								ng-init="No | No='No'">
								<option value="">No</option>
								<option>1</option>
								<option>20</option>
							</select>
							<!-- End Selection -->
						</div>
					</div>
					<!-- Text Search -->
					<div class="col-md-3">
						<div class="input-group">
							<span class="input-group-addon" style="background-color: green;"><i
								class="fa fa-search" style="color: white;"></i> </span> <input
								type="text" class="form-control" placeholder="Class"
								ng-model="search" ng-init="search | search='Class'">
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
									<th>N <sup>o</sup></th>
									<th ng-click="sort('CLASS_NAME')">Class<span
										class="arrow1">&#x2191;&#x2193;</span></th>
									<th>Closed</th>
								</tr>
							</thead>
							<tbody>
								<tr
									dir-paginate="class in classes|orderBy:sortKey:reverse|filter:{'GENERATION_NAME':generation, 'CLASS_NAME':search}|itemsPerPage:No|limitTo : 6">
									<td>{{$index+1}}</td>
									<td>{{class.CLASS_NAME}}</td>
									<td>
										<button type="button" class="btn btn-danger"
											ng-if="class.ACTIVE==false" ng-click="changeStatus(class.CLASS_NAME)">
											<span class="glyphicon glyphicon-ok"></span>
										</button>
										<button type="button" class="btn btn-success"
											ng-if="class.ACTIVE==true">
											<span class="glyphicon glyphicon-ban-circle"></span>
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
							style="font-size: 16px;">Add Class</b>
					</div>
					<div class="pull-right">
						<button class="btn btn-success" id="btn-add" ng-click="check()">
							<span class="glyphicon glyphicon-plus"> </span>
						</button>
					</div>
				</div>
				<!--End Add Student-->
				<!-- Start Add Generation -->
				<div class="row" ng-show="formClass">
					<div id="hide">
						<div class="col-md-3" id="add-gen" style="display: none;">
							<span>Generation<span class="star">*</span></span>
							<lebel class="form-control select controlBottom" id="selection"
								style="margin-top: 5px;" readonly>{{gen_last}}</lebel>
						</div>

						<div class="col-md-3" id="add-course" style="display: none;">
							<span>Course<span class="star">*</span></span>
							<lebel class="form-control select controlBottom" id="course"
								style="margin-top: 5px;" readonly> {{course}}</lebel>
						</div>

						<div class="col-md-5" id="add-class" style="display: none;">
							<span>Class<span class="star">*</span></span>
							<div>
								<input type="text" class="form-control select controlBottom"
									placeholder="Class" style="margin-top: 5px;"
									ng-model="class_name" id="class_name">
							</div>
						</div>

					</div>

					<div class="row" style="margin: 5px;">
						<div class="pull-right" id="add-btn" style="display: none;">
							<button type="button" class="btn btn-success" id="btnSave"
								ng-click="submit()">Save</button>
							<button type="button" class="btn btn-danger" id="btnCancel">Cancel</button>
						</div>
					</div>
				</div>
				<!-- End Row -->
			</fieldset>
		</div>
		<!-- End Class --> </section>
		<!-- /.content -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
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
							$scope.formClass = false;
							
							$scope.check = function(){
								if($scope.student == false && $scope.course_status == false){
									sweetAlert(
											'Class is not available...',
											'Course or Student is not exist!',
											'error'
										);
									return;
								}
								$scope.formClass = true;
							}
													
							$scope.changeStatus = function(name){
								swal({   title: "Are you sure want to be active?",   text: "You want to class be active!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, Active!",   closeOnConfirm: false }, function(){   
									swal("Active!", "Record has been active.", "success"); 
									updateStatus(name);
								});
							}
							
							function updateStatus(name){
								if($scope.courseStatus == true && $scope.gen_lastStatus == true){
									$http({
										url:'http://localhost:2222/api/class/change-status-class/'+name,
										method:'GET'
									}).then(function(response){
										getData();
									}, function(response){
										/* alert("error"); */
									});
								}else{
									sweetAlert(
											'Class is not available...',
											'Course or Generation is not exist!',
											'error'
										);
								}
							}
							
							function getLastStatusCourse(){
								$http({
									url:'http://localhost:2222/api/course/get-last-course',
									method:'GET'
								}).then(function(response){
									if(response.data.DATA == null)
										$scope.course_status = false;
									else
										$scope.course_status = response.data.DATA.STATUS;
									/* alert("course "+$scope.status); */
								}, function(response){
									/* alert("error"); */
								});
							}
							

							function getData() {
								$http(
									{
										url : 'http://localhost:2222/api/class/find-all-class',
										method : 'GET'
									}).then(function(response) {
										$scope.classes = response.data.DATA;
										getGeneration();
										getLastStatusCourse();
										getID();
										getStudent();
										getLastCourse();
										getLastGeneration();
								}, function(response) {
									/* alert("error"); */
								});
							}
							;

							$scope.sort = function(keyname) {
								$scope.sortKey = keyname; //set the sortKey to the param passed
								$scope.reverse = !$scope.reverse; //if true make it false and vice versa
							}

							function clearInputControll() {
								$('input').val("");
								$("select").prop("selectedIndex", 0);
							}

							function getID() {
								$http(
										{
											url : 'http://localhost:2222/api/class/auto-class-id',
											method : 'GET'
										}).then(function(response) {
									$scope.id = response.data.DATA.MAX_ID;
								}, function(response) {

								})
							}

							function getLastCourse() {
								$http(
										{
											url : 'http://localhost:2222/api/course/get-last-course',
											method : 'GET'
										})
										.then(
												function(response) {
													$scope.course = response.data.DATA.COURSE_NAME;
													$scope.courseStatus = response.data.DATA.STATUS;
												}, function(response) {
													/* alert("error"); */
												});
							}

							function getLastGeneration() {
								$http({
										url : 'http://localhost:2222/api/generation/get-last-generation',
										method : 'GET'
									}).then(
										function(response) {
											$scope.gen_last = response.data.DATA.GENERATION_NAME;
											$scope.gen_lastStatus = response.data.DATA.STATUS;
										}, function(response) {
											/* alert("error"); */
									});
							};

							$scope.submit = function() {

								$scope.status = false;

								angular.forEach($scope.classes, function(clas) {
									if (clas.CLASS_NAME == $scope.class_name) {
										sweetAlert('Class is not available...',
												'The class already exit!',
												'error')
										return $scope.status = true;
									}
								});

								if ($scope.status == false) {
									$http({
											url : 'http://localhost:2222/api/class/add-class',
											data : {
												"ACTIVE" : true,
												"CLASS_ID" : $scope.id,
												"CLASS_NAME" : $scope.class_name,
											},
											method : 'POST'
										}).then(function(response) {
											getData();
											getGeneration();
											getID();
											getLastCourse();
											getLastGeneration();
											clearInputControll();
									}, function(response) {

									})
								}

							}
						});
	</script>
	
	<!--Add Script-->
	<script>
		$(document)
				.ready(
						function() {
							//--Add Generation--//
							$("#btn-add").click(function() {
								$("#hide").fadeIn();
								$("#add-gen").fadeIn("slow");
								$("#add-course").fadeIn('slow');
								$("#add-class").fadeIn("slow");
							});
							$("#btnCancel").click(function() {
								$("#class_name").val('');
								$("#add-btn").fadeOut("fast");
								$("#hide").fadeOut("fast");
							});

							//--Add Student--//
							$("#add-class")
									.change(
											function() {
												var clas = $(this).val();
												(clas == 'btb' || clas == 'pp'
														|| clas == 'kps' || clas == 'sr') ? $(
														"#add-stu").fadeIn(
														"slow")
														: $("#add-stu")
																.fadeOut("slow");
											});

							//--Add Button--//
							$("#add-class").click(function() {
								$("#add-btn").fadeIn("slow");
							});

						});
	</script>
	<!--End Script-->
</body>
</html>
