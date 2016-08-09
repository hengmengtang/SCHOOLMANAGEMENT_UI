<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>WEBPROJECT</title>
<!-- Tell the browser to be responsive to screen width -->
<style>
.input-group .form-control {
	position: relative;
	z-index: 2;
	float: left;
	width: 100%;
	margin-bottom: 0;
	font-size: 16px;
}

.input-group .input-group-addon {
	background: #fff;
}

.input-group-addon:first-child {
	border-right: 0;
}

@media only screen and (min-width: 600px) {
	.col-m-2 {
		float: left;
	}
}

select {
	width: 300px;
}

iframe {
	/* border: none; */
	width: 100% !important;
	height: 500px !important;
}
</style>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<jsp:include page="../include/headDashboard.jsp" />

</head>

<body class="bg">
	<!-- index is menu -->
	<jsp:include page="index.jsp" />

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper boxcontent">
		<section class="content-header">
		<h1>Dashboard</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Documents</li>
		</ol>
		</section>

		<!-- Main content-->
		<section class="content">
		<div class="row">
			<section class="col-lg-12 connectedSortable ui-sortable"> <!-- staff -->
			<div class="box box-primary">
				<div class="box-header ui-sortable-handle" style="cursor: move;">
					<i class="fa fa-book"></i>
					<h3 class="box-title">Transcript</h3>
					<div class="box-tools pull-right">
						<button class="btn btn-box-tool" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
					</div>
					<br> <br>

					<!-- form search -->
					<form class="form-inline" role="form">
						<!-- course -->
						<div class="form-group">
							<div class="input-group" style="width: 230px">
								<div class="input-group-addon"
									style="color: white; background-color: green">
									<span>Course</span>
								</div>
								<select class="form-control" id="courseFilter"
									ng-model="courseFilter">
									<option value="0">Select Course</option>
									<option ng-repeat="c in student_course" value=""></option>
								</select>
							</div>
							<!-- /.input group -->
						</div>
						<div class="form-group">
							<div class="form-inline">
								<div class="input-group">
									<input type="hidden" id="stu_id">
									<!--value="%=((Student) session.getAttribute("stu")).getStu_id()%>"-->

									<div class="input-group-btn">
										<button type="button" class="btn btn-warning" id="btn-preview">Print</button>
									</div>
								</div>
							</div>
						</div>
					</form>

					<!-- end form search -->
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
						<iframe id="box-preview"> </iframe>
					</div>
				</div>
			</div>
			<!-- end staff list --> </section>

			<section class="col-lg-12 connectedSortable ui-sortable"> <!-- staff -->
			<div class="box box-success">
				<div class="box-header ui-sortable-handle" style="cursor: move;">
					<i class="fa fa-book"></i>
					<h3 class="box-title">Certificate</h3>
					<div class="box-tools pull-right">
						<button class="btn btn-box-tool" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
					</div>
					<br> <br>
					<!-- form search -->
					<div class="form-inline">
						<!-- course -->
						<div class="form-group">
							<div class="input-group" style="width: 230px">
								<div class="input-group-addon"
									style="color: white; background-color: green">
									<span>Course</span>
								</div>
								<select class="form-control" id="courseFilter_"
									ng-model="courseFilter_">
									<option value="0">Select Course</option>
									<option ng-repeat="c in student_course" value="{{c.cou_id}}">{{c.cou_name}}</option>
								</select>
							</div>
							<!-- /.input group -->
						</div>
						<div class="form-group">
							<div class="form-inline">
								<div class="input-group">
									<div class="input-group-btn">
										<button type="button" class="btn btn-warning"
											id="btn-preview_">Print</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">
						<iframe id="box-preview_"> </iframe>
					</div>
				</div>
			</div>
			<!-- end staff list --> </section>
		</div>
		</section>
	</div>
	<div>
		<jsp:include page="../include/footer.jsp" />
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footDashboard.jsp" />
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script type="text/javascript">
		$(function() {

			//Initialize Select2 Elements
			$(".select2").select2();

			// hide iframe
			$("#box-preview").hide();
			$("#box-preview_").hide();

			$('#btn-preview').on('click', function() {
				preview();
			});

			$('#btn-preview_').on('click', function() {
				preview_();
			});
		});

		function preview() {
			
			if($('#courseFilter').val()==0){
				swal("Error!", "Please select a valid course!",
				"error");	
				return;
			}
			
			$("#box-preview").show();
			$("#box-preview").attr("src",
					"StudentTranscript.pdf?id=" + $('#stu_id').val()+ "&cou_id=" + $('#courseFilter').val());
		}

		function preview_() {
			if($('#courseFilter_').val()==0){
				swal("Error!", "Please select a valid course!",
				"error");	
				return;
			}
			
			$("#box-preview_").show();
			$("#box-preview_").attr(
					"src",
					"StudentCertificate.pdf?id=" + $('#stu_id').val()
							+ "&cou_id=" + $('#courseFilter_').val());
		}
		function(){}
		
</script>
</body>
</html>