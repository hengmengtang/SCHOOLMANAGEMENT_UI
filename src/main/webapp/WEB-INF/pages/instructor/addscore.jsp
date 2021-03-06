<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
<jsp:include page="../include/headDashboard.jsp" />
<jsp:include page="../include/sweetalert.jsp" />
<!-- Delete Arrow key on input type number -->
<!-- <style>
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
    /* display: none; <- Crashes Chrome on hover */
    -webkit-appearance: none;
    margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
}
	.modal-content{
			background-color: #FAFAFA; 
		}
</style> -->
</head>
<body class="bg" ng-app="appAddScore">

	<jsp:include page="index.jsp" />
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent"
		style="padding-left: 15px; padding-right: 15px" >
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
		<section class="content" ng-controller="scoreCtrl">
		<div class="container-fluid" style="border: 2px solid green; background-color: #e0f2f2">
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
								<sec:authorize access="isAuthenticated()">
									<label class="form-control selectpicker" ng-model="instructors" ng-init="instructors='<sec:authentication property="principal.username" />'" disabled>									
											<sec:authentication property="principal.username" />							
									</label>
								</sec:authorize>
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

					<div class="col-md-3 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> Course
							</span> 
							<label class="form-control selectpicker" 
								 id="course" ng-model="course" readonly>{{course}}</label>
						</div>
					</div>
					<div class="col-md-3 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> Class </span>
							<select class="form-control selectpicker" ng-model="classes" ng-mouseover="getClass()">
								<option value="">Class</option>
									<option ng-repeat="class in class_name">{{class.CLASS_NAME}}</option>			
							</select>
						</div>
					</div>					
		
				</div>
				
				<br>
				<!-- Start Selection -->
				<div class="row">
					<div class="col-md-3 pull-left">
							<div class="input-group pull-left">
								<span class="input-group-addon"
									style="color: white; background-color: #00A65A;" > Subject </span>
								<select class="form-control selectpicker" ng-model="subject" ng-disabled="!classes" ng-mouseover="getSubject()" >
									<option value=" " selected >Subject</option>
									<option ng-repeat="sub in subjects">{{sub.SUBJECT_NAME}}</option>
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
								ng-model="date"   readonly>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 pull-left" ng-show="pagination">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="background-color: #00A65A;"> <i
								class="fa fa-align-justify" style="color: white;"></i>
							</span> <select class="form-control selectpicker">
								<option>5</option>
								<option>10</option>
								<option>15</option>
								<option>20</option>				
							</select>
						</div>
					</div>
				
					<div class="col-md-2 pull-right">
						<button class="btn btn-primary" id="addScore" ng-disabled="!subject" ng-click="unViewPage()" >Add Score</button>
						<button class="btn btn-primary" id="viewScore" ng-disabled="!subject" ng-click="viewPage();checkViewScore()">View Score</button>
						<input type="hidden" id="getUser" value="korean">
					</div>
				</div>
			
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
								<tr ng-repeat="stu in getStudent" my-filter>
									<td>{{$index+1}}</td>
									<td>{{stu.ENGLISH_FULL_NAME}}</td>
									<td>{{stu.COURSE_NAME}}</td>
									<td>{{stu.CLASS_NAME}}</td>
									<td>
									 <input type="text" id="score" class="score_" placeholder="Score" data-mask="99.99">
									 <input value="{{stu.STUDENT_ID}}" id="stu_id" style="display:none;"> </td>
								</tr>
							</tbody>
						</table>
						<div class="pull-right">
							<input type="submit" id="save" value="Save" class="btn btn-success pull-left"
								ng-click="addScore()">
							<input type="submit" value="Cancel" class="btn btn-danger pull-right"
								>
						</div>
					</div>
				</div>
				<!-- End Add Score Table Here -->
				<!-- Start View Score Table Here -->
				<div  style="margin-top: 20px; display: none;" id="viewScoreTable">
					<div class="table-responsive">
						<table class="table" id="basicCourse" style="display: none">
							<thead>
								<tr style="font-size: 16px;">
									<th>N <sup>o</sup></th>
									<th>Student&#x2191;&#x2193;</th>
									<th>Class&#x2191;&#x2193;</th>
									<th>{{subject}}&#x2191;&#x2193;</th>
									<!-- <th>Korean&#x2191;&#x2193;</th>
									<th>Web&#x2191;&#x2193;</th> -->
									<th>Update</th>
								</tr>
							</thead>
							<tbody>
								<tr ng-repeat="stud in viewBasicScore">
									<td>{{$index+1}}</td>
									<td>{{stud.MONTHLY_RESULT.STUDENT_NMAE}}</td>
									<td>{{stud.MONTHLY_RESULT.CLASS_NAME}}</td>
									<td>{{stud.SCORE}}</td>
									<!-- <td class="korean">{{stud.KOREAN}}</td>
									<td class="web">{{stud.WEB}}</td> -->
									<td>
										<button type="button" class="btn btn-primary"
											ng-click="sendDataTo(stud)"  data-toggle="modal" data-target="#update">
											<span class="glyphicon glyphicon-pencil"></span>
										</button>
									</td>
									
								</tr>
							</tbody>
						</table>
					</div> 
				<!-- End View view Score -->
				
				<!-- View Advance Course Score -->
					 <div class="table-responsive">
						<table class="table" id="advanceCourse" style="display: none">
							<thead>
								<tr style="font-size: 16px;">
									<th>N <sup>o</sup></th>
									<th>Student&#x2191;&#x2193;</th>
									<th>Class&#x2191;&#x2193;</th>
									<th>IOS&#x2191;&#x2193;</th>
									<th>Korean&#x2191;&#x2193;</th>
									<th>Total Score&#x2191;&#x2193;</th>
								</tr>
							</thead>
							<tbody>
								<tr ng-repeat="scores in viewAdvanceScore">
									<td>{{$index+1}}</td>
									<td>{{scores.MONTHLY_RESULT.STUDENT_NMAE}}</td>
									<td>{{scores.MONTHLY_RESULT.CLASS_NAME}}</td>
									<td>{{scores.IOS}}</td>
									<td>{{scores.SPRING}}</td>
									<td>{{scores.ANDROID}}</td>
								</tr>
							</tbody>
						</table>
					</div> 
				</div>
				<!-- End View Advance Course Score -->
			
		</fieldset>
		</div>
		<!-- End page --> 
		</section>
		<!-- model update score author mengtang -->
	<div class="modal fade" id="update" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" >
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Update Score</h4>
				</div>
				<div class="modal-body" >
					<div class="row">
						<div class="col-md-3 form-group">
							<label>Mark ID: </label>
						</div>
						<div class="col-md-9 form-group">
							<input type="text" class="form-control" name="stu_id"
								ng-model="mark_id" disabled="disabled">
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 form-group">
							<label>Student Name: </label>
						</div>
						<div class="col-md-9 form-group">
							<input type="text" class="form-control" ng-model="stuName" disabled="disabled">
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 form-group">
							<label>Class Name: </label>
						</div>
						<div class="col-md-9 form-group">
							<input type="text" class="form-control" ng-model="class_name" disabled="disabled">
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 form-group">
							<label>Score: </label>
						</div>
						<div class="col-md-9 form-group">
							<input type="text" class="form-control updateScore" ng-model="score" data-mask="99.99">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<a href="" type="button" class="btn btn-default"
						ng-click="updateScore()"
						ng-disabled="!score"
						disabled> Update </a>
					<button type="button" id="close" class="btn btn-primary" data-dismiss="modal">
						Close</button>
				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal  Update-->
	<!-- end model update score -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<jsp:include page="../include/inputmask.jsp" />
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
  /*   $("#addScore").click(function(){
    	if($("#getUser").val() =="korean"){
    		$(".koreanScore").show();
    	}
    	else if($("#getUser").val() =="web"){
    		$(".webScore").show();
    	}
    	else if($("#getUser").val() =="java"){
    		$(".javaScore").show();
    	}
    }); */

    
    $("#save").click(function(){
    	$("#addScore").prop("disabled",true);
    	$("#addScoreTable").hide();
    	
    }); 
    
    $("#addScore").click(function(){
    	
    	$("#addScoreTable").fadeToggle();
    	$("#viewScoreTable").hide();
    });
    $("#viewScore").click(function(){
    	$("#viewScoreTable").fadeToggle("fast",function(){
    		if($("#course").text()=='Basic Course' ){ 
    			$('#basicCourse').fadeIn("fast");
    			$('#advanceCourse').fadeOut("fast");
    			
    		}
    		if($("#course").text() == 'Advance Course'){ 
    			$('#basicCourse').fadeOut("fast");
    			$('#advanceCourse').fadeIn("fast");
    		} 
    	});
    	
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
		app.directive('myFilter', [function() {
            return {
                restrict: 'A',       
                link: function(scope, element) {
                    // wait for the last item in the ng-repeat then call init
                    if (scope.$last){
                        $('.score_,.updateScore').inputmask({
                        	'mask' : "99.99"
                    	});
                    }
                    
                }
            };
        }]);

			app.controller('scoreCtrl', function($scope, $http){
				//author mengtang
				//get data from table cell for update score
				$scope.sendDataTo=function(stud){
					$scope.mark_id=stud.MONTHLY_RESULT.MARK_ID;
					$scope.stuName=stud.MONTHLY_RESULT.STUDENT_NMAE;
					$scope.class_name=stud.MONTHLY_RESULT.CLASS_NAME;
					$scope.score=stud.SCORE; 
				}
			
				//update score
				$scope.updateScore = function(){
					swal({   
			            title: "Update Person",   
			            text: "Do You Want to update!",   
			            type: "success",   
			            showCancelButton: true,   
			            closeOnConfirm: false,   
			            showLoaderOnConfirm: true, 
			        }, 
			        function(){   
			            setTimeout(function(){ 
			            	$http({
								url: 'http://localhost:2222/api/mark/update-mark',
								method: 'PUT',
								data:{
									'MARK_ID':$scope.mark_id,
									'MARK':$scope.score
								}
							}).then(function(response){
								$scope.getViewBasic();
								swal("Good job!", "You update successful!", "success");
								$('#close').trigger('click');
								 
							},function(response){
								swal("Error!", "You cannot update!", "error");
							});
			            }, 1000); 
			        });
				} 
				//end update score
				$scope.date = new Date();
				 function getInstructor(){
					$http({
							url:'http://localhost:2222/api/staff/display-staff-in-class',
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
							url:'http://localhost:2222/api/generation/get-last-generation',
							method:'GET'
						}).then(function(response){
							$scope.generation = response.data.DATA.GENERATION_NAME;
						}, function(response){
							alert("error");
						});
				};
				getGeneration();
				//i changed get last course to get current course
				function getCourse(){
					$http({
							url:'http://localhost:2222/api/course/get-current-course',
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
							url:'http://localhost:2222/api/mark/display-student-to-add-score',
							method:'GET'
						}).then(function(response){
							$scope.getStudent = response.data.DATA; 
							$scope.stu_id=response.data.DATA.STUDENT_ID;
							$scope.stu_name=response.data.DATA.ENGLISH_FULL_NAME;
							/* angular.forEach($scope.getStudent,function(value,index){
				                alert(value.STUDENT_ID);
				            }); */
						}, function(response){
							alert("error");
						});
				};
				getStudentInClass();
				
				$scope.getClass = function(){
					getClassBy($scope.course, $scope.generation, $scope.instructors);
				} ;
				/* Get Class */
				function getClassBy(course,generation,instructors){
					//alert(instructors)
					$http({
						url:"http://localhost:2222/api/class/get-class-by-staff-generation-course",
						method:'POST',
						data:{
							"COURSE_NAME": course,
							"GENERATION_NAME": generation,
							"STAFF_NAME": instructors
						}
					}).then(function(response){
						/* getData(); */ 
						$scope.class_name= response.data.DATA;  
						console.log($scope.class_name);
					}, function(response){
						/* alert("error"); */
					});
				};   
				
				$scope.getSubject = function(){
					getSubjectBy($scope.course, $scope.generation, $scope.instructors, $scope.classes);
				}
				
				function getSubjectBy(course, generation, instructor, clas){
					$http({
						url:'http://localhost:2222/api/subject/get-current-subject-in-course',
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
			    function viewClasses(){
					return $scope.instructor;
				}
			    
			    $scope.addScore = function(){
			    	$scope.score = $("input[id='score']").map(function(){return $(this).val();}).get();
			    	$scope.stu_id = $("input[id='stu_id']").map(function(){return $(this).val();}).get();
			    	angular.forEach($scope.stu_id, function(stu_id, $index){
							$scope.id = stu_id;			    		
			    		 angular.forEach($scope.score, function(score, key){
			    			$scope.s = score;
			    		 if($index == key){
			    			 alert($scope.id+","+$scope.s+", "+$scope.classes+", "+$scope.instructors+", "+$scope.subject);
			    			 $http({
									url:'http://localhost:2222/api/mark/add-mark',
									method:'POST',
									data:{
										'MARK': $scope.s,
										'PARAMETER_FOR_ADD_MARK': {
									   		'CLASS_ROOM_NAME': $scope.classes,
									    	'STAFF_NAME': $scope.instructors,
									    	'STUDENT_ID': $scope.id,
									    	'SUBJECT_TYPE_NAME': $scope.subject
									  	}
			    			 			
									}
			    			 		
								}).then(function(response){
									alert(response.data.DATA.MESSAGE)
								}, function(response){
									alert("error");
								});
			    			 return;
			    		 }
					})
				})
			    }
			    $scope.getViewScore=function(){
				    $http({
						url:'http://localhost:2222/api/monthly-result/monthly-result-advance-course/'+ $scope.generation,
						method:'POST',
					}).then(function(response){ 
						$scope.viewAdvanceScore = response.data.DATA; 
						//console.log($scope.viewStuScore);
					}, function(response){
						 alert("error"); 
					});	
			    }
			     $scope.getViewBasic=function(){ 
			    	 $http({
							url:'http://localhost:2222/api/monthly-result/monthly-result-basic-course',
							method:'POST',
							data:{
								 'CLASS_NAME':  $scope.classes,
								 'STAFF_NAME': $scope.instructors,
								 'SUBJECT_NAME': $scope.subject,
								 'COURSE_NAME': $scope.course
							} 
						}).then(function(response){ 
							$scope.viewBasicScore = response.data.DATA; 
							console.log($scope.viewStuScore);
						}, function(response){
							 alert("error"); 
						});			     
			     }
			    
			     $scope.checkViewScore=function(){
			    	if($scope.course =='Advance Course'){
			    		 $scope.getViewScore();
			    	}
			    	else $scope.getViewBasic();
			    	
			    } 
			  
			    
			   
			  /*  $scope.add=functin(){
				   
				   
				 /* $http({
						url:'http://localhost:8080/api/class/get-class-by-generation-course',
						method:'POST',
						data:{
							'MARK': $scope.score,
							'PARAMETER_FOR_ADD_MARK': {
						   		'CLASS_ROOM_NAME': $scope.classes,
						    	'STAFF_NAME': $scope.instructors,
						    	'STUDENT_ID': $scope.getStudent.STUDENT_ID,
						    	'SUBJECT_TYPE_NAME': $scope.subject
						  }
						}
					}).then(function(response){
						
					}, function(response){
						alert("error");
					});    */
			 /* }  */
				 
			}); 
	
	</script>

</body>
</html>