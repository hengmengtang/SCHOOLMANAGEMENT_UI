<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<jsp:include page="../include/headDashboard.jsp" />
<link
	href="${pageContext.request.contextPath }/resources/style/customStudentList.css"
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
			Student <small>Management</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Student List</li>
		</ol>
		</section>

		<!-- Main content-->
		<section class="content">
		<div class="container-fluid"
			style="border: 2px solid green; background-color: #e0f2f2">
			<div class="row">

				<div class="col-md-2 pull-left" style="font-size: 18px;">
					<i class="fa fa-users" aria-hidden="true"></i> Student List
				</div>

				<div class="col-md-10 pull-right">
					<!-- <nav class="page">       -->
					<ul class="pagination pull-right toptable" style="margin-top: 2px;">
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
			<!-- end pagination(Row 1) -->

			<!-- Start Row 2 -->
			<div class="row">
				<div class="col-md-2 pull-left">
					<div class="input-group pull-left">
						<span class="input-group-addon" style="background-color: green;">
							<i class="fa fa-align-justify"
							style="color: white; font-size: 20px"></i>
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

				<div class="col-md-3 pull-left">
					<div class="input-group pull-left">
						<span class="input-group-addon"
							style="color: white; background-color: green;"> Generation
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
				<div class="col-md-3 pull-left">
					<div class="input-group">
						<span class="input-group-addon" id="basic-addon1"
							style="color: white; background-color: green;"><i
							class="fa fa-search" aria-hidden="true" style="font-size: 20px;"></i>
						</span> <input type="text" class="form-control"
							placeholder="Search Student..."> <span
							class="input-group-btn">
							<button class="btn btn-danger" id="btn-add">Export</button>
						</span>
					</div>
				</div>
			</div>
			<!-- End Search Location-->

			<!-- End Row 2 -->

			<!-- Start Table -->
			<div class="row" style="margin: 0px;">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr style="font-size: 16px;">
								<th>Student ID&#x2191;&#x2193;</th>
								<th>Photo</th>
								<th>Name&#x2191;&#x2193;</th>
								<th>Gender&#x2191;&#x2193;</th>
								<th>Birth Date&#x2191;&#x2193;</th>
								<th>Address&#x2191;&#x2193;</th>
								<th>Telephone&#x2191;&#x2193;</th>
								<th>Email&#x2191;&#x2193;</th>
								<th>Drop&#x2191;&#x2193;</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1001</td>
								<td><i class="fa fa-times" aria-hidden="true"></i></td>
								<td>Sam Ol Sam On</td>
								<td>F</td>
								<td>2016-5-20</td>
								<td>Battambang</td>
								<td>(010) 555-567</td>
								<td>Samon@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td>1020</td>
								<td><i class="fa fa-times" aria-hidden="true"></i></td>
								<td>Chea Phakdey</td>
								<td>M</td>
								<td>2016-5-20</td>
								<td>Phnom Penh</td>
								<td>(010) 123-546</td>
								<td>Phakdey@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td>1025</td>
								<td><i class="fa fa-times" aria-hidden="true"></i></td>
								<td>Him Khemera</td>
								<td>M</td>
								<td>2016-6-12</td>
								<td>Kompot</td>
								<td>(010) 123-546</td>
								<td>Khemera@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>
							</tr>

							<tr>
								<td>1003</td>
								<td><i class="fa fa-times" aria-hidden="true"></i></td>
								<td>Meng Taing</td>
								<td>M</td>
								<td>2016-6-10</td>
								<td>Phnom Penh</td>
								<td>(010) 177-889</td>
								<td>MengTaing@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>
							</tr>
							<tr>
								<td>1005</td>
								<td><i class="fa fa-times" aria-hidden="true"></i></td>
								<td>Sovan Veasna</td>
								<td>M</td>
								<td>2016-6-22</td>
								<td>Phnom Penh</td>
								<td>(010) 899-123</td>
								<td>Sovanveasna@gmail.com</td>
								<td>
									<button type="button" class="btn btn-success">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- End Table(Row 3) -->
			</div>
		</section>
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="../include/footer.jsp" />
	<jsp:include page="../include/footDashboard.jsp" />
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
</body>
</html>