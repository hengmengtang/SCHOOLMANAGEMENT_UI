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
						</span> <select class="form-control selectpicker">
							<option value="allgeneration">All Generation</option>
							<option value="generation1">Generation 1</option>
							<option value="generation2">Generation 2</option>
							<option value="generation3">Generation 3</option>
							<option value="generation4">Generation 4</option>
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
								<th>Delete</th>
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
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<!-- <tr>
								<td>2</td>
								<td>Aing Techun</td>
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
								<td>Phang Pirag</td>
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
								<td>Pheng Tola</td>
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
								<td>Lun Sovathana</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr> -->
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
					Subject<span class="star">*</span>
				</div>
				
			</div>

			<div class="row">

				<div class="col-md-4">
					<!-- <select class="form-control select" id="add-gen"
						style="display: none;">
						<option>Select Generation</option>
						<option value="gen1" id="gen1">Generation 1</option>
						<option value="gen2" id="gen2">Generation 2</option>
						<option value="gen3" id="gen3">Generation 3</option>
						<option value="gen4" id="gen4">Generation 4</option>
					</select> -->
					<input type="text" class="form-control select" id="add-gen"
						style="display: none;" value="Generation4th"  readonly>
				</div>

				<div class="col-md-4">
					<input type="text" class="form-control select" id="add-course"
						style="display: none;" value="Advance Course" ng-model="course" >
				</div>
				<!-- <div id="hide-sub"> -->
				<div class="col-md-3">
					<select class="form-control select" id="add-subject-basic"
						style="display: none; position: absolute;">
						<option>Select Subject</option>
						<option value="java">Java</option>
						<option value="web">Web</option>
						<option value="korean">Korean</option>
					</select>
				</div>
				<div class="col-md-3">
					<select class="form-control select" id="add-subject-advance"
						style="display: none;position: absolute;" ng-model="subject">
						<option>Select Subject</option>
						<option value="ios">IOS</option>
						<option value="android">Android</option>
						<option value="delphi">Delphi</option>
						<option value="spring">Spring</option>
						<option value="c">C</option>
					</select>
				</div>
			
				

			</div>
			<!-- End Row -->
			<div class="row" style="margin-top: 5px;">
				<div class="col-md-4">
					Class<span class="star">*</span>
				</div>
				<div class="col-md-4">
					Instructor<span class="star">*</span>
				</div>
				<div class="col-md-4">
					Enroll Date<span class="star">*</span>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<select class="form-control select" id="add-class"
						style="display: none;" ng-model="Class">
						<option >Select Class</option>
						<option value="BTB">Battambang</option>
						<option value="PP">Phnom Penh</option>
						<option value="KPS">Kampongsom</option>
						<option value="SR">Siem Reap</option>
					</select>
				</div>
				<div class="col-md-4">
					<div class="form-group" id="add-stu" style="display: none;">
						<input type="text" class="form-control"
							placeholder="Instructor Name" ng-model="staff">
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
							$("#add-gen")
									.change(
											function() {
												var gen = $(this).val();
												(gen == "gen1" || gen == "gen2"
														|| gen == "gen3" || gen == "gen4") ? $(
														"#add-course").fadeIn(
														'slow')
														: $("#add-course")
																.fadeOut('slow');
											});

							//--Add Subject--//
							$("#add-course")
									.change(
											function() {
												var course = $(this).val();
												if(course='Advance Course') $(
												"#add-subject-advance").fadeIn(
												"slow")
												else $("#add-subject-advance")
														.fadeOut("slow");
											});
							//--Add Class--//
							$("#add-subject-basic,#add-subject-advance")
									.change(
											function() {
												var sub = $(this).val();
												if(sub) $("#add-class").fadeIn(
														"slow")
												if(sub=='Select Subject') $("#add-class")
																.fadeOut("slow");
											});
							
							//--Add Instructor--//
							$("#add-class")
									.change(
											function() {
												var clas = $(this).val();
												(clas == 'BTB' || clas == 'PP'
														|| clas == 'KPS' || clas == 'SR') ? $(
														"#add-stu").fadeIn(
														"slow")
														: $("#add-stu")
																.fadeOut("slow");
											});
							//--Add Date--//
							$("#add-stu")
									.click(
											function() {
												$("#add-date").fadeIn("slow")
											});

							//--Add Button--//
							$("#add-date").click(function() {
								$("#add-btn").fadeIn("slow");
							});

						});
		
	</script>
	<!-- Angular Js -->
	<script>
		var app = angular.module('appInstructEnroll', ['angularUtils.directives.dirPagination']);
			app.controller('instEnrollCtrl', function($scope, $http){
				
				
				function getData(){
						$http({
								url:'http://localhost:8080/api/staff/display-staff-in-class',
								method:'GET'
							}).then(function(response){
								$scope.instructor = response.data.DATA;
								console.log($scope.instructor)
							}, function(response){
								alert("error");
							});
				};
				getData(); 
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

					}, function(response){
						alert("error");
					});
				}; 
				
			});
	</script>
	
</body>
</html>