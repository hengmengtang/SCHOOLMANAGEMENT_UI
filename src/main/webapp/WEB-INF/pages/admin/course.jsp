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
<jsp:include page="../include/headCourse.jsp" />
<jsp:include page="../include/headDashboard.jsp" />
</head>
<body>
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">
		<section class="content-header">
		<h1>
			Advanced Form Elements <small>Preview</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
					Home</a></li>
			<li><a href="#">Study Management</a></li>
			<li class="active">Course</li>
		</ol>
		</section>
		<!-- Main content -->
		<section class="content">

		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<div class="row">
				<!----------- pagination ------------>
				<div class="col-md-2 pull-left">
					<i class="fa fa-book" style="color: black;"></i> <small
						style="color: black;"> Course</small>
				</div>

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

			</div>
			<!-- End Row 1 -->
			<!-- Start Row 2(Generation and Search) -->
			<div class="row">
				<!-- <div class="col-md-2"> -->
				<div class="col-md-2">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> <i
							class="fa fa-align-justify"></i>
						</span> <select class="form-control selectionpicker">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
						<!-- End Selection -->
					</div>
				</div>
				<!--div class="col-md-3" -->
				<div class="col-sm-3">

					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> Generation
						</span> <select class="form-control selectpicker">
							<option>All Generation</option>
							<option>Generation 1st</option>
							<option>Generation 2nd</option>
							<option>Generation 3rd</option>
							<option>Generation 4th</option>
						</select>
					</div>

				</div>
				<!-- End Selection -->
				<!-- Text Search -->
				<div class="col-md-3">
					<div class="input-group">
						<span class="input-group-addon" style="background-color: green;"><i
							class="fa fa-search" style="color: white;"></i> </span> <input
							type="text" class="form-control" placeholder="Course">
					</div>
				</div>
				<!-- End Text Search -->
			</div>
			<!-- End Row 2 -->

			<!-- Start Table -->
			<div class="row" style="margin-left: 0px;">
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>N <sup>o</sup></th>
								<th>Course<span style="color: blue; font-weight: bold;">&#x2191;&#x2193;</span></th>
								<th>Generation<span style="color: blue; font-weight: bold;">&#x2191;&#x2193;</span></th>
								<th>Start Date<span style="color: blue;">&#x2191;&#x2193;</span></th>
								<th>End Date<span style="color: blue;">&#x2191;&#x2193;</span></th>
								<th>Finish</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Basic</td>
								<td>3rd Generation</td>
								<td>2016-5-14</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-success">
										<span class="glyphicon glyphicon-ok"></span>
									</button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Basic</td>
								<td>1st Generation</td>
								<td>2016-5-14</td>
								<td>2016-5-20</td>
								<td>
									<button type="button" class="btn btn-danger">Yes</button>
								</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Advanced</td>
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
			</div>
			<!-- End Table -->
			<!-- Add subject and button -->
			<div class="row" style="margin: 0px;">
				<!-- <div class="col-md-2"> -->
				<div class="pull-left" style="color: black;">
					<i class="fa fa-plus-circle" style="color: green;"></i> <span>Add
						Course</span>
				</div>

				<div class="pull-right">
					<button class="pull-right btn btn-success" id="btn-plus">
						<span class="glyphicon glyphicon-plus"></span>
					</button>
				</div>

			</div>
			<!-- end Add subject and button-->

			<!-- Start Panel-->
			<!-- Start Add Generation -->
			<div class="row">
				<div id="hide">
				<div class="col-md-4" id="add-gen" style="display: none;">
					<span>Subject<span class="star">*</span></span> <input
						type="text" class="form-control" placeholder="Subject"
						style="margin: 5px;" id="generation">
				</div>

				<div class="col-md-4" id="start-date" style="display: none;">
					<span>Start Date<span class="star">*</span></span> <input
						type="text" id="datepicker1" class="form-control"
						placeholder="Click here to select date" style="margin: 5px;">
				</div>

				<div class="col-md-4" style="display: none;" id="end-date">
					<span>End Date<span class="star">*</span></span> <input type="text"
						id="datepicker2" class="form-control"
						placeholder="Click here to select date" style="margin: 5px;">
				</div>

			</div>
			<div class="row" style="margin: 5px;">
				<div class="pull-right" id='btn' style="display: none;">
					<button class="btn btn-success" id="btnSave">Save</button>
					<button class="btn btn-danger" id="btnCancel">Cancel</button>
				</div>
			</div>
			</div>
			<!-- End Row -->
		</div>
		<!-- End Panel-->
	</div>
	<!-- End Main content -->
	</div>
	</div>
	<!-- End Content-->
	</div>
	</div>
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<!--Add Script-->
	<script>
$( document ).ready(function() {

  $("#btn-plus").click (function(){
	$("#hide").fadeIn();
    $("#add-gen").fadeIn();
  });
  $("#btnCancel").click(function(){
		$("#start-date").fadeOut("fast");
		$("#end-date").fadeOut("fast");
		$("#add-gen").fadeOut("fast");
		$("#btn").fadeOut("fast");
		$("#hide").fadeOut("fast");
	});
  //--Add Course--//
  $( "#add-gen" ).click(function() {
    $("#start-date").fadeIn( "slow");
  });
  //--Add Class--//
  $( "#start-date" ).click(function() {
    $("#end-date").fadeIn( "slow");
  });

  $( "#end-date" ).click(function() {
      $("#btn").fadeIn( "slow");
    });
  //Date Time Picker
  $(function() {
    $( "#datetimepicker" ).datepicker();
  });

  $(function() {
    $( "#datetimepicker1" ).datepicker();
  });

  $('#datepicker1,#datepicker2').datetimepicker({
    onGenerate:function( ct ){
      $(this).find('.xdsoft_date')
      .toggleClass('xdsoft_disabled');
      },
     timepicker:false,
     formatDate:'Y/m/d',
     minDate:'-1970/01/02',//yesterday is minimum date(for today use 0 or -1970/01/01)
     maxDate:'+1970/01/02'//tomorrow is maximum date calendar
   });

});
</script>
	<jsp:include page="../include/footDashboard.jsp" />
	<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
	<!--End Script-->
</body>
</html>