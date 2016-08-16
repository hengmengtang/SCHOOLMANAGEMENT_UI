<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>School Management System</title>
<jsp:include page="../include/headDashboard.jsp" />
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
		Study <small>Management</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
				Home</a></li>
		<li><a href="#">Student Management</a></li>
		<li class="active">Subject</li>
	</ol>
	</section>

	<!-- Main content -->
	<section class="content" ng-app="app" ng-controller="ctrl">
	<!-- Main content --> <!-- Start Container -->
	<div class="container-fluid"
		style="border: 2px solid green; background-color: #e0f2f2">
		<fieldset>
			<!-- Start Row 1 -->
			<div class="row">

				<div class="col-md-8">
					<i class="fa fa-book" style="color: black;"></i> <small
						style="color: black;"> Subject</small>
				</div>

				<div class="col-md-4">
					<ul class="pagination pull-right" style="margin-top: 3px;">
						<dir-pagination-controls
					       max-size="5"
					       direction-links="true"
					       boundary-links="true" >
				    	</dir-pagination-controls>
					</ul>
				</div>
			</div>
			<!-- End Row 1 -->
			<!-- Start Selection -->
			<div class="row">
				<div class="col-md-2">
					<div class="input-group pull-left">
						<span class="input-group-addon" style="background-color: green;">
							<i class="fa fa-align-justify" style="color: white;"></i>
						</span> <select class="form-control select" ng-model="No" ng-init="No | No='No'">
							<option value="" selected>No</option>
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
							type="text" class="form-control" placeholder="Search Course" ng-model="search" ng-init="search | search='Search Subject Name...'">
					</div>
				</div>
				<!-- End Search Location -->
			</div>
			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th ng-click="sort('id')">N <sup>o</sup></th>
								<th>Subject<span style="color: blue; font-weight: bold;">&#x2191;&#x2193;</span></th>
								<th>Description<span
									style="color: blue; font-weight: bold;">&#x2191;&#x2193;</span></th>
								<th>Closed</th>
							</tr>
						</thead>
						<tbody>
							<tr dir-paginate="subject in subjects|orderBy:sortKey:reverse|filter:{'SUBJECT_NAME':search}|itemsPerPage:No">
								<td>{{$index+1}}</td>
								<td>{{subject.SUBJECT_NAME}}</td>
								<td>{{subject.DESCRIPTION}}</td>
								<td>
									<button type="button" class="btn btn-danger"
										ng-if="subject.ACTIVE==false">
										<span class="glyphicon glyphicon-ok"></span>
									</button>
									<button type="button" class="btn btn-success"
										ng-if="subject.ACTIVE==true" ng-click="finish(subject.SUBJECT_ID)">
										<span class="glyphicon glyphicon-ban-circle"></span>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- End Table -->
			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div style="color: black;">
					<i class="fa fa-plus-circle" style="color: green;"></i> <span>Add
						Subject</span>
					<button class="pull-right btn btn-success" id="btn-sub">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
			</div>
			<!-- Start Add Generation -->
			<div class="row" style="margin: 5px;">
				<div id="hide">
					<div class="col-md-5" style="display: none;" id="add-sub">
						<span>Subject<span class="star">*</span></span><br> <input
							type="text" class="form-control" placeholder="Subject"
							style="margin: 5px;" ng-model="sub" id="subject">
					</div>

					<div class="col-md-7" style="display: none;" id="des">
						<span>Description<span class="star">*</span></span><br> <input
							id="description" class="form-control"
							placeholder="Description" style="margin: 5px;" ng-model="des">
					</div>

				</div>

				<div class="row pull-right"
					style="margin: 0px; margin-bottom: 7px;">
					<div id="btn" style="display: none;">
						<button type="button" class="btn btn-success" id="btnSave">Save</button>
						<button type="button" class="btn btn-danger" id="btnCancel">Cancel</button>
					</div>
				</div>
			</div>
		</fieldset>
	</div>
	</section>
	<!-- /.content -->
</div>
<jsp:include page="../include/footer.jsp" />
<jsp:include page="../include/footDashboard.jsp" />

<script
	src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
<script>
		var app = angular.module('app',
				[ 'angularUtils.directives.dirPagination' ]);
		app.controller('ctrl', function($scope, $http) {
			
			getData();
			/* getCourseID();
			getGeneration();
			clearInputControll(); */
			
			function getData() {
				$http({
					url : 'http://localhost:8080/api/subject/find-all-subject',
					method : 'GET'
				}).then(function(response) {
					$scope.subjects = response.data.DATA;
					console.log($scope.subjects)
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
			
			/* function getGeneration(){
				$http({
						url:'http://localhost:8080/api/generation/find-all-generation',
						method:'GET'
					}).then(function(response){
						$scope.generations = response.data.DATA;
					}, function(response){
						alert("error");
					});
			};*/
			
			/* $scope.submit = function(){
				$http({
					url: 'http://localhost:8080/api/subject/add-subject',
					data:{
						  "ACTIVE": true,
						  "DESCRIPTION": $scope.description,
						  "SUBJECT_ID": "string",
						  "SUBJECT_NAME": $scope.subject
					},
					method: 'POST'
				}).then(function(response){
					getData();
					clearInputControll();
				}, function(response){
					
				})
			} */
			
			/*function getSubjectID(){
				$http({
						url:'http://localhost:8080/api/subject/auto-subject-id',
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
			 */
			 
			$scope.sort = function(keyname){
		        $scope.sortKey = keyname;   //set the sortKey to the param passed
		        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
		    }
			 
			function clearInputControll(){
				$('input').val("");
			}
		});
</script>
<script>
	<!--Add Script-->
	 $( document ).ready(function() {
	
	  $("#btn-sub").click (function(){
		$("#hide").fadeIn();
	    $("#add-sub").fadeIn();
	  });
	  $("#btnCancel").click(function(){
			$("#add-sub").fadeOut("fast");
			$("#des").fadeOut("fast");
			$("#btn").fadeOut("fast");
			$("#hide").fadeOut("fast");
		});
	  //--Add Course--//
	  $( "#add-sub" ).keypress(function() {
		  if($('#subject').val() != '' && $('#subject').val() != null) 
	    	$("#des").fadeIn( "slow");
	  });
	
	  $( "#des" ).keypress(function() {
		  if($('#description').val() != '' && $('#description').val() != null) 
	    	$("#btn").fadeIn( "slow");
	  });
	
	}); 
</script>
</body>
</html>