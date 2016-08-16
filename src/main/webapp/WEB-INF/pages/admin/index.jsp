<div class="hold-transition skin-green sidebar-mini">
	<!-- <div class="wrapper"> -->
	<header class="main-header">
		<!-- Logo -->
		<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>S</b>M</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>School</b>Management</span>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span>
			</a>

			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<li><a href="#" data-toggle="control-sidebar"><i
							class="fa fa-frown-o" aria-hidden="true"></i></i> Heng MengTang</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel ">
				<div class="pull-left image ">
					<img src="${pageContext.request.contextPath}/resources/images/DashboardLogo.png" class="img-circle" alt="Image" style="height:25px; width:25px; margin-right:0px">
				</div>
				<div class="pull-left info" style="margin-left:0px">
					<p>HRD Management System</p>
				</div>
			</div>
			<!-- search form -->
			<form action="#" method="get" class="sidebar-form">
				<div class="input-group">
					<input type="text" name="q" class="form-control"
						placeholder="Search..."> <span class="input-group-btn">
						<button type="submit" name="search" id="search-btn"
							class="btn btn-flat">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</form>

			<!-- /.search form -->
			<!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu">
				<li class="active treeview"><a href="dashboard"> <i
						class="fa fa-dashboard"></i><span>Dashboard</span>
				</a></li>
				<li class="treeview"><a href="#"> <i class="fa fa-graduation-cap"></i>
						<span>Students</span> <span class="label label-primary pull-right"></span>
						<i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu" style="display: none;">
						<li><a href="register"><i class="fa fa-circle-o"></i>
								Student Register</a></li>
						<li><a href="student-list"><i class="fa fa-circle-o"></i>
								Student List</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
						<span>Study Management</span> <span
						class="label label-primary pull-right"></span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu" style="display: none;">
						<li><a href="generation"><i class="fa fa-circle-o"></i>
								Generation</a></li>
						<li><a href="course"><i class="fa fa-circle-o"></i>
								Course</a></li>
						<li><a href="class"><i class="fa fa-circle-o"></i> Class</a></li>
						<li><a href="subject"><i class="fa fa-circle-o"></i>
								Subject</a></li>
					</ul></li>
				<li><a href="staff"> <i class="fa fa-user"></i> <span>Staff</span>
				</a></li>
				<li class="treeview"><a href="#"> <i class="fa fa-pencil-square-o"></i>
						<span>Enroll</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li class="active"><a href="student-enroll"> <i
								class="fa fa-circle-o"></i> Student Enroll
						</a></li>
						<li><a href="instructor-enroll"><i class="fa fa-circle-o"></i>
								Instructor Enroll</a></li>
					</ul></li>
				<li class="treeview"><a href="monthly-result"> <i class="fa fa-list-alt"></i>
						<span>Monthly Result</span>
				</a></li>
				<li class="treeview"><a href="#"> <i class="fa fa-book"></i>
						<span>Documentation</span>
				</a></li>
			</ul>
		</section>
	</aside>
</div>
</div>
