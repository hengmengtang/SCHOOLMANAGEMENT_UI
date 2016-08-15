<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<jsp:include page="../include/headDashboard.jsp" />
<link
	href="${pageContext.request.contextPath }/resources/style/customStudentList.css"
	rel="stylesheet" />
<script src="${pageContext.request.contextPath }/resources/bootstrapcheckbox/bootstrap-checkbox.min.js"></script>
</head>
<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent"  ng-app="appListStu" ng-controller="ctrlListStu">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			Student <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Student List</li>
		</ol>
		</section>
		<!-- modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog" style="width:774px">
				<!-- Modal content-->
			  	<div class="modal-content" style="width:800px">
			    	<div class="modal-header">
			      		<h4 class="modal-title">Students Information</h4>
			    	</div>
			    	<div class="modal-body">
						<section class="content"> <!--/.content-->
						<div class="container-fluid"
							style="border: 2px solid green; background-color: #e0f2f2"
							>
							<fieldset>

								<div class="row" style="margin: 3px;">

									<div class="col-md-8 pull-left">
										<i class="fa fa-pencil-square-o" style="font-size: 20px;"></i>
										<span style="font-size: 16px;">Student's
											Information</span>
									</div>
									<!-- Add Photo -->
									<div class="form-group col-md-2 col-sm-12 col-xs-12 pull-right">
										<div class="form-group cente ">
											<label for="exampleInputFile "> </label>
											</center>
											<img id="img"
												src="${pageContext.request.contextPath }/resources/images/user.ico"
												alt="" class="img-circle img-responsive "
												style="width: 180px; height: 180px; border: 1px solid black;">
			
										</div>
										<div class="form-group">
											<label for="photo"> </label> <input type="file" name="photo"
												id="photo" accept="images/*">
			
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-4" style="font-size: 22px;">
										<span class="label label-success">Student's Information</span>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="form-group col-md-3">
										<label for="exampleInputStuID">Student ID: <span
											class="star"> * </span></label> <span
											class="glyphicons glyphicons-user"></span> <input type="text"
											class="form-control " placeholder="Enter ID"
											ng-model="stu_id">
									</div>
								</div>

								<div class="row">
									<div class="form-group col-md-12">
										<label for="exampleInputFName">Khmer Full Name <span
											class="star"> * </span></label> <span
											class="glyphicons glyphicons-user"></span> <input type="text"
											class="form-control " placeholder="Enter khmer full name"
											ng-model="khmer_name">
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-12">
										<label for="exampleInputFLName">Latin Full Name <span
											class="star"> * </span></label> <span
											class="glyphicons glyphicons-user"></span> <input type="text"
											class="form-control " 
											placeholder="Enter Your First Latin Name"
											ng-model="latin_name">
									</div>
								</div>
								<!--Radio-->
								<div class="row">
									<div class="form-group col-md-6">
										<label>Gender <span class="star"> * </span></label> <br>
										<label class="radio-inline"> <input type="radio"
											id="m" name="gender" value="M"> Male
										</label> <label class="radio-inline"> <input type="radio"
											id="f" name="gender" value="F"> Female
										</label>
									</div>
									<div class="form-group col-md-6 required">
										<label class="control-label" for="dob">Birth Date<span
											class="star"> * </span></label> <input type="text" class="form-control"
											name="dob" ng-model="dob" placeholder="Birth date">
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-12">
										<label for="exampleInputPOB">Place Of Birth<span
											class="star"> * </span></label> <input type="text"
											class="form-control" 
											placeholder="Place Of Birth" ng-model="pob">
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-12">
										<label for="exampleInputAddress">Permanent Address<span
											class="star"> * </span></label> <input type="text"
											class="form-control" 
											placeholder="Address" ng-model="address">
									</div>
								</div>

								<div class="row">
									<div class="form-group col-md-12">
										<label for="exampleInputEmail2">Email <span
											class="star"> * </span></label> <input type="email"
											class="form-control" 
											placeholder="Your_email@gmail.com" ng-model="email">
									</div>
								</div>

								<div class="row">
									<div class="form-group col-md-4">
										<label for="ITYear">IT Year<span class="star">
												* </span></label> <select class="form-control" id="it_year">
											<option value="year 1">Year 1</option>
											<option value="year 2">Year 2</option>
											<option value="year 3">Year 3</option>
											<option value="year 4">Year 4</option>
											<option value="Other">Other</option>
										</select>
									</div>
									<div class="form-group col-md-4">
										<label for="Graduated">Graduated<span class="star">
												* </span></label> <input type="text" class="form-control" 
											ng-model="graduated" placeholder="Graduation">
									</div>
									<div class="form-group col-md-4">
										<label for="exampleInputUniversity">University<span
											class="star"> * </span></label> <input type="text" class="form-control"
											ng-model="university">
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-4">
										<label for="English">English Level<span class="star">
												* </span></label> <input type="text" class="form-control" ng-model="english">
									</div>
									<div class="form-group col-md-4">
										<label for="Korean">Korean Level<span class="star">
												* </span></label> <input type="text" class="form-control" ng-model="korean">
									</div>
									<div class="form-group col-md-3">
										<label for="Status">Status<span class="star"> *
										</span></label> <input type="text" class="form-control" ng-model="status">
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-4">
										<label for="Phone">Phone <span class="star"> *
										</span></label> <input type="text" class="form-control" 
											placeholder="Phone" ng-model="phone">
									</div>
									<div class="form-group col-md-4">
										<label for="exampleInputNationality">Nationality<span
											class="star"> * </span></label> <input type="text"
											class="form-control" 
											placeholder="Nationality" ng-model="nationality">
									</div>
									<div class="form-group col-md-4">
										<label for="exampleInputSocialID">Social ID<span
											class="star"> * </span></label> <input type="text"
											class="form-control"  placeholder="Social id"
											ng-model="social_id">
									</div>
								</div>

								<div class="row">
									<div class="col-md-4" style="font-size: 22px;">
										<span class="label label-success">Parent's Information</span>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="form-group col-md-6">
										<label for="exampleInputFatherName">Father's Khmer
											Name<span class="star"> * </span>
										</label> <input type="text" class="form-control" 
											placeholder="Father's Name" ng-model="father_name">
									</div>
									<div class="form-group col-md-6">
										<label for="exampleInputFatherLName">Father's Latin
											Name<span class="star"> * </span>
										</label> <input type="text" class="form-control" 
											placeholder="Father's Latin Name"
											ng-model="father_latin_name">
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-12">
										<label for="Address">Address<span class="star">
												* </span></label> <input type="text" class="form-control" 
											placeholder="Address" ng-model="father_address">
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-6">
										<label for="FOccupation">Occupation<span class="star">
												* </span></label> <input type="text" class="form-control" 
											placeholder="Father Occupation" ng-model="father_occupation">
									</div>
									<div class="form-group col-md-6">
										<label for="FPhone">Father's Phone<span class="star">
												* </span></label> <input type="text" class="form-control" 
											placeholder="Father's Phone " ng-model="father_phone">
									</div>

								</div>
								<div class="row">
									<div class="form-group col-md-6">
										<label for="MotherName">Mother's Khmer Name<span
											class="star"> * </span></label> <input type="text"
											class="form-control"  placeholder="Mother's Name"
											ng-model="mother_khmer_name">
									</div>
									<div class="form-group col-md-6">
										<label for="FatherLName">Mother's Latin Name<span
											class="star"> * </span></label> <input type="text"
											class="form-control" i
											placeholder="Mother's Latin Name"
											ng-model="mother_latin_name">
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-12">
										<label for="FAddress">Address<span class="star">
												* </span></label> <input type="text" class="form-control"
											placeholder="Address" ng-model="mother_address">
									</div>
								</div>
								<div class="row">
					              <div class="form-group col-md-6">
					                  <label for="FOccupation">Occupation<span class="star"> * </span></label>
					                  <input type="text" class="form-control" placeholder="Mother Occupation" ng-model="mother_occupation">
					              </div>
					              <div class="form-group col-md-6">
					                  <label for="FPhone">Mother's Phone<span class="star"> * </span></label>
					                  <input type="text" class="form-control" placeholder="Mother's Phone " ng-model="mother_phone">
					              </div>
					           </div>
					           <div class="row pull-right" style="margin: 7px;">
								<!-- Contextual button for informational alert messages -->
								<button type="submit" class="btn"
										style="font-width: 20px; color: white; background-color: green;" ng-click="submit()">
										Update</button>
							  </div>
							</fieldset>
						</div>
						</form>
						</section> 
					</div>
			    	<div class="modal-footer">
					    <button class="btn btn-danger"  style="float: right; " data-dismiss="modal"> Close </button>
					</div>
			    </div>
			</div>
		</div>

		<!-- Main content-->
		<section class="content">
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
			<div class="row">

				<div class="col-md-2 pull-left" style="font-size: 18px;">
					<i class="fa fa-users" aria-hidden="true"></i> Student List
				</div>

				<div class="col-md-10 pull-right">
					<nav class="page">
					<ul class="pagination pull-right toptable" style="margin-top: 2px;">
						<dir-pagination-controls
					       max-size="5"
					       direction-links="true"
					       boundary-links="true" >
				    	</dir-pagination-controls>
					</ul>
					</nav>
				</div>
			</div>
			<!-- end pagination(Row 1) -->

			<!-- Start Row 2 -->
			<div class="row">
				<div class="col-md-2 pull-left">
					<div class="input-group pull-left">
						<span class="input-group-addon" style="background-color: green;">
							<i class="fa fa-align-justify"
							style="color: white; font-size: 20px"></i>
						</span><select class="form-control select" ng-init="select | select='No'" ng-model="select">
							<option value="">No</option>
							<option >3</option>
							<option >5</option>
						</select>
					</div>
				</div>
				<!-- End Selection -->

				<div class="col-md-3 pull-left">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> Generation
						</span> <select class="form-control selectpicker" ng-init="searchGeneration | searchGeneration='Generation'" ng-model="searchGeneration" ng-mouseleave="getGeneration()">
							<option value="">Generation</option>
							<option ng-repeat="gen in generations | orderBy:'GENERATION_NAME'">{{gen.GENERATION_NAME}}</option>
						</select>
					</div>
				</div>
				
				<div class="col-md-2 pull-left">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> Course
						</span> <select class="form-control selectpicker" ng-model="searchCourse"  ng-init="searchCourse | searchCourse='Course'" ng-mouseleave="getCourse()">
							<option value="">Course</option>
							<option>Basic Course</option>
							<option>Advance Course</option>
						</select>
					</div>
				</div>
				
				<div class="col-md-2 pull-left">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> Class
						</span> <select class="form-control selectpicker" ng-model="searchClass" ng-init="searchClass | searchClass='Class'">
							<option value="">Class</option>
							<option ng-repeat="class in classes | orderBy:'CLASS_NAME'">{{class.CLASS_NAME}}</option>
						</select>
					</div>
				</div>
				
				<!--Search Location-->
				<div class="col-md-3 pull-left">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1"
							style="color: white; background-color: green;"><i
							class="fa fa-search" aria-hidden="true" style="font-size: 20px;"></i>
						</span> <input type="text" class="form-control"
							placeholder="Search Student..." ng-model="searchStudent"> <span
							class="input-group-btn">
							<button ng-json-export-excel data="students" report-fields="{'STUDENT_ID': 'Student ID', 'KHMER_FULL_NAME': 'Khmer Name','ENGLISH_FULL_NAME': 'English Name','GENDER':'Gender','DATE_OF_BIRTH': 'Date Of Birth','PLACE_OF_BIRTH': 'Place Of Birth', 'EMAIL': 'Email'}" class="btn btn-danger" id="btn-add" ng-click="test()">Export</button>
						</span>
					</div>
				</div>
			</div>
			<!-- End Search Location-->

			<!-- End Row 2 -->

			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr style="font-size: 16px;">
								<th ng-click="sort('id')">Student ID&#x2191;&#x2193;</th>
								<th ng-click="sort('khmerName')">Khmer Name&#x2191;&#x2193;</th>
								<th ng-click="sort('LatinName')">English Name&#x2191;&#x2193;</th>
								<th><center>Gender</center></th>
								<th>Birth Date</th>
								<th>Address</th>
								<th>Class</th>
								<th>Email</th>
							</tr>
						</thead>
						<tbody>
                        	<tr dir-paginate="student in students|orderBy:sortKey:reverse|filter:{'KHMER_FULL_NAME':searchStudent}:{'KHMER_FULL_NAME':searchStudent}|itemsPerPage:select">
								<td>{{student.STUDENT_ID}}</td> 
								<td>{{student.KHMER_FULL_NAME}}</td>
								<td>{{student.ENGLISH_FULL_NAME}}</td>
								<td><center>
									<span class="label label-danger" style="font-size: 13px;" ng-if="student.GENDER=='F' || student.GENDER=='f'">{{student.GENDER | uppercase}}</span>
									<span class="label label-info" style="font-size: 13px;" ng-if="student.GENDER=='M' || student.GENDER=='m'">{{student.GENDER | uppercase}}</span>
								</center></td>
								
								<td>{{student.DATE_OF_BIRTH}}</td>
								<td>{{student.ADDRESS}}</td>
								<td>{{student.CLASS_NAME}}</td>
								<td>{{student.EMAIL}}</td>
								<td>
									<button type="button" class="btn btn-danger"
											ng-if="student.STATUS==false" ng-click="active(student.STUDENT_ID)">
											<span class="glyphicon glyphicon-remove"></span>
									</button>
									<button type="button" class="btn btn-success"
											ng-if="student.STATUS==true" ng-click="inactive(student.STUDENT_ID)">
											<span class="glyphicon glyphicon-ok"></span>
									</button>
									<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" ng-click="update(student.STUDENT_ID)"><i class="glyphicon glyphicon-refresh"></i></button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
				<!-- End Table(Row 3) -->
			</fieldset>
			</div>
		</section>
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<jsp:include page="../include/sweetalert.jsp"/>
	<script src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<script src="${pageContext.request.contextPath }/resources/angularjs/FileSaver.js"></script>
	<script src="${pageContext.request.contextPath }/resources/angularjs/json-export-excel.js"></script>
	<script>
		var app = angular.module('appListStu', ['angularUtils.directives.dirPagination','ngJsonExportExcel']);
			app.controller('ctrlListStu', function($scope, $http){
				
				getGeneration();
				getClass();
				$scope.getCourse = function(){
					getData();
				}
				
				$scope.getGeneration = function(){
					getData();
				}
				
				$scope.inactive = function(id){
					swal({   title: "Are you sure want to be Inactive?",   text: "You want to student be inactive!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, Inactive!",   closeOnConfirm: false }, function(){   
							swal("Inactive!", "Record has been Inactive.", "success"); 
							updateStatus(id);
							
						});
				}
				
				$scope.active = function(id){
					swal({   title: "Are you sure want to be active?",   text: "You want to student be active!",   type: "warning",   showCancelButton: true,   confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, Active!",   closeOnConfirm: false }, function(){   
							swal("Active!", "Record has been active.", "success"); 
							updateStatus(id);
							
						});
				}
				
				function updateStatus(id){
					$http({
						url:'http://localhost:8080/api/student/updateStatus/'+id,
						method:'PUT'
					}).then(function(response){
						getData();
					}, function(response){
						alert("error");
					});
				}
				
				function getData(){
						$http({
								url:'http://localhost:8080/api/student/select_student-by-generation-and-course',
								data: {
									"COURSE_NAME": $scope.searchCourse,
									"GENERATION_NAME": $scope.searchGeneration
								},
								method:'POST'
							}).then(function(response){
								$scope.students = response.data.DATA;
							}, function(response){
								alert("error");
							});
				};
				
				function getClass() {
					$http({
						url : 'http://localhost:8080/api/class/find-all-class',
						method : 'GET'
					}).then(function(response) {
						$scope.classes = response.data.DATA;
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
				
				$scope.update = function(id){
					
					$http({
						url:'http://localhost:8080/api/student/select-student-by-id/'+id,
						method:'POST'
					}).then(function(response){
						$scope.student = response.data.DATA;
						$scope.stu_id = $scope.student.STUDENT_ID;
						$scope.khmer_name = $scope.student.KHMER_FULL_NAME;
						$scope.latin_name = $scope.student.ENGLIST_FULL_NAME;
						var sex = $scope.student.GENDER;
						if(sex == 'F' || sex == 'f')
							$('#f').attr('checked',true);
						else
							$('#m').attr('checked',true);
						$scope.dob = $scope.student.DATE_OF_BIRTH;
						$scope.pob = $scope.student.PLACE_OF_BIRTH;
						$scope.address = $scope.student.PERMANENT_ADDRESS;
						$scope.email = $scope.student.EMAIL;
						$('#it_year').val($scope.student.EDUCATION_LEVEL);
						$scope.graduated = $scope.student.GRADUATE;
						$scope.university = $scope.student.UNIVERSITY;
						$scope.english = $scope.student.ENGLISH_LEVEL;
						$scope.korean = $scope.student.KOREAN_LEVEL;
						$scope.status = $scope.student.STUDENT_STATUS;
						$scope.phone = $scope.student.PHONE;
						$scope.nationality = "Khmer";
						$scope.social_id = $scope.student.KHMER_ID_NUMBER;
						$scope.father_name = $scope.student.FATHER_KHMER_NAME;
						$scope.father_latin_name = $scope.student.FATHER_ENGLISH_NAME;
						$scope.father_address = $scope.student.FATHER_ADDRESS;
						$scope.father_occupation = $scope.student.FATHER_OCCUPATION;
						$scope.father_phone = $scope.student.FATHER_PHONE;
						$scope.mother_khmer_name = $scope.student.MOTHER_KHMER_NAME;
						$scope.mother_latin_name = $scope.student.MOTHER_ENGLISH_NAME;
						$scope.mother_address = $scope.student.MOTHER_ADDRESS;
						$scope.mother_occupation = $scope.student.MOTHER_OCCUPATION;
						$scope.mother_phone = $scope.student.MOTHER_PHONE;
					}, function(response){
						alert("error");
					});
				}
				
				$scope.submit = function(){
					$scope.photo = $('#photo').val();
					$scope.english = $('#english').val();
					$scope.korean = $('#korean').val();
					$scope.status = $('#status').val();
					$scope.gender = $('input[name=gender]:checked').val();
					$scope.university = $('#university').val();
					$scope.it_year = $('#it_year').val();
					var id = $scope.stu_id;
					
					$http({
						url:'http://localhost:8080/api/student/updateById',
						data:{
							  "DATE_OF_BIRTH": $scope.dob,
							  "EDUCATION_LEVEL": $scope.it_year,
							  "EMAIL": $scope.email,
							  "ENGLISH_LEVEL": $scope.english,
							  "ENGLIST_FULL_NAME": $scope.latin_name,
							  "FATHER_ADDRESS": $scope.faddress,
							  "FATHER_ENGLISH_NAME": $scope.father_name,
							  "FATHER_KHMER_NAME": $scope.father_latin_name,
							  "FATHER_OCCUPATION": $scope.foccupation,
							  "FATHER_PHONE": $scope.fphone,
							  "GENDER": $scope.gender,
							  "GRADUATE": $scope.graduated,
							  "KHMER_FULL_NAME": $scope.khmer_name,
							  "KHMER_ID_NUMBER": $scope.social_id,
							  "KOREAN_LEVEL": $scope.korean,
							  "MOTHER_ADDRESS": $scope.maddress,
							  "MOTHER_ENGLISH_NAME": $scope.mlname,
							  "MOTHER_KHMER_NAME": $scope.mkname,
							  "MOTHER_OCCUPATION": $scope.moccupation,
							  "MOTHER_PHONE": $scope.mphone,
							  "PERMANENT_ADDRESS": $scope.address,
							  "PHONE": $scope.phone,
							  "PHOTO": $scope.photo,
							  "PLACE_OF_BIRTH": $scope.pob,
							  "STATUS": true,
							  "STUDENT_ID": $scope.stu_id,
							  "STUDENT_STATUS": $scope.status,
							  "UNIVERSITY": $scope.university
						},
						method:'PUT'
					}).then(function(response){
						clearInputControll();	
						getData();
					}, function(response){
						alert("error");
					});
				}
				
				$scope.sort = function(keyname){
			        $scope.sortKey = keyname;   //set the sortKey to the param passed
			        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
			    }
				
				function clearInputControll(){
					$('input').val("");
					$("select").prop("selectedIndex",0);
				}
			});
	</script>
	<script type="text/javascript">
		//click on image
		$('#img').click(function() {
			// call photo for browse file
			$("#photo").click();
		});

		$("#photo").change(function(e) {
			readURL(this);
		});

		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#img').attr('src', e.target.result).fadeIn('slow');
				};
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
</body>
</html>