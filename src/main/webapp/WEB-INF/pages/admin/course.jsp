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
					
					<!-- Text Search -->
					<div class="col-md-3">
						<div class="input-group">
							<span class="input-group-addon" style="background-color: green;"><i
								class="fa fa-search" style="color: white;"></i> </span> <input
								type="text" class="form-control" placeholder="Course" id="search_course"
								onkeyup="this.value=this.value.replace(/[^A-Za-z]/g,'');" ng-keyup="searchCourse()">
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
										<th>N<sup>o</sup></th>
										<th ng-click="sort('COURSE_NAME')">Course</th>
										<th>Start Date</th>
										<th>End Date</th>
										<th>Closed</th>
									</tr>
								</thead>
							<tbody>
									<tr dir-paginate="course in courses|orderBy:sortKey:reverse|filter:{'COURSE_NAME':search_course}|itemsPerPage:select|limitTo : 6">
										<td>{{$index+1}}</td>
										<td>{{course.COURSE_NAME}}</td>
										<td>{{course.COURSE_START_DATE}}</td>
										<td>{{course.COURSE_END_DATE}}</td>
										<td>
											<button type="button" class="btn btn-danger"
												ng-if="course.STATUS==false" ng-click="active(course.COURSE_ID)">
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
						<button class="pull-right btn btn-success" id="btn-plus" ng-click="addCourse()" data-toggle="{{modal}}" data-target="{{idmodal}}">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>

				</div>
				<!-- end Add subject and button-->

				<!-- Start Panel-->
				<!-- Start Add Generation -->
				<div class="row" ng-show="formAddCourse">
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
		<!-- End Panel--> 
		 <!-- Modal -->
		  <div class="modal fade" id="idModal" role="dialog">
		    <div class="modal-dialog">
		    
		      <!-- Modal content-->
		      <div class="modal-content">
		        <div class="modal-header">
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		          <h4 class="modal-title" style=" text-decoration: underline;"><a href="/admin/generation"><u>You should create generation before create course!</a></h4>
		        </div>
		        <div class="modal-footer">
		          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        </div>
		      </div>
		      
		    </div>
		  </div>
		</section>
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
			clearInputControll();
			
			$scope.getGeneration = function(){
				getData();
			}
			
			$scope.searchCourse = function(){
				$scope.search_course = $('#search_course').val();
			}

			function getData() {
				$http({
					url : 'http://localhost:2222/api/course/find-all-course',
					method : 'GET'
				}).then(function(response) {
					$scope.courses = response.data.DATA;
					getLastCourse();
					getLastGenerationName();
					getLastGeneration();
					getCourseID();
					getGeneration();
				}, function(response) {
					/* alert("error"); */
				});
			};
			
			$scope.addCourse = function(){
				if($scope.status == true || $scope.generation_status != true){
					if($scope.generation_status == false){
						$scope.modal = "modal";
						$scope.idmodal = "#idModal";
					} 
					if($scope.status == true)
						sweetAlert(
							'Course is not available...',
							'The last Course is available or Generation has been closed!',
							'error'
						);
				}
				else $scope.formAddCourse = true;
			}
			
			function getLastCourse(){
				$http({
					url:'http://localhost:2222/api/course/get-last-course',
					method:'GET'
				}).then(function(response){
					$scope.status = response.data.DATA.STATUS;
					$scope.course_name = response.data.DATA.COURSE_NAME;
				}, function(response){
					/* alert("error"); */
				});
			}
			
			function updateStatus(id){
				$http({
						url:'http://localhost:2222/api/course/change-status-course/'+id,
						data:{
							"COURSE_NAME": $scope.course_name,
							"GENERATION_NAME": $scope.generation_name,
							"SUCCESS": 0
						},
						method:'POST'
					}).then(function(response){
						getData();
						$scope.status = false;
					}, function(response){
						/* alert("error"); */
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
			
			function getLastGeneration(){
				$http({
						url:'http://localhost:2222/api/generation/get-generation-status-true',
						method:'GET'
					}).then(function(response){
						if(response.data.DATA == null)
							$scope.generation_status = false;
						else
							$scope.generation_status = response.data.DATA.STATUS;
					}, function(response){
						/* alert("error"); */
					});
			};
			
			function getLastGenerationName(){
				$http({
						url:'http://localhost:2222/api/generation/get-last-generation',
						method:'GET'
					}).then(function(response){
						if(response.data.DATA == null)
							$scope.generation_name = "";
						else
							$scope.generation_name = response.data.DATA.GENERATION_NAME;
					}, function(response){
						/* alert("error"); */
					});
			};
			
			$scope.sort = function(keyname) {
				$scope.sortKey = keyname; //set the sortKey to the param passed
				$scope.reverse = !$scope.reverse; //if true make it false and vice versa
			}
			
			$scope.submit = function(){
				$scope.end_date = $('#datepicker1').val();
				$scope.start_date = $('#datepicker2').val()
				
				$scope.courseStatus = false;

				angular.forEach($scope.courses, function(course) {
					if (course.COURSE_NAME == $scope.course) {
						sweetAlert('Course is not available...',
								'The course already exit! You just click active in close action.',
								'error')
						return $scope.courseStatus = true;
					}
				});

				if ($scope.courseStatus == false) {
					$http({
						url: 'http://localhost:2222/api/course/register-course',
						data:{
							 "COURSE_END_DATE": $scope.end_date,
							 "COURSE_ID": $scope.id,
							 "COURSE_NAME": $scope.course,
							 "COURSE_START_DATE": $scope.start_date
						},
						method: 'POST'
					}).then(function(response){
						getData();
						clearInputControll();
					}, function(response){
						
					})
				}
			}
			
			function getCourseID(){
				$http({
						url:'http://localhost:2222/api/course/auto-course-id',
						method:'GET'
					}).then(function(response){
						$scope.id = response.data.DATA.MAX_ID;
					}, function(response){
						/* alert("error"); */
					});
			};
			
			$scope.finish = function(id){
				swal({   title: "Are you sure want closed?",   text: "You want closed!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, Closed!",   closeOnConfirm: false }, function(){   
						swal("Closed!", "Closed.", "success"); 
						updateStatus(id);
						
					});
			}
			
			$scope.active = function(id){
				if($scope.status == false){
					swal({   title: "Are you sure want active?",   
							 text: "You want active!",   
							 type: "warning",   
							 showCancelButton: true,  
							 confirmButtonColor: '#009688', 
							 confirmButtonText: "Yes, Active!", 
							 closeOnConfirm: false }, function(){
							 swal("Active!", "Active.", "success"); 
							 updateStatus(id);
						});
				}else{
					sweetAlert(
							'Course is not available...',
							'The last Course is available',
							'error'
						);
				}
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
					$("#start-date").change(function() {
						if($("#datepicker1").val() != '' && $("#datepicker1").val() != null)
							$("#end-date").fadeIn("slow");
					});

					$("#end-date").change(function() {
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
		
	</script>
	<!--End Script-->
</body>
</html>