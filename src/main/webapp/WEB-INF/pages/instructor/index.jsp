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
               			<%-- <li class="dropdown">
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
<!--------  drop menu for profile --> --%>
		<!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              
               	 <span class="glyphicon glyphicon-user"></span>
	                        <strong>
	                        	 <sec:authorize access="isAuthenticated()">
								   <sec:authentication property="principal.username" /> 
								</sec:authorize>
	                        </strong>
	                        <i class="fa fa-caret-down" aria-hidden="true"></i>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <!-- <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"> -->
                <p class="text-center">
			       <span class="glyphicon glyphicon-user icon-size"></span>
			    </p>

                <p>
					<sec:authorize access="isAuthenticated()">
							<sec:authentication property="principal.username" />
					</sec:authorize>
					<small>
						<sec:authorize access="isAuthenticated()">
							 <sec:authentication property="principal.email" /> 
						</sec:authorize>
					</small>
                </p>
              </li>
              <!-- Menu Body -->
              <!-- Menu Footer-->
              <li class="user-footer">
                <!-- <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div> -->
                <div class="pull-right">
                  <a href="/logout" class="btn btn-default center">Log out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
			<%-- <div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<li><a href="#" data-toggle="control-sidebar">
						<i class="fa fa-frown-o" aria-hidden="true"></i>
						<!-- Start drowpdown menu -->	
							 <security:authorize access="isAuthenticated()">
							   <security:authentication property="principal.username" /> 
							</security:authorize>
          				<!-- end dropdown menu -->	
					</a></li>
				</ul>
			</div> --%>
		</nav>
	</header>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			
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
				
				<!-- <li ><a href="#"> <i class="fa fa-user"></i>
						<span>My Profile</span>
				</a></li> -->
				<li class="treeview"><a href="add-score"> <i class="fa fa-star-o"></i> <span>Score</span>
					<span class="label label-primary pull-right"></span>	
				</a>	
				<li><a href="monthlyresult"> <i class="fa fa-list-alt"></i>
						<span>Monthly Result</span>
				</a></li>
				
			</ul>
		</section>
	</aside>
</div>
</div>