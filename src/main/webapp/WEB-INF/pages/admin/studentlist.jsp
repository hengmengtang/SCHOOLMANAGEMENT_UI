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
											ng-model="khmerFName">
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-12">
										<label for="exampleInputFLName">Latin Full Name <span
											class="star"> * </span></label> <span
											class="glyphicons glyphicons-user"></span> <input type="text"
											class="form-control " 
											placeholder="Enter Your First Latin Name"
											ng-model="latin_fname">
									</div>
								</div>
								<!--Radio-->
								<div class="row">
									<div class="form-group col-md-6">
										<label>Gender <span class="star"> * </span></label> <br>
										<label class="radio-inline"> <input type="radio"
											id="gender" name="gender" value="M"> Male
										</label> <label class="radio-inline"> <input type="radio"
											id="gender" name="gender" value="F"> Female
										</label>
									</div>
									<div class="form-group col-md-6 required">
										<label class="control-label" for="dob">Birth Date<span
											class="star"> * </span></label> <input type="text" class="form-control"
											name="dob" id="dob" placeholder="Birth date">
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
									<div class="form-group col-md-4">
										<label for="exampleInputEmail2">Email <span
											class="star"> * </span></label> <input type="email"
											class="form-control" 
											placeholder="Your_email@gmail.com" ng-model="email">
									</div>
									<div class="form-group col-md-4">
										<label for="exampleInputPassWord">Password <span
											class="star"> * </span></label> <input type="password"
											class="form-control" 
											placeholder="Password" ng-model="password">
									</div>
			
								</div>

								<div class="row">
									<div class="form-group col-md-4">
										<label for="ITYear">IT Year<span class="star">
												* </span></label> <select class="form-control" id="it_year">
											<option>Study lavel</option>
											<option value="1">Year 1</option>
											<option value="2">Year 2</option>
											<option value="3">Year 3</option>
											<option value="4">Year 4</option>
											<option value="other">Other</option>
										</select>
									</div>
									<div class="form-group col-md-4">
										<label for="Graduated">Graduated<span class="star">
												* </span></label> <input type="text" class="form-control" 
											ng-model="graduated" placeholder="Graduation">
									</div>
									<div class="form-group col-md-4">
										<label for="exampleInputUniversity">University<span
											class="star"> * </span></label> <select class="form-control"
											id="university">
											<option>Select university</option>
											<option value="RUPP">RUPP</option>
											<option value="RULE">RULE</option>
											<option value="SETEC">SETEC</option>
											<option value="BBU">BBU</option>
											<option value="ITC">ITC</option>
											<option value="Norton">Norton</option>
											<option value="NTTI">NTTI</option>
											<option value="NPIC">NPIC</option>
											<option value="Asia Europe">Asia Europe</option>
											<option value="other">Other</option>
										</select>
									</div>
								</div>
								<div class="row">
									<div class="form-group col-md-4">
										<label for="English">English Level<span class="star">
												* </span></label> <select class="form-control" id="english">
											<option>English level</option>
											<option value="Primary">Primary</option>
											<option value="Intermediate">Intermediate</option>
											<option value="Advanced">Advanced</option>
											<option value="other">Other</option>
										</select>
									</div>
									<div class="form-group col-md-4">
										<label for="Korean">Korean Level<span class="star">
												* </span></label> <select class="form-control" id="korean">
											<option>Korean level</option>
											<option value="Primary">Primary</option>
											<option value="Intermediate">Intermediate</option>
											<option value="Advanced">Advanced</option>
											<option value="other">Other</option>
										</select>
									</div>
									<div class="form-group col-md-3">
										<label for="Status">Status<span class="star"> *
										</span></label> <select class="form-control" id="status">
											<option>Status</option>
											<option value="Single">Single</option>
											<option value="Married">Married</option>
										</select>
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
										style="font-width: 20px; color: white; background-color: green;" ng-click="update()">
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
						</span><select class="form-control select" ng-init="select | select='5'" ng-model="select">
							<option value="">10</option>
							<option>15</option>
							<option>20</option>
						</select>
					</div>
				</div>
				<!-- End Selection -->

				<div class="col-md-3 pull-left">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> Generation
						</span> <select class="form-control selectpicker" ng-model="searchGeneration">
							<option value="allgeneration">All Generation</option>
							<option value="generation1">Generation 1</option>
							<option value="generation2">Generation 2</option>
							<option value="generation3">Generation 3</option>
							<option value="generation4">Generation 4</option>
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
							<button class="btn btn-danger" id="btn-add" ng-click="test()">Export</button>
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
								<th>Email</th>
							</tr>
						</thead>
						<tbody>
                        	<tr dir-paginate="student in students|orderBy:sortKey:reverse|filter:{'KHMER_FULL_NAME':searchStudent}|itemsPerPage:select">
								<td>{{student.STUDENT_ID}}</td> 
								<td>{{student.KHMER_FULL_NAME}}</td>
								<td>{{student.ENGLIST_FULL_NAME}}</td>
								
								<td><center>
									<span class="label label-danger" style="font-size: 13px;" ng-if="student.GENDER=='f'">{{student.GENDER | uppercase}}</span>
									<span class="label label-info" style="font-size: 13px;" ng-if="student.GENDER=='m'">{{student.GENDER | uppercase}}</span>
								</center></td>
								
								<td>{{student.DATE_OF_BIRTH}}</td>
								<td>{{student.PLACE_OF_BIRTH}}</td>
								<td>{{student.EMAIL}}</td>
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
				<!-- End Table(Row 3) -->
			</fieldset>
			</div>
		</section>
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<script src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	
	<script>
		var app = angular.module('appListStu', ['angularUtils.directives.dirPagination']);
			app.controller('ctrlListStu', function($scope, $http){
				
				getData();
				
				function getData(){
						$http({
								url:'http://localhost:8080/student/find-all',
								method:'GET'
							}).then(function(response){
								$scope.students = response.data.DATA;
									
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