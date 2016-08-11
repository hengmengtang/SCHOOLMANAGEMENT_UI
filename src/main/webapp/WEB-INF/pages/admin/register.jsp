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
<jsp:include page="../include/headRegister.jsp" />
<jsp:include page="../include/headDashboard.jsp" />
</head>
<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" >

	<!-- Main content-->
	 <section class="content-header" >
      <h1 >
        Student <small>Management</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">My Profile</li>
      </ol>
    </section>
	<section class="content" ng-app="app" ng-controller="ctrl"> <!--/.content-->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<form >
				<fieldset>
					<br>
					<div class="row">
						<div class="col-sm-12 col-md-3 ">
							<img
								src="${pageContext.request.contextPath }/resources/images/logo.png"
								class="logodash" width="240px" height="190px">
						</div>
						<div class="col-sm-7 col-md-7 col-xs-12"
							style="color: black; text-align: center; top: 25px; font-size: 15px;">
							<b>#12, St 323, Sangkat Boeung Kak II, Khan Toul Kork, Phnom
								Penh<br /> Tel:(855)23 99 13 14, Fax(855)23 99 14 15<br />
								Email: info.kshrd@gmail.com, phirum.gm@gmail.com<br /> Website:
								www.kshrd.com.kh, Facebook:facebook.com/ksignhrd
							</b>
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
							<span class="label label-success">Personal Information</span>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="form-group col-md-3">
							<label for="exampleInputStuID">Student ID: <span
								class="star"> * </span></label> <span class="glyphicons glyphicons-user"></span>
							<label class="form-control " id="stu_id"
								placeholder="Enter ID" ng-bind="stu_id" readonly="readonly"></label>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleInputFName">First Name <span
								class="star"> * </span></label> <span class="glyphicons glyphicons-user"></span>
							<input type="text" class="form-control " id="fname"
								placeholder="Enter Your Khmer First Name" ng-model="fname">
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputLName">Last Name <span
								class="star"> * </span></label> <input type="text" class="form-control"
								id="lname" placeholder="Enter Your Khmer Last Name"
								ng-model="lname">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleInputFLName">First Latin Name <span
								class="star"> * </span></label> <span class="glyphicons glyphicons-user"></span>
							<input type="text" class="form-control " id="latin_fname"
								placeholder="Enter Your First Latin Name" ng-model="latin_fname">
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputLLName">Last Latin Name <span
								class="star"> * </span></label> <input type="text" class="form-control"
								id="latin_lname" placeholder="Enter Your Last Latin Name"
								ng-model="latin_lname">
						</div>
					</div>
					<!--Radio-->
					<div class="row">
						<div class="form-group col-md-3">
							<label>Gender <span class="star"> * </span></label> <br> <label
								class="radio-inline"> <input type="radio"
								class="flat-red" name="gender" id="gender" value="M">
								Male
							</label> <label class="radio-inline"> <input type="radio"
								class="flat-red" name="gender" id="gender" value="F">
								Female
							</label>
						</div>
						<div class="form-group col-md-3 required">
							<label class="control-label" for="dob">Birth Date<span
								class="star"> * </span></label> <input type="text" class="form-control"
								name="dob" id="dob" placeholder="Birth date">
						</div>
						<div class="form-group col-md-3">
							<label for="exampleInputNationality">Nationality</label> <input
								type="text" class="form-control" id="nationality"
								placeholder="Nationality" ng-model="nationality">
						</div>
						<div class="form-group col-md-3">
							<label for="exampleInputSocialID">Social ID</label> <input
								type="text" class="form-control" id="social_id"
								placeholder="Social id" ng-model="social_id">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="exampleInputPOB">Place Of Birth</label> <input
								type="text" class="form-control" id="pob"
								placeholder="Address" ng-model="pob">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="exampleInputAddress">Permanent Address</label> <input
								type="text" class="form-control" id="address"
								placeholder="Address" ng-model="address">
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-4">
							<label for="exampleInputEmail2">Email <span class="star">
									* </span></label> <input type="email" class="form-control"
								id="email" placeholder="Your_email@gmail.com"
								ng-model="email">
						</div>
						<div class="form-group col-md-4">
							<label for="Phone">Phone <span class="star"> * </span></label> <input
								type="number" class="form-control" id="phone" placeholder="Phone"
								ng-model="phone" data-inputmask='"mask": "(999) 999-9999"' data-mask>
						</div>
						<div class="form-group col-md-4">
							<label for="exampleInputPosition">Position <span
								class="star"> * </span></label> <input type="input" class="form-control"
								id="position" value="student"
								readonly="readonly">

						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-4">
							<label for="ITYear">IT Year<span class="star"> * </span></label>
							<select class="form-control" id="it_year" name="it_year">
								<option>Select - Option</option>
								<option>Year 1</option>
								<option>Year 2</option>
								<option>Year 3</option>
								<option>Year 4</option>
								<option>Year 5</option>
							</select>
						</div>
						<div class="form-group col-md-4">
							<label for="Graduated">Graduated</label> <input type="text"
								class="form-control" id="graduated" placeholder="Graduation">
						</div>
						<div class="form-group col-md-4">
							<label for="exampleInputUniversity">University</label> <select
								class="form-control" id="university">
								<option>Select - Option</option>
								<option>RUPP</option>
								<option>RULE</option>
								<option>SETEC</option>
								<option>BBU</option>
								<option>ITC</option>
								<option>Norton</option>
								<option>NTTI</option>
								<option>NPIC</option>
								<option>Asia Europe</option>
								<option>Other</option>

							</select>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-4">
							<label for="English">English Level</label> <select
								class="form-control" id="english" name="english">
								<option>Select - Option</option>
								<option>Primary</option>
								<option>Intermediate</option>
								<option>Advanced</option>
							</select>
						</div>
						<div class="form-group col-md-4">
							<label for="Korean">Korean Level</label> <select
								class="form-control" id="Korean" name="Korean">
								<option>Select - Option</option>
								<option>Primary</option>
								<option>Intermediate</option>
								<option>Advanced</option>
							</select>
						</div>
						<div class="form-group col-md-4">
							<label for="Status">Status</label> <select class="form-control"
								id="status" name="status">
								<option>Select - Option</option>
								<option>Single</option>
								<option>Married</option>
							</select>
						</div>
					</div>
					<br>
					<!-- Parent Infomation -->
					<div class="row">
						<div class="col-md-4" style="font-size: 22px;">
							<span class="label label-success">Parent's Information</span>
						</div>
					</div>
					<br>
					<!-- Father Info -->
					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleInputFatherName">Father's Khmer Name</label> <input
								type="text" class="form-control" id="father_name"
								placeholder="Father's Name" ng-model="father_name">
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputFatherLName">Father's Latin Name</label>
							<input type="text" class="form-control"
								id="father_latin_name" placeholder="Father's Latin Name"
								ng-model="father_latin_name">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="Address">Address</label> <input type="text"
								class="form-control" id="address" placeholder="Address"
								ng-model="faddress">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="FOccupation">Occupation</label> <input type="text"
								class="form-control" id="foccupation"
								placeholder="Father Occupation" ng-model="foccupation">
						</div>
						<div class="form-group col-md-6">
							<label for="FPhone">Father's Phone</label> <input type="number"
								class="form-control" id="fphone" placeholder="Father's Phone "
								ng-model="fphone">
						</div>

					</div>

					<!-- Mother Info -->
					<div class="row">
						<div class="form-group col-md-6">
							<label for="MotherName">Mother's Khmer Name</label> <input
								type="text" class="form-control" id="kmname"
								placeholder="Mother's Name" ng-model="kmname">
						</div>
						<div class="form-group col-md-6">
							<label for="FatherLName">Mother's Latin Name</label> <input
								type="text" class="form-control" id="mlname"
								placeholder="Mother's Latin Name" ng-model="mlname">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="FAddress">Address</label> <input type="text"
								class="form-control" id="maddress" placeholder="Address"
								ng-model="maddress">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="FOccupation">Occupation</label> <input type="text"
								class="form-control" id="moccupation"
								placeholder="Mother Occupation" ng-model="moccupation">
						</div>
						<div class="form-group col-md-6">
							<label for="FPhone">Mother's Phone</label> <input type="number"
								class="form-control" id="mphone" placeholder="Mother's Phone "
								ng-model="mphone">
						</div>

					</div>

					<div class="row pull-right" style="margin: 7px;">
						<!-- Contextual button for informational alert messages -->
						<button type="button" class="btn"
							style="font-width: 20px; color: white; background-color: green;" ng-click="submit()">
							Add</button>
					</div>
				</fieldset>
				</div>
		</form>
			<!-- <div class="input-group col-xs-5">
			  
			  <input type="text" class="form-control" ng-bind="value" data-trigger="{{value}}" data-placement="right" data-type="info" data-container="body" placeholder="Focus to toggle tooltip"  bs-tooltip="tooltip">
			</div> -->
			
		</section>
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<script src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/dirpagination/dirPagination.js"></script>
	<%-- <script src="${pageContext.request.contextPath }/resources/angularstrap/angular-strap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/angularstrap/angular-strap.tpl.min.js"></script> --%>
	<script>
		var app = angular.module('app', ['angularUtils.directives.dirPagination'/* , 'mgcrea.ngStrap.modal', 'mgcrea.ngStrap.aside', 'mgcrea.ngStrap.tooltip' */]);
			app.controller('ctrl', function($scope, $http){
				
				getID();
				
				function getID(){
						
						$http({
								url:'http://localhost:8080/student/student-the-last-id',
								method:'GET'
							}).then(function(response){
								$scope.id = response.data.DATA.maxStuId;
								$scope.stu_id = $scope.id;	
							}, function(response){
								alert("error");
							});
				};
				
				$scope.submit = function(){
					$scope.photo = $('#photo').val();
					$scope.english = $('#english').val();
					$scope.korean = $('#korean').val();
					$scope.status = $('#status').val();
					$scope.dob = $('#dob').val();
					$http({
						url:'http://localhost:8080/student/save',
						data:{
							  "DATE_OF_BIRTH": $scope.dob,
							  "EDUCATION_LEVEL": $scope.it_year,
							  "EMAIL": $scope.email,
							  "ENGLISH_LEVEL": $scope.english,
							  "ENGLIST_FULL_NAME": $scope.fname+" "+$scope.lname,
							  "FATHER_ADDRESS": $scope.faddress,
							  "FATHER_ENGLISH_NAME": $scope.father_name,
							  "FATHER_KHMER_NAME": $scope.father_latin_name,
							  "FATHER_OCCUPATION": foccupation,
							  "FATHER_PHONE": $scope.fphone,
							  "GENDER": $scope.gender,
							  "GRADUATE": $scope.graduation,
							  "KHMER_FULL_NAME": $scope.fname+" "+ $scope.lname,
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
						}
						method:'POST'
					}).then(function(response){
						clearInputControll();	
						/* getID(); */
					}, function(response){
						alert("error");
					});
					
				}
				
				function clearInputControll(){
					$('input').val("");
					$("select").prop("selectedIndex",0);
				}
				
				$scope.sort = function(keyname){
			        $scope.sortKey = keyname;   //set the sortKey to the param passed
			        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
			    }
				
				/* $scope.tooltip = {
						  "title": "only character!",
				}; */
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
	<script>
		$(function(){	
			/* initialize date picker */
		$("#dob").datepicker();
		});
	</script>
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
</body>
</html>




