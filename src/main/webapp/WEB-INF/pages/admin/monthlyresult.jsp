<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="../include/headDashboard.jsp"></jsp:include>
<script src="${pageContext.request.contextPath}/resources/angularjs/angular.min.js"></script>
<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>	 -->
<style type="text/css">
	.pagination {
    display: inline-block;
    padding-left: 0;
    margin: 0px 0;
    border-radius: 4px;
}
</style>
</head>
<body class="bg" ng-app='myapp' ng-controller='Ctrl'>
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">

		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			Monthly Results <small>Preview</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
					Home</a></li>
			<li class="active">Monthly Results</li>
		</ol>
		</section>
		<!-- Main content -->
		<section class="content">

		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
				<div class="row">
					<!----------- pagination ------------>
					<div class="col-md-2 pull-left">
						<i class="fa fa-book" style="color: black;font-size: 18px"></i> <small
							style="color: black; font-size: 18px">&nbsp Monthly Results</small>
					</div>
					<br>
					</br>
				</div>
				<!-- End Row 1 -->
				<!-- Start Row 2(Generation and Search) -->
				<div class="row">
					<!-- <div class="col-md-2"> -->
					<div class="col-md-2">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> 
								<i class="fa fa-align-justify"></i>
							</span> 
							<select class="form-control selectionpicker" ng-model="select">
								<option value="">All</option>
								<option>10</option>
								<option>30</option>
								<option>60</option>
							</select>
							<!-- End Selection -->
						</div>
					</div>
					<!--div class="col-md-3" -->
					<div class="col-sm-3">

						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Generation </span> 
							<select class="form-control selectpicker"  ng-model="Gen">
								<option value="">Generation</option>
								<option ng-repeat="gen in generation"  value="{{gen.GENERATION_NAME}}" ng-selected="{{gen.GENERATION_NAME === Gen}}">{{gen.GENERATION_NAME}}</option>
							</select>
						</div>

					</div>
					<div class="col-sm-2">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Course </span> <select class="form-control selectpicker" ng-model="courses" ng-disabled="!Gen">
								<option value="">Course</option>
								<option ng-repeat="c in course ">{{c.COURSE_NAME}}</option>
							</select>
						</div>
					</div> 
					<div class="col-sm-2">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Date </span> 
								<input type="text" placeholder="Date" id="date" class="form-control selectpicker" ng-disabled="!courses" ng-mouseover="inputdate()" ng-blur="getdate()">
						</div>
						
					</div> 
					<!-- End Selection -->
					<!-- Text Search -->
					<div class="col-md-3">
						<div class="input-group">
							<span class="input-group-addon" style="background-color: #00A65A;"><i
								class="fa fa-search" style="color: white;"></i> </span> <input
								type="text" class="form-control" placeholder="Search Name" id="search_name" ng-keyup="searchName()"
								onkeyup="this.value=this.value.replace(/[^A-Za-z]/g,'');">
						
						<div class="input-group-btn">
							<button type="button" class="btn btn-danger"
													id="print" ng-disabled="print">Print</button>
							<button type="button" class="btn btn-success" ng-json-export-excel data="results" report-fields="{'INFORMATION.RANK': 'Rank', 'INFORMATION.STUDENT_NAME': 'Name',
													'INFORMATION.GENDER ': 'Gender','INFORMATION.CLASS_NAME':'Class',
													'JAVA': 'Java','KOREAN': 'Korean', 'WEB': 'Web','ATTENDANCE': 'Attendance', 'TOTAL':'Total'}" ng-disabled="exports">Export</button>
						</div>
						</div>
						
					</div> 
					<!-- End Text Search -->
				</div>
				<!-- End Row 2 -->
				<br><br>
				<!-- Start Row 3 -->
				<div class="row">
					<div class="col-md-1 pull-left">
						<button class="btn btn-primary" id="viewScore" ng-disabled="date" ng-click="getMonthlyResult()">View Score</button>
					</div>
					<div class="col-md-10">
						<ul class="pagination pull-right" style="margin: 0px !important; top: 0px !important;">
							<dir-pagination-controls
						       max-size="5"
						       direction-links="true"
						       boundary-links="true" >
					    	</dir-pagination-controls>
						</ul>
					</div>
				</div>
				<br>
					<!-- Start Table -->
					<div class="row" style="margin: 0px;">
						<div class="table-responsive">
							<table class="table table-hover" id="printTable">
								<thead>
									<tr style="font-size: 16px;">
										<th>Rank</th>
										<th>Student</th>
										<th><center>Gender</center></th>
										<th>Class</th>
										<th>Java</th>
										<th>Korean</th>
										<th>Web</th>
										<th>Attendance</th>
										<th>Total Score</th>
									</tr>
								</thead>
								<tbody>
									 <tr dir-paginate="re in results | orderBy:sortKey:reverse | itemsPerPage:select | filter:{'INFORMATION': {'STUDENT_NAME': searchStudent}}">
										<td>{{re.INFORMATION.RANK}}</td>
										<td>{{re.INFORMATION.STUDENT_NAME}}</td>
										<td><center>
												<span class="label label-danger" style="font-size: 13px;"
													ng-if="re.INFORMATION.GENDER=='f' || re.INFORMATION.GENDER=='F'">{{re.INFORMATION.GENDER |
													uppercase}}</span> <span class="label label-info"
													style="font-size: 13px;" ng-if="re.INFORMATION.GENDER=='m' || re.INFORMATION.GENDER=='M'">{{re.INFORMATION.GENDER
													| uppercase}}</span>
											</center></td>

										<td>{{re.INFORMATION.CLASS_NAME}}</td>
										<td>{{re.JAVA}}</td>
										<td>{{re.KOREAN}}</td>
										<td>{{re.WEB}}</td>
										<td>{{re.ATTENDANCE}}</td>
										<td>{{re.TOTAL}}</td>
									</tr> 
								</tbody>
							</table>
						</div>
					</div> 
					<!-- End Table(Row 3) -->
				</div>
				
				</section>
		</div>
		</fieldset>
	</div>
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<script src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script src="${pageContext.request.contextPath }/resources/angularjs/FileSaver.js"></script>
	<script src="${pageContext.request.contextPath }/resources/angularjs/json-export-excel.js"></script>
	<script>	
		function printData()
		{
		   var divToPrint=document.getElementById("printTable");
		   newWin= window.open("");
		   newWin.document.write(divToPrint.outerHTML);
		   newWin.print();
		   newWin.close();
		}
	
		$('#print').on('click',function(){
			printData();
		});
		
	</script>
	<script>
		var app = angular.module('myapp', ['angularUtils.directives.dirPagination','ngJsonExportExcel']);
		app.controller('Ctrl', function($scope, $http){
		  	
			$scope.print = true;
			$scope.exports = true;
			$scope.date = true;
			$scope.getMonthlyResult=function(){ 
				/* alert($scope.courses + ', ' + $('#date').val()+', ' +$scope.Gen) */
		    	 $http({
						url:'http://localhost:2222/api/monthly-result/monthly-result-on-month',
						method:'POST',
						data:{
							 'COURSE_NAME':  $scope.courses,
							 'DATE': $('#date').val(),
							 'GENERATION_NAME': $scope.Gen
						} 
					}).then(function(response){ 
						if(response.data.DATA != "" || response.data.DATA != null){
							$scope.results = response.data.DATA; 
							$scope.print = false;
							$scope.exports = false;
						}				
					}, function(response){
						 alert("error"); 
					});			     
		     } 
		    findAllGen();
		    findCourse();
		  	function findAllGen(){
		  		
				$http({
						url:'http://localhost:2222/api/generation/find-all-generation',
						method:'GET'
					}).then(function(response){
						$scope.generation = response.data.DATA;
					}, function(response){
						alert("error");
					}); 
			}
			function findCourse(){
		  		
				$http({
						url:'http://localhost:2222/api/course/find-all-course',
						method:'GET'
					}).then(function(response){
						$scope.course = response.data.DATA;
					}, function(response){
						alert("error");
					}); 
			}
			
			$scope.searchName = function(){
				$scope.searchStudent = $('#search_name').val(); 
			}
			
			$scope.inputdate = function() {
				$(function() {
					$("#date").datepicker({ viewMode: 'years',
				         format: 'yyyy-mm'});
				}); 
			}
				
			$scope.getdate = function(){
				if($('#date').val() != "" && $('#date').val() != null)
					$scope.date = false;
			}	
		});
	</script>

</body>
</html>