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
<script src="jquery.datetimepicker.min.js"></script>

</head>
<body class="bg">
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
			<li class="active">My Profile</li>
		</ol>
		</section>
		<section class="content"> <!--/.content-->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<form method="post" action="#">
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
							<input type="text" class="form-control " id="exampleInputStuID"
								placeholder="Enter ID" name="stu_id" readonly="readonly"
								value="">
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
					<!--Radio-->
					<div class="row">
						<div class="form-group col-md-3">
							<label>Gender <span class="star"> * </span></label> <br> <label
								class="radio-inline"> <input type="radio"
								class="flat-red" name="gender" id="inlineRadio1" value="option1">
								Male
							</label> <label class="radio-inline"> <input type="radio"
								class="flat-red" name="gender" id="inlineRadio2" value="option2">
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
								type="text" class="form-control" id="exampleInputNationality"
								placeholder="Nationality" name="nationality">
						</div>
						<div class="form-group col-md-3">
							<label for="exampleInputSocialID">Social ID</label> <input
								type="text" class="form-control" id="exampleInputSocialID"
								placeholder="Social id" name="social_id">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="exampleInputPOB">Place Of Birth</label> <input
								type="text" class="form-control" id="exampleInputPOB"
								placeholder="Address" name="address">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="exampleInputAddress">Permanent Address</label> <input
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
							<label for="Phone">Phone <span class="star"> * </span></label> <input
								type="text" class="form-control" id="Phone" placeholder="Phone"
								name="phone" data-inputmask='"mask": "(999) 999-9999"' data-mask>
						</div>
						<div class="form-group col-md-4">
							<label for="exampleInputPosition">Position <span
								class="star"> * </span></label> <input type="input" class="form-control"
								id="exampleInputPosition" name="position" value="student"
								readonly="readonly">

						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-4">
							<label for="ITYear">IT Year<span class="star"> * </span></label>
							<select class="form-control" id="ITYear" name="it_year">
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
								class="form-control" id="Graduated" name="it_year">
						</div>
						<div class="form-group col-md-4">
							<label for="exampleInputUniversity">University</label> <select
								class="form-control" id="exampleInputPosition" name="university">
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
								class="form-control" id="English" name="english">
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
								id="Status" name="status">
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
						<div class="form-group col-md-12">
							<label for="Address">Address</label> <input type="text"
								class="form-control" id="Address" placeholder="Address"
								name="address">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="FOccupation">Occupation</label> <input type="text"
								class="form-control" id="FOccupation"
								placeholder="Father Occupation" name="mother_phone">
						</div>
						<div class="form-group col-md-6">
							<label for="FPhone">Father's Phone</label> <input type="text"
								class="form-control" id="FPhone" placeholder="Father's Phone "
								name="father_phone">
						</div>

					</div>

					<!-- Mother Info -->
					<div class="row">
						<div class="form-group col-md-6">
							<label for="MotherName">Mother's Khmer Name</label> <input
								type="text" class="form-control" id="MName"
								placeholder="Mother's Name" name="mother_name">
						</div>
						<div class="form-group col-md-6">
							<label for="FatherLName">Mother's Latin Name</label> <input
								type="text" class="form-control" id="MotherLName"
								placeholder="Mother's Latin Name" name="mother_latin_name">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="FAddress">Address</label> <input type="text"
								class="form-control" id="MAddress" placeholder="Address"
								name="m_address">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="FOccupation">Occupation</label> <input type="text"
								class="form-control" id="MOccupation"
								placeholder="Mother Occupation" name="mother_phone">
						</div>
						<div class="form-group col-md-6">
							<label for="FPhone">Mother's Phone</label> <input type="text"
								class="form-control" id="MPhone" placeholder="Mother's Phone "
								name="mother_phone">
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




