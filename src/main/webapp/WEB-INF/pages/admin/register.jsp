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
<body>
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Main content-->
		<section class="content-header">
		<h1>
			Student <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Student Register</li>
		</ol>
		</section>

		<section class="content"> <!--/.content-->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<form method="post" action="#">
				<fieldset>

					<div class="row" style="margin: 3px;">

						<div class="col-md-10 pull-left">
							<i class="fa fa-pencil-square-o" style="font-size: 20px;"></i> <span
								style="font-size: 16px;">Add Student's Information</span>
						</div>

						<div class="form-group col-md-2 pull-right">
							<label for="exampleInputFile"> <img
								src="${pageContext.request.contextPath }/resources/images/user.ico"
								alt="" class="img-circle img-responsive "
								style="width: 180px; height: 180px; border: 1px solid black;">
							</label>
						</div>
					</div>

					<div class="row">
						<div class="col-md-4" style="font-size: 22px;">
							<span class="label label-success">Student's Information</span>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleInputStuID">Student ID: <span
								class="star"> * </span></label> <span class="glyphicons glyphicons-user"></span>
							<input type="text" class="form-control " id="exampleInputStuID"
								placeholder="Enter ID" name="stu_id">
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleInputFName">First Name <span
								class="star"> * </span></label> <span class="glyphicons glyphicons-user"></span>
							<input type="text" class="form-control " id="exampleInputFName"
								placeholder="Enter Your First Name" name="fname">
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputLName">Last Name <span
								class="star"> * </span></label> <input type="text" class="form-control"
								id="exampleInputLName" placeholder="Enter Your Last Name"
								name="lname">
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleInputFLName">First Latin Name <span
								class="star"> * </span></label> <span class="glyphicons glyphicons-user"></span>
							<input type="text" class="form-control " id="exampleInputFLName"
								placeholder="Enter Your First Latin Name" name="latin_fname">
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputLLName">Last Latin Name <span
								class="star"> * </span></label> <input type="text" class="form-control"
								id="exampleInputLLName" placeholder="Enter Your Last Latin Name"
								name="latin_lname">
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-6">
							<label>Gender <span class="star"> * </span></label> <br>

							<!--Radio-->
							<label class="radio-inline"> <input type="radio"
								name="gender" id="inlineRadio1" value="option1"> Male
							</label> <label class="radio-inline"> <input type="radio"
								name="gender" id="inlineRadio2" value="option2"> Female
							</label>
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputBOF">Birth Date <span
								class="star"> * </span></label> <input type="text" class="form-control"
								id="exampleInputBOF" placeholder="Birth Date" name="dob">
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label for="exampleInputAddress">Address</label> <input
								type="text" class="form-control" id="exampleInputAddress"
								placeholder="Address" name="address">
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-4">
							<label for="exampleInputEmail2">Email <span class="star">
									* </span></label> <input type="email" class="form-control"
								id="exampleInputEmail2" placeholder="your_email@gmail.com"
								name="email">
						</div>
						<div class="form-group col-md-4">
							<label for="exampleInputPassWord">Password <span
								class="star"> * </span></label> <input type="password"
								class="form-control" id="exampleInputPassword"
								placeholder="Password" name="password">
						</div>
						<div class="form-group col-md-4">
							<label for="exampleInputPosition">Position <span
								class="star"> * </span></label> <select class="form-control"
								id="exampleInputPosition" name="position">
								<option>Admin</option>
								<option>Instructor</option>
								<option>Student</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-2">
							<label for="exampleInputUniversity">University</label> <select
								class="form-control" id="exampleInputPosition" name="university">
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
						<div class="form-group col-md-2">
							<label for="Status">Status</label> <select class="form-control"
								id="Status" name="status">
								<option>Single</option>
								<option>Married</option>
							</select>
						</div>
						<div class="form-group col-md-3">
							<label for="exampleInputAddress">Phone <span class="star">
									* </span></label> <input type="text" class="form-control"
								id="exampleInputPhone" placeholder="Phone" name="phone">
						</div>
						<div class="form-group col-md-3">
							<label for="exampleInputNationality">Nationality</label> <input
								type="text" class="form-control" id="exampleInputNationality"
								placeholder="Nationality" name="nationality">
						</div>
						<div class="form-group col-md-2">
							<label for="exampleInputSocialID">Social ID</label> <input
								type="text" class="form-control" id="exampleInputSocialID"
								placeholder="Social id" name="social_id">
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
							<label for="exampleInputFatherName">Father's Name</label> <input
								type="text" class="form-control" id="exampleInputFatherName"
								placeholder="Father's Name" name="father_name">
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputFatherLName">Father's Latin Name</label>
							<input type="text" class="form-control"
								id="exampleInputFatherLName" placeholder="Father's Latin Name"
								name="father_latin_name">
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleInputMotherName">Mother's Name</label> <input
								type="text" class="form-control" id="exampleInputMotherName"
								placeholder="Father's Name" name="mother_name">
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputMotherLName">Mother's Latin Name</label>
							<input type="text" class="form-control"
								id="exampleInputMotherLName" placeholder="Father's Latin Name"
								name="mother_latin_name">
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-6">
							<label for="exampleInputFName">Father's Phone</label> <input
								type="text" class="form-control" id="exampleInputFName"
								placeholder="Father's Phone " name="father_phone">
						</div>
						<div class="form-group col-md-6">
							<label for="exampleInputLName">Mother's Phone</label> <input
								type="text" class="form-control" id="exampleInputLName"
								placeholder="Mother's Phone" name="mother_phone">
						</div>
					</div>

					<div class="row pull-right" style="margin: 7px;">
						<!-- Contextual button for informational alert messages -->
						<button type="submit" class="btn"
							style="font-width: 20px; color: white; background-color: green;">
							Add</button>
					</div>
				</fieldset>
		</div>
		</form>
		</section>
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
</body>
</html>