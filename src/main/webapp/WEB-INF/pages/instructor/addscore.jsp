<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
<jsp:include page="../include/headDashboard.jsp" />
</head>
<body class="bg">
	<jsp:include page="index.jsp" />
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent"
		style="padding-left: 15px; padding-right: 15px">
		<!-- Content Header (Page header) -->
		<section class="content-header">
		<h1>
			HRD<small> Student Score </small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Student Score</li>
		</ol>
		</section>

		<!-- Main content-->
		<section class="content">
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<fieldset>
				<div class="row">
					<!-- Title -->
					<div class="col-md-2 pull-left">
						<i class="fa fa-graduation-cap"></i> <span style="color: black;">Student
							Score</span>
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
				<!-- Testing -->
				<div class="row">
					<div class="col-md-3 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Instructor </span> 
								<input class="form-control selectpicker" placeholder="Instructor name"
								ng-init="searchGeneration | searchGeneration='Generation'"
								ng-model="searchGeneration" ng-mouseleave="getGeneration()">
						</div>
					</div>
				</div>
				<br>
				<!-- Start Selection -->
				<div class="row">
					<div class="col-md-2">

						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="background-color: #00A65A;"> <i
								class="fa fa-align-justify" style="color: white;"></i>
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
					<div class="col-md-3 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;">
								Generation </span> 
								<input class="form-control selectpicker" value="4 Generation"
								ng-init="searchGeneration | searchGeneration='Generation'"
								ng-model="searchGeneration" ng-mouseleave="getGeneration()" readonly>
						</div>
					</div>

					<div class="col-md-2 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> Course
							</span> 
							<input class="form-control selectpicker"
								ng-model="searchCourse" value="Advance Course"
								ng-init="searchCourse | searchCourse='Course'"
								ng-mouseleave="getCourse()" readonly>
						</div>
					</div>

					<div class="col-md-2 pull-left">
						<div class="input-group pull-left">
							<span class="input-group-addon"
								style="color: white; background-color: #00A65A;"> Class </span>
							<select class="form-control selectpicker" ng-model="searchClass"
								ng-init="searchClass | searchClass='Class'">
								<option value="">Class</option>
								<option>BTB</option>
								<option>KSP</option>
								<option>PP</option>
								<option>SR</option>
							</select>
						</div>
					</div>

					<!--Search Location-->

					<div class="col-md-3">
						<button class="btn btn-primary" id="addScore">Add Score</button>
						<button class="btn btn-primary" id="viewScore">View Score</button>
						<input type="hidden" id="getUser" value="korean">
					</div>
				</div>
				<!-- End Selection -->
				<!-- Start Add Score Table Here-->
				<div style="margin-top: 20px; display: none" id="addScoreTable">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr style="font-size: 16px;">
									<th>N <sup>o</sup></th>
									<th>Student&#x2191;&#x2193;</th>
									<th>Class&#x2191;&#x2193;</th>
									<th>Korean&#x2191;&#x2193;</th>
									<th>Web&#x2191;&#x2193;</th>
									<th>Java&#x2191;&#x2193;</th>
									<th>Total Score&#x2191;&#x2193;</th>
									<th>Add Score</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Sam Ol Sam On</td>
									<td>Battambang</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td><input type="text" pattern="^[0-9]$" maxlength="5"
										class="koreanScore" placeholder="Korean Score"
										style="display: none;"> <input type="text"
										pattern="^[0-9]$" maxlength="5" class="javaScore"
										placeholder="Java Score" style="display: none;"> <input
										type="text" pattern="^[0-9]$" maxlength="5" class="webScore"
										placeholder="Web Score" style="display: none;"></td>
								</tr>
								<tr>
									<td>1</td>
									<td>Sam Ol Sam On</td>
									<td>Battambang</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td><input type="text" pattern="^[0-9]$" maxlength="5"
										class="koreanScore" placeholder="Korean Score"
										style="display: none;"> <input type="text"
										pattern="^[0-9]$" maxlength="5" class="javaScore"
										placeholder="Java Score" style="display: none;"> <input
										type="text" pattern="^[0-9]$" maxlength="5" class="webScore"
										placeholder="Web Score" style="display: none;"></td>
								</tr>
							</tbody>
						</table>
						<input type="submit" value="Save" class="btn btn-success"
							style="margin-left: 1000px">
					</div>
				</div>
				<!-- End Add Score Table Here -->
				<!-- Start View Score Table Here -->
				<div style="margin-top: 20px; display: none" id="viewScoreTable">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr style="font-size: 16px;">
									<th>N <sup>o</sup></th>
									<th>Student&#x2191;&#x2193;</th>
									<th>Class&#x2191;&#x2193;</th>
									<th>Korean&#x2191;&#x2193;</th>
									<th>Web&#x2191;&#x2193;</th>
									<th>Java&#x2191;&#x2193;</th>
									<th>Total Score&#x2191;&#x2193;</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>Sam Ol Sam On</td>
									<td>Battambang</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
								</tr>
								<tr>
									<td>1</td>
									<td>Sam Ol Sam On</td>
									<td>Battambang</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
									<td>100</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- End View Score Table Here -->
				</div>
				</div>
				</div>
			</div>
		</div>
		</fieldset>
		</div>
		<!-- End page --> 
		</section>
	</div>
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<script>
        $(document).ready(function(){
        	
    $("#btn-add").click(function(){
        $("#add-gen").fadeIn();
    });
    $("#add-gen").click(function(){
    	$("#add-course").fadeIn();
    });
    $("#add-course").click(function(){
    	$("#add-class").fadeIn();
    });
    $("#add-class").click(function(){
    	$("#add-stu").fadeIn();
    });
    $("#add-stu").click(function(){
    	$("#add-btn").fadeIn();
    });
    $("#addScore").click(function(){
    	if($("#getUser").val() =="korean"){
    		$(".koreanScore").show();
    	}
    	else if($("#getUser").val() =="web"){
    		$(".webScore").show();
    	}
    	else if($("#getUser").val() =="java"){
    		$(".javaScore").show();
    	}
    });
    $("#addScore").click(function(){
    	$("#addScoreTable").fadeToggle();
    	$("#viewScoreTable").hide();
    });
    $("#viewScore").click(function(){
    	$("#viewScoreTable").fadeToggle();
    	$("#addScoreTable").hide();
    });
    
    <!--Validate Number Korean Score-->
    
        $(".koreanScore").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                 // Allow: Ctrl+A, Command+A
                (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || 
                 // Allow: home, end, left, right, down, up
                (e.keyCode >= 35 && e.keyCode <= 40)) {
                     // let it happen, don't do anything
                     return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
    });
        <!--Validate Number WebScore-->
        
        $(".webScore").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                 // Allow: Ctrl+A, Command+A
                (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || 
                 // Allow: home, end, left, right, down, up
                (e.keyCode >= 35 && e.keyCode <= 40)) {
                     // let it happen, don't do anything
                     return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
    });
<!--Validate Number javaScore-->
        
        $(".javaScore").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                 // Allow: Ctrl+A, Command+A
                (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || 
                 // Allow: home, end, left, right, down, up
                (e.keyCode >= 35 && e.keyCode <= 40)) {
                     // let it happen, don't do anything
                     return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
    });
});

</script>

</body>
</html>