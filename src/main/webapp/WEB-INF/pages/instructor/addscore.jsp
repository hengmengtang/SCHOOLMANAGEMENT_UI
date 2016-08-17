<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
<jsp:include page="../include/headDashboard.jsp" />
</head>
<body class="bg">
	<jsp:include page="index.jsp" />
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent"
		style="padding-left: 15px; padding-right: 15px" ng-app="appAddScore" ng-controller="scoreCtrl">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			HRD<small> Student Score </small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Student Score</li>
		</ol>
		</section>

		<!-- Main content-->
		<section class="content">
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
				<div class="row">
					<!-- Title -->
					<div class="col-md-2 pull-left">
						<i class="fa fa-graduation-cap"></i> <span style="color: black;">Student
							Score</span>
					</div>
					<!-- End Title -->

					<!-- pagination -->
					<div class="col-md-10">
						<ul class="pagination pull-right" style="margin-top: 2px;">
							<li><a href="#">First</a></li>
							<li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
							<li><a href="#">Last</a></li>
						</ul>
					</div>
					<!-- End Pagination -->
				</div>
				<!-- Testing -->
				<div class="row">
					<div class="col-md-3 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Instructor </span> 
								<!-- <input class="form-control selectpicker" placeholder="Instructor name"
								ng-model=""  > -->
								<select class="form-control" ng-model="instructors">
									<option value="">Select Staff</option>
									<option ng-repeat="ins in instructor">
										{{ins.ENGLISH_FULL_NAME}}
									</option>
								</select>
						</div>
					</div>
					<div class="col-md-3 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Generation </span> 
								<label class="form-control selectpicker" id="generation"    
							 readonly>{{generation}}</label>
						</div>
					</div>

					<div class="col-md-2 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> Course
							</span> 
							<label class="form-control selectpicker" 
								 id="course" readonly>{{course}}</label>
						</div>
					</div>
					<div class="col-md-2 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> Class </span>
							<select class="form-control selectpicker" ng-model="classes" ng-mouseover="getClass()" ng-disabled="!instructors">
								<option value="">Class</option>
									<option ng-repeat="c in Class">{{c.CLASS_NAME}}</option>			
							</select>
						</div>
					</div>
					<div class="col-md-2 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> Subject </span>
							<select class="form-control selectpicker" ng-model="subject" ng-disabled="!classes" ng-mouseover="getSubject()">
								<option value=" " selected>Subject</option>
								<option ng-repeat="s in subjects">{{s.SUBJECT_NAME}}</option>
							</select>
						</div>
					</div>
		
				</div>
				
				<br>
				<!-- Start Selection -->
				<div class="row">
					<div class="col-md-2" ng-show="pagination">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="background-color: #00A65A;"> <i
								class="fa fa-align-justify" style="color: white;"></i>
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
					<!--Search Location-->
					<div class="col-md-2 pull-right">
						<div class="input-group pull-right">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> Date
							</span> 
							<input class="form-control selectpicker"
								ng-model="date | date:'yyyy-MM-dd'"   readonly>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10"></div>
					<div class="col-md-2">
						<button class="btn btn-primary" id="addScore" ng-disabled="!subject" ng-click="unViewPage()">Add Score</button>
						<button class="btn btn-primary" id="viewScore" ng-disabled="!subject" ng-click="viewPage()">View Score</button>
						<input type="hidden" id="getUser" value="korean">
					</div>
				</div>
				<!-- End Selection -->
				<!-- Start Add Score Table Here-->
				<div style="margin-top: 20px; display: none" id="addScoreTable">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr style="font-size: 16px;">
									<th>N <sup>o</sup></th>
									<th>Student&#x2191;&#x2193;</th>
									<th>Course</th>
									<th>Class&#x2191;&#x2193;</th>
									<th>Score</th>
								</tr>
							</thead>
							<tbody>
								<tr ng-repeat="stu in getStudent">
									<td>{{$index+1}}</td>
									<td>{{stu.ENGLISH_FULL_NAME}}</td>
									<td>{{stu.COURSE_NAME}}</td>
									<td>{{stu.CLASS_NAME}}</td>
									<td><input type="text" pattern="^[0-9]$" maxlength="5"
										class="koreanScore" placeholder="Korean Score"
										style="display: none;"> <input type="text"
										pattern="^[0-9]$" maxlength="5" class="javaScore"
										placeholder="Java Score" style="display: none;"> <input
										type="text" pattern="^[0-9]$" maxlength="5" class="webScore"
										placeholder="Web Score" style="display: none;"></td>
								</tr>
							</tbody>
						</table>
						<div class="pull-right">
							<input type="submit" value="Save" class="btn btn-success pull-left"
								>
							<input type="submit" value="Cancel" class="btn btn-danger pull-right"
								>
						</div>
					</div>
				</div>
				<!-- End Add Score Table Here -->
				<!-- Start View Score Table Here -->
				<div style="margin-top: 20px; display: none" id="viewScoreTable">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr style="font-size: 16px;">
									<th>N <sup>o</sup></th>
									<th>Student&#x2191;&#x2193;</th>
									<th>Class&#x2191;&#x2193;</th>
									<th>Korean&#x2191;&#x2193;</th>
									<th>Web&#x2191;&#x2193;</th>
									<th>Java&#x2191;&#x2193;</th>
									<th>Total Score&#x2191;&#x2193;</th>
								</tr>
							</thead>
							<tbody>
								<tr >
									<td>1</td>
									<td>Heng Mengtang</td>
									<td>Battambang</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Sam Ol Sam On</td>
									<td>Battambang</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- End View Score Table Here -->
				</div>
				</div>
				</div>
			</div>
		</div>
		</fieldset>
		</div>
		<!-- End page --> 
		</section>
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<script src="${pageContext.request.contextPath}/resources/angularjs/angular.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script>
        $(document).ready(function(){
        	
    $("#btn-add").click(function(){
        $("#add-gen").fadeIn();
    });
    $("#add-gen").click(function(){
    	$("#add-course").fadeIn();
    });
    $("#add-course").click(function(){
    	$("#add-class").fadeIn();
    });
    $("#add-class").click(function(){
    	$("#add-stu").fadeIn();
    });
    $("#add-stu").click(function(){
    	$("#add-btn").fadeIn();
    });
    $("#addScore").click(function(){
    	if($("#getUser").val() =="korean"){
    		$(".koreanScore").show();
    	}
    	else if($("#getUser").val() =="web"){
    		$(".webScore").show();
    	}
    	else if($("#getUser").val() =="java"){
    		$(".javaScore").show();
    	}
    });
    $("#addScore").click(function(){
    	$("#addScoreTable").fadeToggle();
    	$("#viewScoreTable").hide();
    });
    $("#viewScore").click(function(){
    	$("#viewScoreTable").fadeToggle();
    	$("#addScoreTable").hide();
    });
    
    <!--Validate Number Korean Score-->
    
        $(".koreanScore").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                 // Allow: Ctrl+A, Command+A
                (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || 
                 // Allow: home, end, left, right, down, up
                (e.keyCode >= 35 && e.keyCode <= 40)) {
                     // let it happen, don't do anything
                     return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
    });
        <!--Validate Number WebScore-->
        
        $(".webScore").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                 // Allow: Ctrl+A, Command+A
                (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || 
                 // Allow: home, end, left, right, down, up
                (e.keyCode >= 35 && e.keyCode <= 40)) {
                     // let it happen, don't do anything
                     return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
    });
