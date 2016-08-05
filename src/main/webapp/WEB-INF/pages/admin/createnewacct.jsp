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
<div class="content-wrapper" >
	<section class="content-header">
	<h1>
		Study <small>Management</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>
				Home</a></li>
		<li><a href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>Student
				Management</a></li>
		<li><small>Register</small></li>
	</ol>
	</section>
	<!-- Main content -->
	<section class="content">

	<div class="container-fluid"
		style="border: 2px solid green; background-color: #e0f2f2">
		<div class="row">
			<h1 style="text-align:center">Create New Account</h1>
			<form role="form">
				<div class="row">
					<div class="col-xs-12 form-group">
               			<img src="${pageContext.request.contextPath }/resources/images/user.ico" alt="" class="img-circle img-responsive " style="width: 180px; height: 180px; border:1px solid black; float:right; margin-right:10px;"> 
            		</div>
				</div>
			  	<div class="row">
				  <div class="col-xs-6 form-group">
				  	<label for="username">FullName In Khmer</label>
				    <input type="text" class="form-control" placeholder="FullName In Khmer">
				    <label>Gender</label>
				    <select style="margin-top:20px">
				    	<option>Male</option>
				    	<option>Female</option>
				    </select>
				    <label>Status</label>
				    <select style="margin-top:20px">
				    	<option>Single</option>
				    	<option>Married</option>
				    </select>
				    <label>Salary</label>
				    <input type="text" placeholder="salary" style="height:25px; margin-top:20px;">
				  </div>
				  <div class="col-xs-6 form-group">
				  	<label for="username">Fullname In English</label>
				    <input type="text" class="form-control" placeholder="Fullname In English">
				  </div>
			</div>
			 <div class="row">
				  <div class="col-xs-6 form-group">
				  	<label for="username">Date Of Birth</label>
				    <input type="date" class="form-control" placeholder="Date Of Birth">
				  </div>
				  <div class="col-xs-6 form-group">
				  	<label for="username">Place Of Birth</label>
				    <input type="text" class="form-control" placeholder="Place Of Birth">
				  </div>
			</div>
			<div class="row">
				  <div class="col-xs-6 form-group">
				  	<label for="username">Phone</label>
				    <input type="text" class="form-control" placeholder="Phone">
				  </div>
				  <div class="col-xs-6 form-group">
				  	<label for="username">Email</label>
				    <input type="text" class="form-control" placeholder="Email">
				  </div>
			</div>
			<div class="row">
				  <div class="col-xs-6 form-group">
				  	<label for="username">Father Name In Khmer</label>
				    <input type="text" class="form-control" placeholder="Father Name In Khmer">
				  </div>
				  <div class="col-xs-6 form-group">
				  	<label for="username">Father Name In English</label>
				    <input type="text" class="form-control" placeholder="Father Name In English">
				  </div>
			</div>
			<div class="row">
				  <div class="col-xs-6 form-group">
				  	<label for="username">Father's Occupation</label>
				    <input type="text" class="form-control" placeholder="Father's Occupation">
				  </div>
				  <div class="col-xs-6 form-group">
				  	<label for="username">Father's Phone</label>
				    <input type="text" class="form-control" placeholder="Father's Phone">
				  </div>
			</div>
			<div class="row">
				  <div class="col-xs-12 form-group">
				  	<label for="username">Father's Address</label>
				    <input type="text" class="form-control" placeholder="Father's Address">
				  </div>
			</div>
			<div class="row">
				  <div class="col-xs-6 form-group">
				  	<label for="username">Mother Name In Khmer</label>
				    <input type="text" class="form-control" placeholder="Father Name In Khmer">
				  </div>
				  <div class="col-xs-6 form-group">
				  	<label for="username">Mother Name In English</label>
				    <input type="text" class="form-control" placeholder="Father Name In English">
				  </div>
			</div>
			<div class="row">
				  <div class="col-xs-6 form-group">
				  	<label for="username">Mother's Occupation</label>
				    <input type="text" class="form-control" placeholder="Father's Occupation">
				  </div>
				  <div class="col-xs-6 form-group">
				  	<label for="username">Mother's Phone</label>
				    <input type="text" class="form-control" placeholder="Father's Phone">
				  </div>
			</div>
			<div class="row">
				  <div class="col-xs-12 form-group">
				  	<label for="username">Mother's Address</label>
				    <input type="text" class="form-control" placeholder="Father's Address">
				  </div>
			</div>
			<div class="row"  style="float:right; margin-right:10px;">
				  <div class="col-xs-12 form-group">
				  	<input type="submit" value="Register" class="btn btn-success">
				  	<input type="button" value="Cancel" class="btn btn-danger">
				  </div>
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