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
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
  <script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/font-awesome-4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/dist/css/AdminLTE.min.css">
  <script src="${pageContext.request.contextPath }/resources/jquery/jquery/jquery.js"></script>
  <script src="${pageContext.request.contextPath }/resources/jquery/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/jquery/jquery-ui/jquery-ui.min.js"></script>
</head>
<body>
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
		<form>
			<fieldset>

				<div class="row" style="margin: 3px;">

					<div class="col-md-10 pull-left">
						<i class="fa fa-pencil-square-o" style="font-size: 20px;"></i> <span
							style="font-size: 16px;">Add Student's Information</span>
					</div>
					<div class="form-group col-md-2 pull-right">
						<label for="exampleInputFile"> <img src="${pageContext.request.contextPath }/resources/images/user.ico"
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
						<label for="exampleInputFName">First Name <span
							class="star"> * </span></label> <span class="glyphicons glyphicons-user"></span>
						<input type="text" class="form-control " id="exampleInputFName"
							placeholder="Enter Your First Name">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputLName">Last Name <span
							class="star"> * </span></label> <input type="text" class="form-control"
							id="exampleInputLName" placeholder="Enter Your Last Name">
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-6">
						<label>Gender <span class="star"> * </span></label> <br>

						<!--Radio-->
						<label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio1" value="option1">
							Male
						</label> <label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio2" value="option2">
							Female
						</label>
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputBOF">Birth Date <span class="star">
								* </span></label> <input type="text" class="form-control" id="exampleInputBOF"
							placeholder="Birth Date">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-6">
						<label for="exampleInputEmail2">Email <span class="star">
								* </span></label> <input type="email" class="form-control"
							id="exampleInputEmail2" placeholder="your_email@gmail.com">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputPassWord">Password <span
							class="star"> * </span></label> <input type="password"
							class="form-control" id="exampleInputPassword"
							placeholder="Password">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="exampleInputAddress">Address</label> <input
							type="text" class="form-control" id="exampleInputAddress"
							placeholder="Address">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-4">
						<label for="exampleInputAddress">Phone <span class="star">
								* </span></label> <input type="text" class="form-control"
							id="exampleInputPhone" placeholder="Phone">
					</div>
					<div class="form-group col-md-4">
						<label for="exampleInputNationality">Nationality</label> <input
							type="text" class="form-control" id="exampleInputNationality"
							placeholder="Nationality">
					</div>
					<div class="form-group col-md-4">
						<label for="exampleInputSocialID">Social ID</label> <input
							type="text" class="form-control" id="exampleInputSocialID"
							placeholder="Social id">
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
							placeholder="Father's Name">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputMotherName">Mother's Name</label> <input
							type="text" class="form-control" id="exampleInputMotherName"
							placeholder="Mother's Name">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-6">
						<label for="exampleInputFName">Father's Phone</label> <input
							type="text" class="form-control" id="exampleInputFName"
							placeholder="Father's Phone ">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputLName">Mother's Phone</label> <input
							type="text" class="form-control" id="exampleInputLName"
							placeholder="Mother's Phone">
					</div>
				</div>

				<div class="row pull-right" style="margin: 7px;">
					<!-- Contextual button for informational alert messages -->
					<button type="button" class="btn"
						style="font-width: 20px; color: white; background-color: green;">
						Add</button>
				</div>
			</fieldset>
	</div>
	</form>
	</section>

</body>
</html>