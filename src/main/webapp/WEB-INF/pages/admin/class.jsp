<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>School Management System</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<jsp:include page="../include/headDashboard.jsp" />
<link
	href="${pageContext.request.contextPath }/resources/style/customClass.css"
	rel="stylesheet" />
</head>
<body class="bg">
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
			<li class="active">Class</li>
		</ol>
		</section>

		<!-- Main content -->
		<section class="content"> <!-- Main content -->
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
			<!-- Start Row 1(Titel and Pagination) -->
			<div class="row">
				<!-- pagination -->
				<div class="col-md-2 pull-left">
					<i class="fa fa-university" style="color: black;"></i> <small
						style="color: black;"> Class</small>
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
			<!-- End Row 1(Titel and Pagination) -->
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
							type="text" class="form-control" placeholder="Class">
					</div>
				</div>
				<!-- End Text Search -->
			</div>
			<!-- End Row 2 -->
			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
					<div class="table-responsive">
						<table class="table table-hover">
						<thead>
							<tr>
								<th>N <sup>o</sup></th>
								<th>Class<span style="color: blue; font-weight: bold;">&#x2191;&#x2193;</span></th>
								<th>Course<span style="color: blue; font-weight: bold;">&#x2191;&#x2193;</span></th>
								<th>Generation<span style="color: blue;">&#x2191;&#x2193;</span></th>
								<th>Deactive</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Battambong</td>
								<td>Basic</td>
								<td>3rd Generation</td>
								<td>
									<button type="button" class="btn btn-danger">
										Yes</span>
									</button>
								</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Phnom Penh</td>
								<td>Basic</td>
								<td>3rd Generation</td>
								<td>
									<button type="button" class="btn btn-danger">
										Yes</span>
									</button>
								</td>
							</tr>
							<tr>
								<td>1</td>
								<td>Simp Reap</td>
								<td>Basic</td>
								<td>3rd Generation</td>
								<td>
									<button type="button" class="btn btn-danger">
										Yes</span>
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
						style="font-size: 16px;">Add Class</b>
				</div>
				<div class="pull-right">
					<button class="btn btn-success" id="btn-add">
						<span class="glyphicon glyphicon-plus"> </span>
					</button>
				</div>
			</div>
			<!--End Add Student-->
			<!-- Start Add Generation -->
			<div class="row">
				<div id="hide">				
				<div class="col-md-3" id="add-gen" style="display: none;">
					<span>Generation<span class="star">*</span></span> <!-- <select
						class="form-control select controlBottom" id="selection"
						style="margin-top: 5px;">
						<option>Select Generation</option>
						<option value="gen1">Generation 1</option>
						<option value="gen2">Generation 2</option>
						<option value="gen3">Generation 3</option>
						<option value="gen4">Generation 4</option>
					</select> -->
					<lebel class="form-control select controlBottom" id="selection"
						style="margin-top: 5px;">Generation4th</lebel>
				</div>

				<div class="col-md-3" id="add-course" style="display: none;">
					<span>Course<span class="star">*</span></span> <select
						class="form-control select controlBottom" id="course" style="margin-top: 5px;">
						<option>Select Course</option>
						<option value="basic">Basic</option>
						<option value="advance">Advance</option>
					</select>
				</div>

				<div class="col-md-5" id="add-class" style="display: none;">
					<span>Class<span class="star">*</span></span>
					<div>
						<input type="text" class="form-control select controlBottom" placeholder="Class"
							style="margin-top: 5px;">
					</div>
				</div>

			</div>

			<div class="row" style="margin: 5px;">
				<div class="pull-right" id="add-btn" style="display: none;">
					<button type="button" class="btn btn-success" id="btnSave">Save</button>
					<button type="button" class="btn btn-danger" id="btnCancel">Cancel</button>
				</div>
			</div>
			</div>
			<!-- End Row -->
			</fieldset>
		</div>
		<!-- End Class --> </section>
		<!-- /.content -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<script>
  		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!--Add Script-->
	<script>
  $(document).ready(function(){
    //--Add Generation--//
    $( "#btn-add" ).click(function() {
    	$("#hide").fadeIn();
      $( "#add-gen" ).fadeIn( "slow");
      $("#add-course").fadeIn('slow');
    });
    $("#btnCancel").click(function(){
		$("#add-gen").fadeOut("fast");
		$("#add-course").fadeOut("fast");
		$("#add-class").fadeOut("fast");
		$("#add-btn").fadeOut("fast");
		$("#hide").fadeOut("fast");
	});
    //--Add Course--//
    $( "#selection" ).change(function() {
      var gen=$(this).val();
      (gen=="gen1" || gen=="gen2" || gen=="gen3" || gen=="gen4" ) ? $("#add-course").fadeIn('slow') : $("#add-course").fadeOut('slow');
    });

    //--Add Class--//
    $( "#course" ).change(function() {
      var course=$(this).val();
      (course=='basic' || course=='advance') ? $("#add-class").fadeIn( "slow"): $("#add-class").fadeOut( "slow");
    });

    //--Add Student--//
    $( "#add-class" ).change(function() {
      var clas=$(this).val();
      (clas=='btb' || clas=='pp' || clas=='kps' || clas=='sr') ? $("#add-stu").fadeIn( "slow"): $("#add-stu").fadeOut( "slow");
    });

    //--Add Button--//
    $( "#add-class" ).click(function() {
      $("#add-btn").fadeIn( "slow");
    });

  });
</script>
	<!--End Script-->
</body>
</html>
