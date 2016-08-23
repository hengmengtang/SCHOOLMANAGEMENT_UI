<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<style>
	.navbar-login
	{
	    width: 305px;
	    padding: 10px;
	    padding-bottom: 0px;
	}
	
	.navbar-login-session
	{
	    padding: 10px;
	    padding-bottom: 0px;
	    padding-top: 0px;
	}
	
	.icon-size
	{
	    font-size: 87px;
	}
</style>
<div class="hold-transition skin-green sidebar-mini">
	<!-- <div class="wrapper"> -->
	<header class="main-header">
		<!-- Logo -->
		<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<div class="user-panel ">
				<div class="pull-left image ">
					<img src="${pageContext.request.contextPath}/resources/images/DashboardLogo.png" class="img-circle" alt="Image" style="height:25px; width:25px; margin-right:0px">
					<b>KSchool</b>
				</div>
			</div>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span>
			</a>
		<!--------  drop down menu for profile -->
			<div class="row">
				<div class="col-md-11 pull-left">
					<ul class="nav navbar-nav navbar-right">
               			<li class="dropdown">
	                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	                        <span class="glyphicon glyphicon-user"></span> 
	                        <strong>
	                        	 <sec:authorize access="isAuthenticated()">
								   <sec:authentication property="principal.username" /> 
								</sec:authorize>
	                        </strong>
	                        <span class="glyphicon glyphicon-chevron-down"></span>
	                    </a>
	                    	<!-- start sub drop down profile -->
					             <ul class="dropdown-menu">
			                        <li>
			                            <div class="navbar-login">
			                                <div class="row">
			                                    <div class="col-lg-4">
			                                        <p class="text-center">
			                                            <span class="glyphicon glyphicon-user icon-size"></span>
			                                        </p>
			                                    </div>
			                                    <div class="col-lg-8">
			                                        <p class="text-left">
			                                        	<sec:authorize access="isAuthenticated()">
														   <sec:authentication property="principal.username" /> 
														</sec:authorize>
													</p>
			                                        <p class="text-left small">
			                                        	<sec:authorize access="isAuthenticated()">
														   <sec:authentication property="principal.email" /> 
														</sec:authorize>
			                                        </p>
			                                        <p class="text-left">
			                                            <a href="#" class="btn btn-primary btn-block btn-sm">Show Profile</a>
			                                        </p>
			                                    </div>
			                                </div>
			                            </div>
			                        </li>
			                        <li class="divider"></li>
			                        <li>
			                            <div class="navbar-login navbar-login-session">
			                                <div class="row">
			                                    <div class="col-lg-12">
			                                        <p>
			                                            <a href="/logout" class="btn btn-danger btn-block">Logout</a>
			                                        </p>
			                                    </div>
			                                </div>
			                            </div>
			                        </li>
			                    </ul>
		                    <!-- end sub drop down profile -->
                		</li>
            		</ul>
				</div>
			</div>
<!--------  drop menu for profile -->
			<%-- <div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					 <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="${pageContext.request.contextPath}/resources/images/pic1.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Heng MengTang</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="${pageContext.request.contextPath}/resources/images/pic1.jpg" class="img-circle" alt="User Image">

                <p>
                  Heng MengTang - Instructor
                </p>
              </li>
              <!-- Menu Body -->
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
				</ul>
			</div> --%>
		</nav>
	</header>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			
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
				
				<!-- Staff -->
				<!-- <li><a href="staff"> <i class="fa fa-user"></i> <span>Staff</span>
				</a></li> -->
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
				<!-- Documentation: Print Transcript and certificate -->
				<!-- <li class="treeview"><a href="#"> <i class="fa fa-book"></i>
						<span>Documentation</span>
				</a></li> -->
			</ul>
		</section>
	</aside>
</div>
</div>
