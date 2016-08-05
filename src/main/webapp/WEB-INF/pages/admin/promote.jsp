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
  <jsp:include page="../include/headGeneration.jsp"/>
  <jsp:include page="../include/headDashboard.jsp"/>
</head>
<body>

<!-- index is menu -->
<jsp:include page="index.jsp"/>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper boxcontent" >
	<section class="content-header">
	<h1>
		Study <small>Management</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
				Home</a></li>
		<li><a href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>Student
				Management</a></li>
		<li><small>Promote</small></li>
	</ol>
	</section>
	<!-- Main content -->
	<section class="content">

	<div class="container-fluid"
		style="border: 2px solid green; background-color: #e0f2f2">
		<div class="row">
			<h1 style="text-align:center">Promotion</h1>
			<form role="form">
			  <div class="form-group col-md-12 col-sm-12 col-xs-12">
			    <label for="username">Username</label>
			    <input type="text" class="form-control" id="promoUsername">
			    <span id="validateUser"></span>
			  </div>
			  <div class="form-group col-md-12 col-sm-12 col-xs-12">
			    <label for="pwd">Password</label>
			    <input type="password" class="form-control" id="promoPassword">
			  </div>
			  <div class="form-group col-md-12 col-sm-12 col-xs-12">
			    <select>
			    	<option>Admin</option>
			    	<option>Staff</option>
			    </select>
			  </div>
			  <div style="margin-bottom:10px; float:right; margin-right:10px">
			  <button type="submit" class="btn btn-success" id="btn-promote">Promote</button>
			  <button type="submit" class="btn btn-danger">Cancel</button>
			  </div>
			</form>
		</div>
		</div>
	</div>
</div>
	<!-- End page --> </section>
	<!-- End Main content -->
	<!-- /.content-wrapper -->
<div>
	<jsp:include page="../include/footer.jsp"/>
</div>
	<!--Add Script-->
</script>
<jsp:include page="../include/footDashboard.jsp"/>
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
	<!--End Script-->
	</div>
</body>
</html>