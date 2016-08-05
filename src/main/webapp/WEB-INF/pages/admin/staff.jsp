<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>HRD Student Management</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<jsp:include page="../include/headDashboard.jsp" />
<link
	href="${pageContext.request.contextPath }/resources/style/customSubject.css"
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
			Staff <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Staff</li>
		</ol>
		</section>

		<!-- Main content-->
		<section class="content"> <!-- Start Container -->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<!-- Start Row 1 -->
			<div class="row">

				<div class="col-md-8" style="font-size: 18px;">
					<i class="fa fa-user" aria-hidden="true"></i> Staff List
				</div>
				<!-- Start Pagination -->
				<div class="col-md-4">
					<ul class="pagination pull-right" style="margin-top: 3px;">
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
				</div>
				<!-- End Pagination -->
			</div>
			<!-- End Row 1 -->
			<!-- Start Selection -->
			<div class="row">
				<div class="col-md-2">
					<div class="input-group pull-left">
						<span class="input-group-addon" style="background-color: green;">
							<i class="fa fa-align-justify" style="color: white;"></i>
						</span> <select class="form-control select">
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
				<div class="col-md-3">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"><i
							class="fa fa-search" style="font-size: 16px;"></i> </span> <input
							type="text" class="form-control" placeholder="Search Staff...">
					</div>
				</div>
				<!-- End Search Location -->
			</div>
			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr style="font-size: 16px;">
								<th>Staff ID</th>
								<th>Full Name&#x2191;&#x2193;</th>
								<th>Gender&#x2191;&#x2193;</th>
								<th>Position&#x2191;&#x2193;</th>
								<th>Email&#x2191;&#x2193;</th>
								<th>Drop&#x2191;&#x2193;</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1011</td>
								<td>Ke Visal</td>
								<td><span class="label label-info" style="font-size: 13px;">M</span></td>
								<td><span class="label label-success"
									style="font-size: 13px;">Admin</span></td>
								<td>Kevisal@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td>1007</td>
								<td>Phang Pirang</td>
								<td><span class="label label-info" style="font-size: 13px;">M</span></td>
								<td><span class="label label-warning"
									style="font-size: 13px;">Instructor</span></td>
								<td>Phangpirang@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td>1035</td>
								<td>Aing Teckchun</td>
								<td><span class="label label-info" style="font-size: 13px;">M</span></td>
								<td><span class="label label-warning"
									style="font-size: 13px;">Instructor</span></td>
								<td>Teckchun@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>

							</tr>
							<tr>
								<td>1019</td>
								<td>Eath Manith</td>
								<td><span class="label label-danger"
									style="font-size: 13px;">F</span></td>
								<td><span class="label label-warning"
									style="font-size: 13px;">Instructor</span></td>
								<td>Eathmanith@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>

							</tr>
							<tr>
								<td>1040</td>
								<td>Pheng Tola</td>
								<td><span class="label label-info" style="font-size: 13px;">M</span></td>
								<td><span class="label label-warning"
									style="font-size: 13px;">Instructor</span></td>
								<td>tolapheng@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>
			<!-- End Table -->

			<!--Start Add Student-->
			<div class="row" style="margin: 5px;">

				<div class="pull-left" style="color: black;">
					<span class="glyphicon glyphicon-pencil" style="color: green;"></span>
					<span>Add Staff</span>
				</div>

				<div class="pull-right">
					<button class="pull-right btn btn-success" id="btn-sub">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>

			</div>
			<!-- Start Form -->
			<form style="margin: 20px; display: none" id="form-add">
				<fieldset>
					<div class="row">
						<div class="col-md-10"></div>
						<div class="form-group col-md-2">
							<label for="exampleInputFile"> <img src="images/user.ico"
								alt="" class="img-circle img-responsive "
								style="width: 180px; height: 180px; border: 1px solid black;">
							</label>
						</div>
					</div>

					<div class="row">

						<div class="col-md-6">
							<label for="exampleInputFName">First Name </label>
							<div class="input-group">
								<span class="input-group-addon " id="basic-addon1"
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-user" aria-hidden="true"
									style="font-size: 16px;"></i> </span> <input type="text"
									class="form-control" placeholder="First Name"
									aria-describedby="basic-addon1">
							</div>
						</div>

						<div class="col-md-6">
							<label for="exampleInputLName">Last Name </label>
							<div class="input-group">
								<span class="input-group-addon " id="basic-addon1"
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-user" aria-hidden="true"
									style="font-size: 16px;"></i> </span> <input type="text"
									class="form-control" placeholder="Last Name"
									aria-describedby="basic-addon1">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label>Gender </label> <br>
							<!--Radio-->
							<label class="radio-inline"> <input type="radio"
								name="inlineRadioOptions" id="inlineRadio1" value="option1">
								Male
							</label> <label class="radio-inline"> <input type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="option2">
								Female
							</label>
						</div>
					</div>

					<div class="row">

						<div class="col-md-6">
							<label for="exampleInputPosition">Position </label>
							<div class="input-group">
								<span class="input-group-addon "
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-cog" style="font-size: 16px;"></i> </span>
								<input type="text" class="form-control" placeholder="Position">
							</div>
						</div>

						<div class="col-md-6">
							<label for="exampleInputPhone">Phone </label>
							<div class="input-group">
								<span class="input-group-addon "
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-earphone" style="font-size: 16px;"></i>
								</span> <input type="text" class="form-control"
									placeholder="010-234-567">
							</div>
						</div>

					</div>

					<div class="row">

						<div class="col-md-6" id="email">
							<label for="exampleInputPhone">Email </label>
							<div class="input-group">
								<span class="input-group-addon "
									style="color: white; background-color: #00A65A"><i
									aria-hidden="true" style="font-size: 20px;"><b>@</b></i> </span> <input
									type="Email" class="form-control"
									placeholder="YourEmail@gamil.com">
							</div>
						</div>

						<div class="col-md-6" id="password">
							<label for="exampleInputPhone">Password </label>
							<div class="input-group">
								<span class="input-group-addon"
									style="color: white; background-color: #00A65A"><i
									class="glyphicon glyphicon-lock" style="font-size: 16px;"></i>
								</span> <input type="password" class="form-control"
									placeholder="password">
							</div>
						</div>

					</div>
					<div class="row pull-right" style="margin: 7px;">
						<div id="button">
							<button type="button" class="btn btn-success">Save</button>
							<button type="button" class="btn btn-danger">Cancel</button>
						</div>
					</div>

				</fieldset>
			</form>
			<!-- End Form -->
		</div>
		</section>

	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp"></jsp:include>
	<script>
  $(document).ready(function(){
    $( "#btn-sub" ).click(function() {
      $( "#form-add" ).fadeToggle("slow");
    });
  });
</script>
</body>
</html>