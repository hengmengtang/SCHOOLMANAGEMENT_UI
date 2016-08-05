<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
<script
	src="${pageContext.request.contextPath }/resources/Jquery-new/jquery-2.2.4.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/js/jquery.js"></script>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<jsp:include page="../include/headDashboard.jsp"></jsp:include>
<link
	href="${pageContext.request.contextPath }/resources/style/custominstructorenroll.css"
	rel="stylesheet" />
</head>
<body>
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			<b>HRD</b> Instructor Enroll Management
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Instructor Enroll</li>
		</ol>
		</section>

		<section class="content"> <!-- Main content-->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">

			<div class="row">

				<div class="col-md-2 pull-left" style="font-size: 18px;">
					<i class="fa fa-users" aria-hidden="true"></i> Instructor
					Enrollment
				</div>

				<div class="col-md-10 pull-right">
					<!-- <nav class="page">       -->
					<ul class="pagination pull-right" style="margin-top: 2px;">
						<li><a href="#">First</a></li>
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
						<li><a href="#">Last</a></li>
					</ul>
					<!-- </nav> -->
				</div>
			</div>
			<!-- End Row 1 -->
			<!-- Start Row 2 -->
			<div class="row">
				<!-- Selection -->
				<div class="col-md-3">

					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> <i
							class="fa fa-align-justify"></i>
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
				<div class="col-md-3">

					<div class="input-group pull-left">

						<span class="input-group-btn">
							<button class="btn btn-success">Generation</button>
						</span> <select class="form-control selectpicker">
							<option value="allgeneration">All Generation</option>
							<option value="generation1">Generation 1</option>
							<option value="generation2">Generation 2</option>
							<option value="generation3">Generation 3</option>
							<option value="generation4">Generation 4</option>
						</select>
					</div>

				</div>

				<!--Search Location-->
				<div class="col-md-6">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: #00A65A"><i
							class="fa fa-search" aria-hidden="true" style="font-size: 16px;"></i>
						</span> <input type="text" class="form-control"
							placeholder="Search Instructor"
							style="width: 160px; height: 31px;">
					</div>
				</div>

			</div>
			<!-- End pagination -->

			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr style="font-size: 16px;">
								<th>N <sup>o</sup></th>
								<th>Instructor&#x2191;&#x2193;</th>
								<th>Class&#x2191;&#x2193;</th>
								<th>Start Date&#x2191;&#x2193;</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Rath Phearun</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Aing Techun</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Phang Pirag</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Pheng Tola</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>5</td>
								<td>Lun Sovathana</td>
								<td>Battambang</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
						</tbody>

					</table>
				</div>
			</div>
			<!-- End Table -->

			<!--Start Add Student-->
			<div class="row" style="margin: 0px;">

				<div class="pull-left">
					<span class="glyphicon glyphicon-pencil"></span> <b
						style="font-size: 16px;">Add Instructor Enrollment</b>
				</div>

				<div class="pull-right" style="margin: 0px;">
					<button class="btn btn-success" id="btn-add">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>

			</div>
			<!--End Add Student-->

			<!--Input for gen, stu, class-->
			<div class="row" style="margin-bottom: 5px;">
				<div class="col-md-3">
					Generation<sup style="color: red">*</sup>
				</div>
				<div class="col-md-4">
					Course<sup style="color: red">*</sup>
				</div>
				<div class="col-md-5">
					Class<sup style="color: red">*</sup>
				</div>
			</div>

			<div class="row">

				<div class="col-md-3">
					<select class="form-control select" id="add-gen"
						style="display: none;">
						<option>Select Generation</option>
						<option value="gen1" id="gen1">Generation 1</option>
						<option value="gen2" id="gen2">Generation 2</option>
						<option value="gen3" id="gen3">Generation 3</option>
						<option value="gen4" id="gen4">Generation 4</option>
					</select>
				</div>

				<div class="col-md-4">
					<select class="form-control select" id="add-course"
						style="display: none;">
						<option>Select Course</option>
						<option value="basic">Basic</option>
						<option value="advance">Advance</option>
					</select>
				</div>

				<div class="col-md-5">
					<select class="form-control select" id="add-class"
						style="display: none;">
						<option value="btb">Battambang</option>
						<option value="pp">Phnom Penh</option>
						<option value="kps">Kampongsom</option>
						<option value="sr">Siem Reap</option>
					</select>
				</div>

			</div>
			<!-- End Row -->
			<div class="row" style="margin-top: 5px;">
				<div class="col-md-4">
					Instructor<sup style="color: red">*</sup>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<div class="form-group" id="add-stu" style="display: none;">
						<input type="text" class="form-control"
							placeholder="Instructor Name">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="pull-right" id="add-btn"
					style="margin: 7px; display: none;">
					<button type="button" class="btn btn-success">Save</button>
					<button type="button" class="btn btn-danger">Cancel</button>
				</div>
			</div>

		</div>
	</div>
	</section>
	<!-- /.content-wrapper -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp"></jsp:include>
	<script>
		$(document)
				.ready(
						function() {
							//--Add Generation--//
							$("#btn-add").click(function() {
								$("#add-gen").fadeToggle("slow", function() {
								});
							});

							//--Add Course--//
							$("#add-gen")
									.change(
											function() {
												var gen = $(this).val();
												(gen == "gen1" || gen == "gen2"
														|| gen == "gen3" || gen == "gen4") ? $(
														"#add-course").fadeIn(
														'slow')
														: $("#add-course")
																.fadeOut('slow');
											});

							//--Add Class--//
							$("#add-course")
									.change(
											function() {
												var course = $(this).val();
												(course == 'basic' || course == 'advance') ? $(
														"#add-class").fadeIn(
														"slow")
														: $("#add-class")
																.fadeOut("slow");
											});

							//--Add Student--//
							$("#add-class")
									.change(
											function() {
												var clas = $(this).val();
												(clas == 'btb' || clas == 'pp'
														|| clas == 'kps' || clas == 'sr') ? $(
														"#add-stu").fadeIn(
														"slow")
														: $("#add-stu")
																.fadeOut("slow");
											});

							//--Add Button--//
							$("#add-stu").click(function() {
								$("#add-btn").fadeIn("slow");
							});

						});
	</script>

</body>
</html>