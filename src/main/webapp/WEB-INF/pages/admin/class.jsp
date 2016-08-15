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
		<section class="content" ng-app="app" ng-controller="ctrl"> <!-- Main content -->
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
						<dir-pagination-controls
					       max-size="5"
					       direction-links="true"
					       boundary-links="true" >
					    </dir-pagination-controls>
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
						</span> <select class="form-control selectionpicker" ng-model="No" ng-init="No | No='No'">
							<option value="">No</option>
							<option>10</option>
							<option>20</option>
						</select>
						<!-- End Selection -->
					</div>
				</div>
				<!--div class="col-md-3" -->
				<div class="col-sm-3">

					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> Generation
						</span> <select class="form-control selectpicker" ng-model="generation" ng-init="generation | generation='Generation'">
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
							type="text" class="form-control" placeholder="Class" ng-model="search" ng-init="search | search='Class'">
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
								<th ng-click="sort('gen_name')">Class<span style="color: blue; font-weight: bold;">&#x2191;&#x2193;</span></th>
								<th>Course<span style="color: blue; font-weight: bold;"></span></th>
								<th>Generation<span style="color: blue;"></span></th>
								<th>Closed</th>
							</tr>
						</thead>
						<tbody>
							<tr dir-paginate="class in classes|orderBy:sortKey:reverse|filter:{'CLASS_NAME':search}|itemsPerPage:No">
								<td>{{$index+1}}</td>
								<td>{{class.CLASS_NAME}}</td>
								<td>{{class.CLASS_NAME}}</td>
								<td>{{class.CLASS_NAME}}</td>
								<td>
									<button type="button" class="btn btn-danger"
										ng-if="class.ACTIVE==false">
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
					<button class="btn btn-success" id="btn-add">
						<span class="glyphicon glyphicon-plus"> </span>
					</button>
				</div>
			</div>
			<!--End Add Student-->
			<!-- Start Add Generation -->
			<div class="row">
				<div id="hide">				
				<div class="col-md-3" id="add-gen" style="display: none;">
					<span>Generation<span class="star">*</span></span> 
					<lebel class="form-control select controlBottom" id="selection"
						style="margin-top: 5px;" readonly>Generation4th</lebel>
				</div>

				<div class="col-md-3" id="add-course" style="display: none;">
					<span>Course<span class="star">*</span></span> <lebel
						class="form-control select controlBottom" id="course" style="margin-top: 5px;" readonly>
						Basic</lebel>
				</div>

				<div class="col-md-5" id="add-class" style="display: none;">
					<span>Class<span class="star">*</span></span>
					<div>
						<input type="text" class="form-control select controlBottom" placeholder="Class"
							style="margin-top: 5px;" ng-model="class_name">
					</div>
				</div>

			</div>

			<div class="row" style="margin: 5px;">
				<div class="pull-right" id="add-btn" style="display: none;">
					<button type="button" class="btn btn-success" id="btnSave" ng-click="submit()">Save</button>
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
	<script
		src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script>
		var app = angular.module('app',
				[ 'angularUtils.directives.dirPagination' ]);
		app.controller('ctrl', function($scope, $http) {
			
			getData();
			getGeneration();
			getID();
			
			$scope.getGeneration = function(){
				getData();
			}

			function getData() {
				$http({
					url : 'http://localhost:8080/api/class/find-all-class',
					method : 'GET'
				}).then(function(response) {
					$scope.classes = response.data.DATA;
					console.log(response.data.DATA.COURSE_START_DATE)
				}, function(response) {
					alert("error");
				});
			};
			
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
			
			function clearInputControll(){
				$('input').val("");
				$("select").prop("selectedIndex",0);
			}
			
			function getID(){
				$http({
					url: 'http://localhost:8080/api/class/auto-class-id',
					method: 'GET'
				}).then(function(response){
					$scope.id = response.data.DATA.MAX_ID;
				}, function(response){
					
				})
			}
			
			$scope.submit = function(){
				
				$http({
					url: 'http://localhost:8080/api/class/add-class',
					data:{
						 "ACTIVE": true,
						  "CLASS_END_DATE": "string",
						  "CLASS_ID": $scope.id,
						  "CLASS_NAME": $scope.class_name,
						  "CLASS_START_DATE": "string"
					},
					method: 'POST'
				}).then(function(response){
					getID();
					clearInputControll();
				}, function(response){
					
				})
			}
		});
	</script>
	<script>
  		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!--Add Script-->
	<script>
  $(document).ready(function(){
    //--Add Generation--//
    $( "#btn-add" ).click(function() {
    	$("#hide").fadeIn();
      $( "#add-gen" ).fadeIn( "slow");
      $("#add-course").fadeIn('slow');
      $("#add-class").fadeIn("slow");
    });
    $("#btnCancel").click(function(){
		
		$("#add-btn").fadeOut("fast");
		$("#hide").fadeOut("fast");
	});
    
    //--Add Student--//
    $( "#add-class" ).change(function() {
      var clas=$(this).val();
      (clas=='btb' || clas=='pp' || clas=='kps' || clas=='sr') ? $("#add-stu").fadeIn( "slow"): $("#add-stu").fadeOut( "slow");
    });

    //--Add Button--//
    $( "#add-class" ).click(function() {
      $("#add-btn").fadeIn( "slow");
    });

  });
</script>
	<!--End Script-->
</body>
</html>
