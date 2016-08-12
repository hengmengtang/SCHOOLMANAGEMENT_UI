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
<jsp:include page="../include/headGeneration.jsp" />
<jsp:include page="../include/headDashboard.jsp" />
</head>
<body class="bg">

	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">
		<section class="content-header">
		<h1>
			Study <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
					Home</a></li>
			<li><a href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>Study
					Management</a></li>
			<li><small>Generation</small></li>
		</ol>
		</section>
		<!-- Main content -->
		<section class="content">

		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
			<div class="row">
				<!-- Title -->
				<div class="col-md-2 pull-left">
					<i class="fa fa-graduation-cap"></i> <small style="color: black;">Generation</small>
				</div>
				<!-- End Title -->

				<!-- pagination -->
				<div class="col-md-10">
					<ul class="pagination pull-right" style="margin-top: 2px;">
						<li><a href="#">First</a></li>
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span>
						</a></li>
						<li><a href="#">Last</a></li>
					</ul>
				</div>
				<!-- End Pagination -->
			</div>
			<!-- Start Row 2 -->
			<div class="row">

				<div class="col-md-2">

					<div class="input-group pull-left">
						<span class="input-group-addon" style="background-color: green;">
							<i class="fa fa-align-justify" style="color: white;"></i>
						</span> <select class="form-control selectpicker">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>

					</div>
				</div>
				<!-- End Selector -->
				<div class="col-md-3">

					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1"
							style="background-color: green;"><i class="fa fa-search"
							style="color: white;"></i> </span> <input type="text"
							class="form-control" placeholder="Username">
					</div>

				</div>

			</div>
			<!-- End Row 2 -->

			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
					<div class="table-responsive">
						<table class="table table-hover">
						<thead>
							<tr>
								<th>N <sup>o</sup></th>
								<th>Genration<span class="arrow1">&#x2191;&#x2193;</span></th>
								<th>Start Date<span class="arrow1">&#x2191;&#x2193;</span></th>
								<th>End Date<span class="arrow1">&#x2191;&#x2193;</span></th>
								<th>Finish</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>1st Generation</td>
								<td>2016-5-14</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">Yes</button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>2nd Generation</td>
								<td>2016-5-14</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">Yes</button>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>3rd Generation</td>
								<td>2016-5-14</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-success">
										<span class="glyphicon glyphicon-ok"></span>
									</button>
								</td>
							</tr>
						</tbody>

					</table>
				</div>
				<!-- End Table -->
			</div>
			<!-- End Row 3 -->
			<!-- Start add generation -->
			<div class="row" style="margin: 0px;">
				<!-- <div class="col-md-2"> -->
				<div class="pull-left" style="color: black;">
					<i class="fa fa-plus-circle" style="color: green;"></i> <span>Add
						Generation</span>
				</div>

				<div class="pull-right">
					<button class="pull-right btn btn-success" id="btn-sub">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>

			</div>
			<!-- End add generation -->

			<!-- Start Add Generation -->
			<div class="row">
				<div id="hide">
				<div class="col-md-4" style="display: none;" id="gen">
					<span>Generation<span class="star">*</span></span> <input
						type="text" class="form-control" placeholder="Generation"
						style="margin-top: 5px;">
				</div>
				
			

				<div class="col-md-4" style="display: none;" id="start-date">
					<span>Start Date<span class="star">*</span></span> <input
						id="datepicker1" class="form-control"
						placeholder="Click here to select date" style="margin-top: 5px;">
				</div>

				<div class="col-md-4" style="display: none;" id="end-date">
					<span>End Date<span class="star">*</span></span> <input
						id="datepicker2" type="text" class="form-control"
						placeholder="Click here to select date" style="margin-top: 5px;">
				</div>
			<div class="row" style="margin: 7px;">
				<div class="pull-right" style="margin-top: 5px; display: none;"
					id="button">
					<button type='button' class="btn btn-success" id="btnSave">Save</button>
					<button type='button' class="btn btn-danger" id="btnCancel">Cancel</button>
				</div>
			</div>
		</div>
		</div>
			<!-- End Button Save and Cancel -->
	</fieldset>
	</div>
	<!-- End page -->
	</section>
</div>
	<!-- .content-wrapper -->
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<!--Add Script-->
	</script>
	<jsp:include page="../include/footDashboard.jsp" />
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script>
		$(document).ready(
				function() {
					//-- bottom add --//
					$("#btn-sub").click(function() {
						$("#hide").fadeIn();
						$("#gen").fadeIn("slow");
					});
					
					//-- bottom cancel --//
					$("#btnCancel").click(function(){
						$("#start-date").fadeOut("fast");
						$("#end-date").fadeOut("fast");
						$("#button").fadeOut("fast");
						$("#hide").fadeOut("fast");
					});
					//--Add Course--//
					$("#gen").click(function() {
						$("#start-date").fadeIn("slow");
					});
					//--Add Class--//
					$("#start-date").click(function() {
						$("#end-date").fadeIn("slow");

					});

					$("#end-date").click(function() {
						$("#button").fadeIn("slow");

					});
					$('#datepicker1 , #datepicker2').datetimepicker(
							{
								onGenerate : function(ct) {
									$(this).find('.xdsoft_date').toggleClass(
											'xdsoft_disabled');
								},
								timepicker : false,
								formatDate : 'Y/m/d',
								minDate : '-1970/01/02',//yesterday is minimum date(for today use 0 or -1970/01/01)
								maxDate : '+1970/01/02'//tomorrow is maximum date calendar
							});

				});
	</script>
	<script type='text/javascript'>
		
	</script>
	<!--End Script-->
	</div>
</body>
</html>