<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<script src="${pageContext.request.contextPath }/resources/angularjs/angular.min.js"></script>
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
        <li class="active">Student Register</li>
      </ol>
    </section>
	<section class="content"> <!--/.content-->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2" ng-app="app" ng-controller="ctrl">
				<fieldset>

					<div class="row" style="margin: 3px;">

						<div class="col-md-8 pull-left">
							<i class="fa fa-pencil-square-o" style="font-size: 20px;"></i> <span
								style="font-size: 16px;">Add Student's Information</span>
						</div>
						<!-- Add Photo -->
						<div class="form-group col-md-4 pull-right">
							<div class="form-group ">
								<center>
									<label for="exampleInputFile "> Select Profile Photo </label>
								
								<img id="img"
									src="${pageContext.request.contextPath }/resources/images/user.ico"
									alt="" class="img-circle img-responsive "
									style="width: 180px; height: 180px; border: 1px solid black;">
								<div class="form-group">
									<label for="photo"> </label> <input type="file" ng-model="photo"
									id="photo" accept="images/*" >

								</div>
								</center>

							</div>
							
						</div>
					</div>

					<div class="row">
            <div class="col-md-4" style="font-size:22px;">
              <span class="label label-success">Student's Information</span>
            </div>
          </div>
          <br>
          <div class="row">
              <div class="form-group col-md-3">
                  <label for="exampleInputStuID">Student ID: <span class="star"> * </span></label>
                  <span class="glyphicons glyphicons-user"></span>
                  <input type="text" class="form-control " id="stu_id" placeholder="Enter ID" ng-model="stu_id">
              </div>
          </div>
          
            <div class="row">
              <div class="form-group col-md-6">
                  <label for="exampleInputFName">Khmer First Name <span class="star"> * </span></label>
                  <span class="glyphicons glyphicons-user"></span>
                  <input type="text" class="form-control " placeholder="Enter khmer first name" ng-model="khmerFName">
              </div>
              <div class="form-group col-md-6">
                  <label for="exampleInputLName">Khmer Last Name <span class="star"> * </span></label>
                  <input type="text" class="form-control" placeholder="Enter khmer last name" ng-model="khmerLName">
              </div>
            </div>
			<div class="row">
					<div class="form-group col-md-6">
						<label for="exampleInputFLName">First Latin Name <span
								class="star"> * </span></label> <span class="glyphicons glyphicons-user"></span>
						<input type="text" class="form-control " id="exampleInputFLName"
								placeholder="Enter Your First Latin Name" ng-model="latin_fname">
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputLLName">Last Latin Name <span
								class="star"> * </span></label> <input type="text" class="form-control"
								id="exampleInputLLName" placeholder="Enter Your Last Latin Name"
								ng-model="latin_lname">
						</div>
					</div>
             <!--Radio-->
            <div class="row">
			   <div class="form-group col-md-6">
				 <label>Gender <span class="star"> * </span></label> <br>
                  <label class="radio-inline">
                    <input type="radio" id="gender" name="gender" value="M"> Male
                  </label>
                  <label class="radio-inline">
                    <input type="radio" id="gender" name="gender" value="F"> Female
                  </label>
              </div>
              <div class="form-group col-md-6 required" >
               <label class="control-label" for="dob">Birth Date<span class="star"> * </span></label>
			   <input type="text" class="form-control"
				id="dob" placeholder="Birth date" >
              </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                  <label for="exampleInputPOB">Place Of Birth<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="exampleInputPOB" placeholder="Place Of Birth" ng-model="pob">
                </div>
            </div>
             <div class="row">
                <div class="form-group col-md-12">
                  <label for="exampleInputAddress">Permanent Address<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="exampleInputAddress" placeholder="Address" ng-model="address">
                </div>
            </div>

            <div class="row">
              <div class="form-group col-md-4">
                  <label for="exampleInputEmail2">Email <span class="star"> * </span></label>
                  <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Your_email@gmail.com" ng-model="email">
              </div>
              
            </div>
            
             <div class="row">
                <div class="form-group col-md-4">
                  <label for="ITYear">IT Year<span class="star"> * </span></label>
                  <select class="form-control" id="it_year">
					  <option>Study lavel</option>
					  <option value="1">Year 1</option>
					  <option value="2">Year 2</option>
					  <option value="3">Year 3</option>
					  <option value="4">Year 4</option>
					  <option value="other">Other</option>
				 </select>
                </div>
                <div class="form-group col-md-4">
                  <label for="Graduated">Graduated<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="Graduated" ng-model="graduated" placeholder="Graduation">
                </div>
                <div class="form-group col-md-4">
                  <label for="exampleInputUniversity">University<span class="star"> * </span></label>
                  <select class="form-control" id="university">
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
                  <label for="English">English Level<span class="star"> * </span></label>
                  <select class="form-control" id="english">
                  	 <option>English level</option>
					 <option value="Primary">Primary</option>
					 <option value="Intermediate">Intermediate</option>
					 <option value="Advanced">Advanced</option>
					 <option value="other">Other</option>
				 </select>
                </div>
                <div class="form-group col-md-4">
                  <label for="Korean">Korean Level<span class="star"> * </span></label>
                  <select class="form-control" id="korean">
                  	 <option>Korean level</option>
					 <option value="Primary">Primary</option>
					 <option value="Intermediate">Intermediate</option>
					 <option value="Advanced">Advanced</option>
					 <option value="other">Other</option>
				 </select>
                </div>
                <div class="form-group col-md-3">
                  <label for="Status">Status<span class="star"> * </span></label>                
                 <select class="form-control" id="status">
                  	 <option>Status</option>
					 <option value="Single">Single</option>
					 <option value="Married">Married</option>
				 </select>
               </div>
            </div>
            <div class="row">
                <div class="form-group col-md-4">
                  <label for="Phone">Phone <span class="star"> * </span></label>
                  <input type="text" class="form-control" id="phone" placeholder="Phone" ng-model="phone">
                </div>
                <div class="form-group col-md-4">
                  <label for="exampleInputNationality">Nationality<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="nationality" placeholder="Nationality" ng-model="nationality">
                </div>
                  <div class="form-group col-md-4">
                  <label for="exampleInputSocialID">Social ID<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="socialID" placeholder="Social id" ng-model="social_id">
                </div>
            </div>
        
            <div class="row">
              <div class="col-md-4" style="font-size:22px;">
                <span class="label label-success">Parent's Information</span>
              </div>
            </div> <br>
            <div class="row">
              <div class="form-group col-md-6">
                  <label for="exampleInputFatherName">Father's Khmer Name<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="fatherName" placeholder="Father's Name" ng-model="father_name">
              </div>
              <div class="form-group col-md-6">
                  <label for="exampleInputFatherLName">Father's Latin Name<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="fatherLName" placeholder="Father's Latin Name" ng-model="father_latin_name">
              </div>
            </div>
			<div class="row">
				<div class="form-group col-md-12">
					<label for="Address">Address<span class="star"> * </span></label> <input
							type="text" class="form-control" id="address"
							placeholder="Address" ng-model="father_address">
				</div>
			</div>
            <div class="row">
              <div class="form-group col-md-6">
                  <label for="FOccupation">Occupation<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="fOccupation" placeholder="Father Occupation" ng-model="father_occupation">
              </div>
              <div class="form-group col-md-6">
                  <label for="FPhone">Father's Phone<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="fPhone" placeholder="Father's Phone " ng-model="father_phone">
              </div>
             
            </div>
             <div class="row">
              <div class="form-group col-md-6">
                  <label for="MotherName">Mother's Khmer Name<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="MName" placeholder="Mother's Name" ng-model="mother_name">
              </div>
              <div class="form-group col-md-6">
                  <label for="FatherLName">Mother's Latin Name<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="FatherLName" placeholder="Mother's Latin Name" ng-model="mother_latin_name">
              </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                  <label for="FAddress">Address<span class="star"> * </span></label>
                  <input type="text" class="form-control" id="FAddress" placeholder="Address" ng-model="mother_address">
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
						style="font-width: 20px; color: white; background-color: green;" ng-click="addStu()">
						Add</button>
			</div>
		</fieldset>
		</div>
		</form>
		</section>
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
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
	<script>
		var app = angular.module('app', []);
		app.controller('ctrl', function($scope, $http){
			getID();
			$scope.addStu = function(){
				clearInputControll();
				/* $scope.photo= $("#photo").val();
				$scope.gender=$('input[name="gender"]:checked').val();
				$scope.dob=$("#dob").val();
				$scope.it_year=$("#it_year").val();
				$scope.university=$("#university").val();
				$scope.english=$("#english").val();
				$scope.korean=$("#korean").val();
				$scope.status=$("#status").val(); */
				/* alert($scope.photo +" "+ +" "+ +" "++" "++" "++" "++" "+" "++" "++" "++" "+$scope.password+" "+
						+" "+$scope.it_year+" "+$scope.university+" "+$scope.korean+" "+$scope.english+" "+$scope.status+" "++" "+$scope.nationality+" "++" "+$scope.father_name+" "+
						+" "++" "++" "++" "++" "++" "++" "+
						); */
				
				/* $http({
					url: 'http://localhost:2222/student/save',
					data:{
					  "DATE_OF_BIRTH": $scope.dob,
					  "EDUCATION_LEVEL": $scope.it_year,
					  "EMAIL": $scope.email,
					  "ENGLIST_FULL_NAME": $scope.latin_fname+" "+$scope.latin_lname,
					  "FATHER_ADDRESS": $scope.father_address,
					  "FATHER_ENGLISH_NAME": $scope.father_latin_name,
					  "FATHER_KHMER_NAME": $scope.father_name,
					  "FATHER_OCCUPATION": $scope.father_occupation,
					  "FATHER_PHONE": $scope.father_phone,
					  "GENDER": $scope.gender,
					  "GRADUATE": $scope.graduated,
					  "KHMER_FULL_NAME": $scope.fname+" "+$scope.lname,
					  "KHMER_ID_NUMBER": $scope.social_id,
					  "MOTHER_ADDRESS": $scope.mother_address,
					  "MOTHER_ENGLISH_NAME": $scope.mother_latin_name,
					  "MOTHER_KHMER_NAME": $scope.mother_name,
					  "MOTHER_OCCUPATION": "string",
					  "MOTHER_PHONE": "string",
					  "PERMANENT_ADDRESS": $scope.address,
					  "PHONE": $scope.phone,
					  "PHOTO": $scope.photo,
					  "PLACE_OF_BIRTH": $scope.pob,
					  "STATUS": true,
					  "STUDENT_ID": $scope.stu_id,
					  "UNIVERSITY": $scope.university
					},
					method: 'POST'
					
				}) */
			};
			function clearInputControll(){
				$('input').val("");
				$("select").prop("selectedIndex",0);
			}
			
			function getID(){
					$http({
							url:'http://localhost:8080/student/student-the-last-id',
							method:'GET'
						}).then(function(response){
							alert(response);
								
						}, function(response){
							alert("error");
						});
			};
		});
	</script>
</body>
</html> --%>