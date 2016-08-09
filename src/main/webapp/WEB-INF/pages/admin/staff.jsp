<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>HRD Student Management</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<jsp:include page="../include/headDashboard.jsp" />
<link
	href="${pageContext.request.contextPath }/resources/style/customSubject.css"
	rel="stylesheet" />
 <script src="${pageContext.request.contextPath }/resources/bootstrapcheckbox/bootstrap-checkbox.min.js"></script>
</head>
<body>
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			Staff <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Staff</li>
		</ol>
		</section>

		<!-- Main content-->
		<section class="content"> <!-- Start Container -->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2" ng-app="app" ng-controller="ctrl">
			<!-- Start Row 1 -->
			<div class="row">

				<div class="col-md-8" style="font-size: 18px;">
					<i class="fa fa-user" aria-hidden="true"></i> Staff List
				</div>
				<!-- Start Pagination -->
				<div class="col-md-4">
					<ul class="pagination pull-right" style="margin-top: 3px;">
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
				</div>
				<!-- End Pagination -->
			</div>
			<!-- End Row 1 -->
			<!-- Start Selection -->
			<div class="row">
				<div class="col-md-2">
					<div class="input-group pull-left">
						<span class="input-group-addon" style="background-color: green;">
							<i class="fa fa-align-justify" style="color: white;"></i>
						</span> <select class="form-control select">
							<option>1</option>
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
							type="text" class="form-control" placeholder="Search Staff...">
					</div>
				</div>
				<!-- End Search Location -->
			</div>
			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr style="font-size: 16px;">
								<th ng-click="sort('id')">Staff ID&#x2191;&#x2193;</th>
								<th ng-click="sort('khmerName')">English Full Name&#x2191;&#x2193;</th>
								<th><center>Gender</center></th>
								<th>Position</th>
								<th>Email</th>
								<th>Drop</th>
							</tr>
						</thead>
						<tbody>
							<tr dir-paginate="staff in staffs|orderBy:sortKey:reverse|filter:{'KHMER_FULL_NAME':searchStudent}|itemsPerPage:select">
								<td>{{staff.STAFF_ID}}</td> 
								<!-- <td>{{student.KHMER_FULL_NAME}}</td> -->
								<td>{{staff.ENGLIST_FULL_NAME}}</td>
								
									<td><center>
										<span class="label label-danger" style="font-size: 13px;" ng-if="staff.GENDER=='f'">{{staff.GENDER | uppercase}}</span>
										<span class="label label-info" style="font-size: 13px;" ng-if="staff.GENDER=='m'">{{staff.GENDER | uppercase}}</span>
									</center></td>
								
								<td>{{staff.DATE_OF_BIRTH}}</td>
								<td>{{staff.PLACE_OF_BIRTH}}</td>
								<td>{{staff.EMAIL}}</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
									<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" ng-click="update(student)"><i class="glyphicon glyphicon-refresh"></i></button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- End Table -->

			<!--Start Add Staff-->
			<div class="row" style="margin: 5px;">

				<div class="pull-left" style="color: black;">
					<span class="glyphicon glyphicon-pencil" style="color: green;"></span>
					<span>Add Staff</span>
				</div>

				<div class="pull-right">
					<div class="btn-group">
					  <button type="button" class="btn btn-primary" id="btnpss">Promote student to staff <i class="glyphicon glyphicon-user"></i></button>
					  <button type="button" class="btn btn-primary" id="other">Other <i class="glyphicon glyphicon-user"></i></button>
					</div>
				</div>

			</div>
			<!-- Start Form -->
			
			<form style="margin: 20px; display: none" id="form-add">
				<fieldset>
					<div class="row">
						<div class="col-md-10"></div>
						<div class="form-group col-md-2">
							<label for="exampleInputFile"> <img src="images/user.ico"
								alt="" class="img-circle img-responsive "
								style="width: 180px; height: 180px; border: 1px solid black;">
							</label>
						</div>
					</div>

					<div class="row">

						<div class="col-md-6">
							<label for="exampleInputFName">First Name </label>
							<div class="input-group">
								<span class="input-group-addon " id="basic-addon1"
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-user" aria-hidden="true"
									style="font-size: 16px;"></i> </span> <input type="text"
									class="form-control" placeholder="First Name"
									aria-describedby="basic-addon1">
							</div>
						</div>

						<div class="col-md-6">
							<label for="exampleInputLName">Last Name </label>
							<div class="input-group">
								<span class="input-group-addon " id="basic-addon1"
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-user" aria-hidden="true"
									style="font-size: 16px;"></i> </span> <input type="text"
									class="form-control" placeholder="Last Name"
									aria-describedby="basic-addon1">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label>Gender </label> <br>
							<!--Radio-->
							<label class="radio-inline"> <input type="radio"
								name="inlineRadioOptions" id="inlineRadio1" value="option1">
								Male
							</label> <label class="radio-inline"> <input type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="option2">
								Female
							</label>
						</div>
					</div>

					<div class="row">

						<div class="col-md-6">
							<label for="exampleInputPosition">Position </label>
							<div class="input-group">
								<span class="input-group-addon "
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-cog" style="font-size: 16px;"></i> </span>
								<input type="text" class="form-control" placeholder="Position">
							</div>
						</div>

						<div class="col-md-6">
							<label for="exampleInputPhone">Phone </label>
							<div class="input-group">
								<span class="input-group-addon "
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-earphone" style="font-size: 16px;"></i>
								</span> <input type="text" class="form-control"
									placeholder="010-234-567">
							</div>
						</div>

					</div>

					<div class="row">

						<div class="col-md-6" id="email">
							<label for="exampleInputPhone">Email </label>
							<div class="input-group">
								<span class="input-group-addon "
									style="color: white; background-color: #00A65A"><i
									aria-hidden="true" style="font-size: 20px;"><b>@</b></i> </span> <input
									type="Email" class="form-control"
									placeholder="YourEmail@gamil.com">
							</div>
						</div>

						<div class="col-md-6" id="password">
							<label for="exampleInputPhone">Password </label>
							<div class="input-group">
								<span class="input-group-addon"
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-lock" style="font-size: 16px;"></i>
								</span> <input type="password" class="form-control"
									placeholder="password">
							</div>
						</div>

					</div>
					<div class="row pull-right" style="margin: 7px;">
						<div id="button">
							<button type="button" class="btn btn-success" id="btnSave">Save</button>
							<button type="button" class="btn btn-danger" id="btnCancel">Cancel</button>
						</div>
					</div>

				</fieldset>
			</form>
			<!-- End Form -->
		</div>
		</section>

	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp"></jsp:include>
	<script>
  $(document).ready(function(){
    $( "#btn-sub" ).click(function() {
      $( "#form-add" ).fadeIn();
    });
    $("#btnCancel").click(function(){
    	$( "#form-add" ).fadeOut("fast");
	});
  });
</script>
<script src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script>
		var app = angular.module('app', ['angularUtils.directives.dirPagination']);
			app.controller('ctrl', function($scope, $http){
				
				getData();
				
				function getData(){
						$http({
								url:'http://localhost:8080/staff/find-all-staff',
								method:'GET'
							}).then(function(response){
								$scope.staffs = response.data.DATA;
									
							}, function(response){
								alert("error");
							});
				};
				
				$scope.update = function(data){
					$scope.stu_id = data.STUDENT_ID;
					$scope.khmerFName = data.KHMER_FULL_NAME;
				}
				
				$scope.sort = function(keyname){
			        $scope.sortKey = keyname;   //set the sortKey to the param passed
			        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
			    }
			});
	</script>
</body>
</html>