<!--Validate Number javaScore-->
        
        $(".javaScore").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                 // Allow: Ctrl+A, Command+A
                (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || 
                 // Allow: home, end, left, right, down, up
                (e.keyCode >= 35 && e.keyCode <= 40)) {
                     // let it happen, don't do anything
                     return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
    });
});
</script>
<script>
		var app = angular.module('appAddScore', []);
			app.controller('scoreCtrl', function($scope, $http){
				
				$scope.date = new Date();
				 function getInstructor(){
					$http({
							url:'http://localhost:8080/api/staff/display-staff-in-class',
							method:'GET'
						}).then(function(response){
							$scope.instructor = response.data.DATA;
							/* console.log($scope.instructor) */
						}, function(response){
							alert("error");
						});
				};
				getInstructor(); 
				function getGeneration(){
					$http({
							url:'http://localhost:8080/api/generation/get-last-generation',
							method:'GET'
						}).then(function(response){
							$scope.generation = response.data.DATA.GENERATION_NAME;
						}, function(response){
							alert("error");
						});
				};
				getGeneration();
				function getCourse(){
					$http({
							url:'http://localhost:8080/api/course/get-last-course',
							method:'GET'
						}).then(function(response){
							$scope.course = response.data.DATA.COURSE_NAME;
						}, function(response){
							alert("error");
						});
				};
				getCourse();
				function getStudentInClass(){
					$http({
							url:'http://localhost:8080/api/mark/display-student-to-add-score',
							method:'GET'
						}).then(function(response){
							$scope.getStudent = response.data.DATA;
							console.log($scope.instructor); 
						}, function(response){
							alert("error");
						});
				};
				getStudentInClass();
				/* Get Class */
				function getClassBy(course, generation, instructor){
					$http({
						url:'http://localhost:8080/api/class/get-class-by-generation-course',
						method:'POST',
						data:{
							"COURSE_NAME": course,
							"GENERATION_NAME": generation,
							"STAFF_NAME": instructor
						}
					}).then(function(response){
						/* getData(); */ 
						$scope.Class= response.data.DATA;  
					}, function(response){
						/* alert("error"); */
					});
				};   
				
				$scope.getClass = function(){
					getClassBy($scope.course, $scope.generation, $scope.instructors);
				}
				
				$scope.getSubject = function(){
					getSubjectBy($scope.course, $scope.generation, $scope.instructors, $scope.classes);
				}
				
				function getSubjectBy(course, generation, instructor, clas){
					$http({
						url:'http://localhost:8080/api/subject/get-current-subject-in-course',
						method:'POST',
						data:{
							"COURSE_NAME": course,
							"GENERATION_NAME": generation,
							"STAFF_NAME": instructor,
							"CLASS_NAME": clas
						}
					}).then(function(response){
						/* getData(); */ 
						$scope.subjects = response.data.DATA; 
						console.log($scope.subjects);
					}, function(response){
						/* alert("error"); */
					});	
				}
				$scope.viewPage=function(){
					if(this) $scope.pagination=true;
				}
				$scope.unViewPage=function(){
					if(this) $scope.pagination=false;
				}
				
				 $scope.add=function(){
					$http({
						url:'http://localhost:8080/api/class/get-class-by-generation-course'
						method:'POST',
						data:{
							'DATE': $scope.date,
							'MARK': $scope.score,
							'PARAMETER_FOR_ADD_MARK'.'STAFF_NAME': $scope.instructors,
							'PARAMETER_FOR_ADD_MARK'.'SUBJECT_TYPE_NAME': $scope.s.SUBJECT_NAME,
							'PARAMETER_FOR_ADD_MARK.CLASS_ROOM_NAME': $scope.c.CLASS_NAME,
							'PARAMETER_FOR_ADD_MARK.STUDENT_NAME': $scope.getStudent
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