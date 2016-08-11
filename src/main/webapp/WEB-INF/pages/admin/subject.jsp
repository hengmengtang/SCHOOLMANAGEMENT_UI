<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>School Management System</title>
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
			Study <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
					Home</a></li>
			<li><a href="#">Student Management</a></li>
			<li class="active">Subject</li>
		</ol>
		</section>

		<!-- Main content -->
		<section class="content"> <!-- Main content --> <!-- Start Container -->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
			<!-- Start Row 1 -->
			<div class="row">

				<div class="col-md-8">
					<i class="fa fa-book" style="color: black;"></i> <small
						style="color: black;"> Subject</small>
				</div>

				<div class="col-md-4">
					<ul class="pagination pull-right" style="margin-top: 3px;">
						<li><a href="#">First</a></li>
						<li><a href="#" aria-label="Previous"> <span>&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#" aria-label="Next"> <span>&raquo;</span>
						</a></li>
						<li><a href="#">Last</a></li>
					</ul>
				</div>
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
							type="text" class="form-control" placeholder="Search Course">
					</div>
				</div>
				<!-- End Search Location -->
			</div>
			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>N <sup>o</sup></th>
								<th>Subject<span style="color: blue; font-weight: bold;">&#x2191;&#x2193;</span></th>
								<th>Description<span
									style="color: blue; font-weight: bold;">&#x2191;&#x2193;</span></th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Java</td>
								<td>J2SE,J2EE,J2ME</td>
								<td>
									<button type="button" class="btn btn-danger">
										<i class="fa fa-trash-o"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Web</td>
								<td>HTML,CSS,JavaScript,JQuery,Ajax,JSON,AngularJS</td>
								<td>
									<button type="button" class="btn btn-danger">
										<i class="fa fa-trash-o"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Korean</td>
								<td>Sorgang 1A,1B</td>
								<td>
									<button type="button" class="btn btn-danger">
										<i class="fa fa-trash-o"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Spring</td>
								<td>MVC,Maven</td>
								<td>
									<button type="button" class="btn btn-danger">
										<i class="fa fa-trash-o"></i>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- End Table -->
			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div style="color: black;">
					<i class="fa fa-plus-circle" style="color: green;"></i> <span>Add
						Subject</span>
					<button class="pull-right btn btn-success" id="btn-sub">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>
			</div>
			<!-- Start Add Generation -->
			<div class="row" style="margin: 5px;">
				<div id="hide">
				<div class="col-md-5" style="display: none;" id="add-sub">
					<span>Subject<span class="star">*</span></span><br> <input
						type="text" class="form-control" placeholder="Subject"
						style="margin: 5px;">
				</div>

				<div class="col-md-7" style="display: none;" id="des">
					<span>Description<span class="star">*</span></span><br> <input
						id="datetimepicker" class="form-control"
						placeholder="Description" style="margin: 5px;">
				</div>

			</div>

			<div class="row pull-right" style="margin: 0px; margin-bottom: 7px;">
				<div id="btn" style="display: none;">
					<button type="button" class="btn btn-success" id="btnSave">Save</button>
					<button type="button" class="btn btn-danger" id="btnCancel">Cancel</button>
				</div>
			</div>
			</div>
			</fieldset>
		</div>
		</section>
		<!-- /.content -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<script>
  		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!--Add Script-->
	<script>
$( document ).ready(function() {

  $("#btn-sub").click (function(){
	  $("#hide").fadeIn();
    $("#add-sub").fadeIn();
  });
  $("#btnCancel").click(function(){
		$("#add-sub").fadeOut("fast");
		$("#des").fadeOut("fast");
		$("#btn").fadeOut("fast");
		$("#hide").fadeOut("fast");
	});
  //--Add Course--//
  $( "#add-sub" ).click(function() {
    $("#des").fadeIn( "slow");
  });

  $( "#des" ).click(function() {
    $("#btn").fadeIn( "slow");
  });

});
</script>
</body>
</html>