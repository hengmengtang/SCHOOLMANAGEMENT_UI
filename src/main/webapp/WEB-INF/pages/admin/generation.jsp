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
<jsp:include page="../include/headGeneration.jsp" />
<jsp:include page="../include/headDashboard.jsp" />
</head>
<body class="bg">

	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent" ng-app="appGen" ng-controller="genCtrl">
		<section class="content-header">
		<h1>
			Study <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
					Home</a></li>
			<li><a href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>Study
					Management</a></li>
			<li><small>Generation</small></li>
		</ol>
		</section>
		
		<!-- Main content -->
		<section class="content">

		<div class="container-fluid" style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
				<div class="row">
					<!-- Title -->
					<div class="col-md-2 pull-left">
						<i class="fa fa-graduation-cap"></i> <small style="color: black;">Generation</small>
					</div>
					<!-- End Title -->

					<!-- pagination -->
					<div class="col-md-10">
						<ul class="pagination pull-right" style="margin-top: 2px;">
							<dir-pagination-controls
						       max-size="5"
						       direction-links="true"
						       boundary-links="true" >
					    	</dir-pagination-controls>
						</ul>
					</div>
					<!-- End Pagination -->
				</div>
				<!-- Start Row 2 -->
				<div class="row">

					<div class="col-md-2">

						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="background-color: #00A65A;"> <i
								class="fa fa-align-justify" style="color: white;"></i>
							</span> <select class="form-control selectpicker" ng-model="No" ng-init="No | No='No'">
								<option value="">No</option>
								<option>4</option>
								<option>6</option>
								<option>10</option>
							</select>

						</div>
					</div>
					<!-- End Selector -->
					<div class="col-md-3">

						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1"
								style="background-color: #00A65A;"><i
								class="fa fa-search" style="color: white;"></i> </span> <input
								type="text" class="form-control" placeholder="Generation" ng-model="search" ng-init="search | search='Generation'">
						</div>

					</div>

				</div>
				<!-- End Row 2 -->

				<!-- Start Table -->
				<div class="row" style="margin: 0px;">
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>N <sup>o</sup>&#x2191;&#x2193;</th>
									<th ng-click="sort('gen_name')">Genration<span class="arrow1">&#x2191;&#x2193;</span></th>
									<th>Start Date<span class="arrow1"></span></th>
									<th>End Date<span class="arrow1"></span></th>
									<th>Finish</th>
								</tr>
							</thead>
							<tbody>
								<tr dir-paginate="gen in generations|orderBy:sortKey:reverse|filter:{'GENERATION_NAME':search}|itemsPerPage:No">
									<td>{{$index+1}}</td>
									<td>{{gen.GENERATION_NAME}}</td>
									<td>{{gen.GENERATION_START_DATE}}</td>
									<td>{{gen.GENERATION_END_DATE}}</td>
									<td>
										<button type="button" class="btn btn-danger"
											ng-if="gen.ACTIVE==false">Yes</button>
										<button type="button" class="btn btn-success"
											ng-if="gen.ACTIVE==true">
											<span class="glyphicon glyphicon-ok"></span>
										</button>
									</td>
								</tr>
							</tbody>

						</table>
					</div>
					<!-- End Table -->
				</div>
				<!-- End Row 3 -->
				<!-- Start add generation -->
				<div class="row" style="margin: 0px;">
					<!-- <div class="col-md-2"> -->
					<div class="pull-left" style="color: black;">
						<i class="fa fa-plus-circle" style="color: green;"></i> <span>Add
							Generation</span>
					</div>

					<div class="pull-right">
						<button class="pull-right btn btn-success" id="btn-sub">
							<span class="glyphicon glyphicon-plus"></span>
						</button>
					</div>

				</div>
				<!-- End add generation -->

				<!-- Start Add Generation -->
				<div class="row">
					<div id="hide">
						<div style="display:none ;" id="id">
							<span>Generation ID</span> <input
								type="text" class="form-control" placeholder="Generation"
								style="margin-top: 5px;" ng-model="id" readonly>
						</div>
						<div class="col-md-4" style="display: none;" id="gen">
							<span>Generation<span class="star">*</span></span> <input
								type="text" class="form-control" placeholder="Generation"
								style="margin-top: 5px;" ng-model="genName">
						</div>

						<div class="col-md-4" style="display: none;" id="start-date">
							<span>Start Date<span class="star">*</span></span> <input
								id="startDate" class="form-control"
								placeholder="Click here to select date" style="margin-top: 5px;"
								ng-model="startDate">
						</div>

						<div class="col-md-4" style="display: none;" id="end-date">
							<span>End Date<span class="star">*</span></span> <input
								id="endDate" type="text" class="form-control"
								placeholder="Click here to select date" style="margin-top: 5px;"
								ng-model="endDate">
						</div>
						
						<div class="row" style="margin: 7px;">
							<div class="col-md-9 pull-left"></div>
							<div class="col-md-3 pull-right" style="margin-top: 5px; display: none;"
								id="button">
								<button type='button' class="btn btn-success" id="btnSave"
									ng-click="add()">Save</button>
								<button type='button' class="btn btn-danger" id="btnCancel">Cancel</button>
							</div>
						</div>
					</div>
				</div>
				<!-- End Button Save and Cancel -->
			</fieldset>
		</div>
		<!-- End page --> 
		</section>
	</div>
	<!-- .content-wrapper -->
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<!--Add Script-->
	<jsp:include page="../include/footDashboard.jsp" />
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script src="${pageContext.request.contextPath}/resources/angularjs/angular.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script src="${pageContext.request.contextPath}/resources/datetimepicker/jquery.datetimepicker.js"></script>
	<script>
		$(document).ready(
				function() {
				
					//-- bottom add --//
					$("#btn-sub").click(function() {
						$("#hide").fadeIn();
						$("#gen").fadeIn("slow");
					});
					
					//-- bottom cancel --//
					$("#btnCancel").click(function(){
						$("#start-date").fadeOut("fast");
						$("#end-date").fadeOut("fast");
						$("#button").fadeOut("fast");
						$("#hide").fadeOut("fast");
					});
					//--Add Course--//
					$("#gen").click(function() {
						$("#start-date").fadeIn("slow");
					});
					//--Add Class--//
					$("#start-date").click(function() {
						$("#end-date").fadeIn("slow");

					});

					$("#end-date").click(function() {
						$("#button").fadeIn("slow");

					});
					$('#datepicker1 , #datepicker2').datetimepicker(
							{
								onGenerate : function(ct) {
									$(this).find('.xdsoft_date').toggleClass(
											'xdsoft_disabled');
								},
								timepicker : false,
								formatDate : 'Y/m/d',
								minDate : '-1970/01/02',//yesterday is minimum date(for today use 0 or -1970/01/01)
								maxDate : '+1970/01/02'//tomorrow is maximum date calendar
							});

				});
		$(function(){	
			/* initialize date picker */
		$("#startDate").datepicker();
		$("#endDate").datepicker();
		
		});
	</script>
	
	<!-- Angular Code -->
	<script>
		var app = angular.module('appGen', ['angularUtils.directives.dirPagination']);
			app.controller('genCtrl', function($scope, $http){
				
				getData();
				getGenID();
				
				function getData(){
						$http({
								url:'http://localhost:8080/api/generation/find-all-generation',
								method:'GET'
							}).then(function(response){
								$scope.generations = response.data.DATA;
							}, function(response){
								alert("error");
							});
				};
				
				$scope.add=function(){
					$http({
						url:'http://localhost:8080/api/generation/add-generation',
						method:'POST',
						data:{
							'ACTIVE': true,
							'GENERATION_ID': $scope.id,
							'GENERATION_NAME': $scope.genName,
							'GENERATION_START_DATE': $scope.startDate,
							'GENERATION_END_DATE': $scope.endDate
						}
					}).then(function(response){
						getData();
					}, function(response){
						alert("error");
					});
				};  
				
				function getGenID(){
					$http({
							url:'http://localhost:8080/api/generation/auto-generation-id',
							method:'GET'
						}).then(function(response){
							$scope.id = response.data.DATA.MAX_ID;
						}, function(response){
							alert("error");
						});
				};
				
			});
	</script>
	<!--End Script-->
	</div>
</body>
</html>