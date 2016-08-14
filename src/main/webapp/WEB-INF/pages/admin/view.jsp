<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>School Management</title>
<jsp:include page="../include/headView.jsp"/>
</head>

<!-- Modal Center Screen -->
 <style>
.modal {
  text-align: center;
  padding: 0!important;
}

.modal:before {
  content: '';
  display: inline-block;
  height: 100%;
  vertical-align: middle;
  margin-right: -4px;
}

.modal-dialog {
  display: inline-block;
  text-align: left;
  vertical-align: middle;
}
</style>
 <style>
	.modal-header, h4, .close {
      background-color: #26A69A;
      color:white !important;
      text-align: center;
      font-size: 30px;
	}
	.modal-footer {
      background-color: #FAFAFA;
 	}

</style> 
</head>
<body>

	<!-- Modal Check -->
	<div class="container">

		<!-- Modal -->
		<div class="modal fade" id="check" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 5px 30px;">
						<h4>Check Position</h4>
					</div>
					<div class="modal-body" style="padding: 30px 50px;">
						<form role="form">
							<div class="form-group">
								<label for="usrname"><span
									class="glyphicon glyphicon-user"></span> Username</label> <input
									type="text" class="form-control" id="usrname"
									placeholder="Enter email" name="name">
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-earphone"></span> Phone</label> <input
									type="text" class="form-control" id="phone"
									placeholder="Enter password" name="phone">
							</div>
						
						</form>
					</div>
					<div class="modal-footer" style="padding: 10px 20px;">
							<button type="submit"
								class="btn btn-danger btn-default pull-right"
								data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary pull-right" data-dismiss="modal" data-toggle="modal" href="#lost" data-target="#register">Check</button>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- End Check Modal -->
	
<!-- Modal For Set User and Password -->
 <div class="container">
 
  <!-- Modal -->
  <div class="modal fade" id="register" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:10px 20px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><i class="fa fa-registered" aria-hidden="true" style="font-size:34px;""></i> Register</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter username">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Re-Enter Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter re- enter password">
            </div>
        </div>
        <div class="modal-footer" style="padding: 10px 20px;">
         	<button type="submit"
								class="btn btn-danger btn-default pull-right"
								data-dismiss="modal">Cancel</button>
			<button type="submit" class="btn btn-primary pull-right" data-dismiss="modal" data-toggle="modal" href="#lost" data-target="#register" name="register">Submit</button>
					
        </div>
      </div>
      
    </div>
  </div>
</div>
<!-- End Modal -->
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>

<body>
	<h1>hello</h1>
	<div class="navbar navbar-inverse navbar-fixed-top " id="menu">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img class="logo-custom" src="${pageContext.request.contextPath }/resources/assets/img/logo.png" alt=""  /></a>
            </div>
            <div class="navbar-collapse collapse move-me">
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse"
                id="bs-example-navbar-collapse-1">
                  <form id="defaultForm" method="post" action="javascript:;">
                    <ul class="nav navbar-nav navbar-right">

                      <li><a> <label style="color: white; margin-top: 8px;">Email:</label>
                      </a></li>
                      <li><a> <input type="email" class="form-control"
                      placeholder="Enter email" name="usrname" id="usrname" />
                      </a></li>
                      <li><a> <label style="color: white; margin-top: 8px;">Password:</label>
                      </a></li>
                      <li><a> <input type="password" class="form-control"
                      placeholder="Enter password" name="password" id="psw" />
                      </a></li>
                      <li>

                      <a class="btn btn-info" style="top: 21px;padding: 8px;">Sign
                      In</a>
                      <a href="#" class="btn btn-info" style="top:-17px;padding: 8px;left:80px"  data-toggle="modal" data-target="#check">Sign Up</a>

                      </li>

                    </ul>
                  </form>
                </div>
              <!-- /.navbar-collapse -->
            </div>
           
        </div>
    </div>
      <!--NAVBAR SECTION END-->
       <div class="home-sec" id="home" >
           <div class="overlay" style="opacity:0.7">
            <div class="container">
           <div class="row text-center " >
           
               <div class="col-lg-12  col-md-12 col-sm-12">
               
                <div class="flexslider set-flexi" id="main-section" >
                    <ul class="slides move-me">
                        <!-- Slider 01 -->
                        <li>     
                          <h3>មជ្ឈមណ្ឌលកូរ៉េ សហ្វវែរ អេច អ ឌី</h3>
                          <h1></h1>
                        </li>  
                        <!-- End Slider 01 -->
                        
                        <!-- Slider 02 -->
                        <li>
                           <h3>4th GENERATION</h3>
                           <h1></h1>
                        </li>
                        <!-- End Slider 02 -->
                        
                        <!-- Slider 03 -->
                        <li>
                           <h3>ដំណឹងអាហារូបករណ៍ IT ចំនួន ៨០ កន្លែង! </h3>
                           <h1></h1>
                        </li>
                        <!-- End Slider 03 -->
                    </ul>
                </div>
                   
            </div>
                
               </div>
                </div>
           </div>
           
       </div>
       <!--HOME SECTION END-->   
    <div  class="tag-line" >
      <div class="container">
        <div class="row  text-center" >
          <div class="col-lg-12  col-md-12 col-sm-12">      
            <h2 data-scroll-reveal="enter from the bottom after 0.1s" >
              <i class="fa fa-circle-o-notch"></i> 
                The Best Software Expert Training Center in Cambodia
              <i class="fa fa-circle-o-notch"></i></h2>
               We provide the best opportunities for IT major students to become global SW experts with the highest quality training programs. All courses are free of charge. Furthermore, we provide a bridge for graduated students to the global SW job market. Please join our center for a bright future!
          </div>
        </div>
      </div>    
    </div>
    <!--HOME SECTION TAG LINE END-->   
      <div id="features-sec" class="container set-pad" >
        <div class="row text-center">
          <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
            <h1 data-scroll-reveal="enter from the bottom after 0.2s"  class="header-line">WHAT OUR TRAINING INCLUDE</h1>     
          </div>
        </div>
    <!--/.HEADER LINE END-->
        <div class="row" >
          <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s">
            <div class="about-div">
              <i class="fa fa-lightbulb-o fa-4x icon-round-border" ></i>
              <h3 >Java Programming</h3>
              <hr />
              <hr />
              <p >
                Learn OOP Concept, J2SE (JDBC), J2EE (Servlet, JSP) and MVC pattern.        
              </p>
            </div>
          </div>
          <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.5s">
            <div class="about-div">
              <i class="fa fa-database fa-4x icon-round-border" ></i>
              <h3 >Database Management</h3>
              <hr />
              <hr />
              <p >
                Learn database concept and perform several projects with popular DBMSs such as Oracle, PostgreSQL, and MySQL.     
              </p>
            </div>
          </div>
          <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.6s">
            <div class="about-div">
              <i class="fa fa-pencil fa-4x icon-round-border" ></i>
              <h3 >Web Design</h3>
              <hr />
              <hr />
              <p >
                Learn the latest design trend and perform web and mobile design project by using Photoshop and Illustrator.    
              </p>
            </div> 
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.4s">
            <div class="about-div">
              <i class="fa fa-globe fa-4x icon-round-border" ></i>
              <h3 >Web Development</h3>
              <hr />
              <hr />
              <p >
                Learn front-end web technologies of HTML, CSS, Java Script, jQuery, AJAX, and JSON.     
              </p>
            </div>
          </div>
          <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.5s">
            <div class="about-div">
              <i class="fa fa-mobile fa-4x icon-round-border" ></i>
              <h3 >Mobile Development</h3>
              <hr />
              <hr />
              <p >
                Learn most popular mobile application development platform and perform mobile application projects.     
              </p>
            </div>
          </div>
          <div class="col-lg-4  col-md-4 col-sm-4" data-scroll-reveal="enter from the bottom after 0.6s">
            <div class="about-div">
              <i class="fa fa-search fa-4x icon-round-border" ></i>
              <h3 >New Technology</h3>
              <hr />
              <hr />
              <p >
                There are other up-to-date SW technologies to learn.    
              </p>
            </div> 
          </div>
        </div>
   <!-- FEATURES SECTION END-->
    <div id="faculty-sec" >
      <div class="container set-pad">
        <div class="row text-center">
          <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
            <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line">OUR VISION  </h1>
            <p data-scroll-reveal="enter from the bottom after 0.3s">
             To be the top 1 IT Tower in Cambodia
            </p>
          </div>
        </div>
        <!--/.HEADER LINE END-->
        <div class="row" >         
          <div class="col-lg-6  col-md-6 col-sm-6" data-scroll-reveal="enter from the bottom after 0.4s">
            <div class="faculty-div">
              <h3 >OUR MISSION</h3>
              <hr />
              <h4><i class="fa fa-check" ></i>  To provide high quality IT training, and job opportunity <br />
              <i class="fa fa-check" ></i>  To develop SW technologies in Cambodia</h4>
            </div>
          </div>
          <div class="col-lg-6  col-md-6 col-sm-6" data-scroll-reveal="enter from the bottom after 0.6s">
            <div class="faculty-div">
              <img src="${pageContext.request.contextPath }/resources/assets/img/about-us.png" class="about-us">
            </div>
          </div>         
        </div>
      </div>
    <!-- FACULTY SECTION END-->
      <div id="contact-sec"   >
        <div class="overlay">
          <div class="container set-pad">
            <div class="row text-center">
                <div class="col-lg-8 col-lg-offset-2 col-md-8 col-sm-8 col-md-offset-2 col-sm-offset-2">
                  <h1 data-scroll-reveal="enter from the bottom after 0.1s" class="header-line" >OUR PARTNERS  </h1>
                  <p data-scroll-reveal="enter from the bottom after 0.3s">
                    We cooperate with many local and international partners such as KOSIGN Co., Ltd, government, and universities for mutual improvement.
                  </p>
                </div>
            </div>
          </div>
        <!--.HEADER LINE END-->
          <div class="row set-row-pad"  data-scroll-reveal="enter from the bottom after 0.1s" >
            <div class="col-lg-2 col-md-2 col-sm-2">
              <span><img src="${pageContext.request.contextPath }/resources/assets/img/anhlab.png" class="img"></span>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
              <span><img src="${pageContext.request.contextPath }/resources/assets/img/koica.png" class="img"></span>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
              <span><img src="${pageContext.request.contextPath }/resources/assets/img/ckcc.png" class="img"></span>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
              <span><img src="${pageContext.request.contextPath }/resources/assets/img/Rsupport.png" class="img"></span>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
              <span><img src="${pageContext.request.contextPath }/resources/assets/img/kosign-1.png" class="img"></span>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
              <span><img src="${pageContext.request.contextPath }/resources/assets/img/webcash.png" class="img"></span>
            </div>
          </div>
        </div>
      </div>
    <!--.LOCATION SOCIAL BLOCK-->
    <div class="container bg">
      <div class="row set-row-pad"  >
        <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1 " data-scroll-reveal="enter from the bottom after 0.4s">
          <h2 ><strong>ABOUT US </strong></h2>
          <hr />
          <div ">
            <p data-scroll-reveal="enter from the bottom after 0.3s">
                Korea Software HRD Center is an IT academy for training SW professionals established by Korea International Cooperation Agency (KOICA) and Webcash Co., Ltd in April, 2013. Our mission is to train SW experts, provide job opportunities for them, and improve SW technologies in Cambodia.
            </p>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4   col-lg-offset-1 col-md-offset-1 col-sm-offset-1" data-scroll-reveal="enter from the bottom after 0.4s">
          <h2 ><strong>CONTACT US</strong></h2>
          <hr />
          <div >
            <p data-scroll-reveal="enter from the bottom after 0.3s">
                Address: #12, St 323, Sangkat Boeung Kak II, KhanToul Kork, Phnom Penh, Cambodia.
                Tel:   (855)23 99 13 14
                (855)77 77 12 36 (Khmer, English)
                (855)15 4 5555 2 (Khmer, English)
                (855)17 52 81 69(Korean, English)<br/>
                <a href="#">Email: info.kshrd@gmail.com</a>
                <a href="#">phirum.gm@gmail.com</a>
            </p>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Model -->
   <!--  <div id="check" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			Sign up
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h3 class="modal-title ">Operation</h3>
		      </div>
		      <div class="modal-body form-horizontal">
		        <div class="form-group">
				    <label  class="col-sm-2 control-label " style="color:black">Name:</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="Name" placeholder="Input Name" ng-model="name" required>
				    </div>
				  </div>
				<div class="form-group">
				    <label for="Age" class="col-sm-2 control-label black">Age: </label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" name="age" placeholder="Input age" ng-model="age" ng-pattern="/^[0-9]{9,10}$/" required>
				    </div>
 			 	</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-success" data-dismiss="modal" ng-click="add()" ng-disabled="!name ||  !age || name.$invalid ">Sumbit</button>
		      </div>
		    </div>

  		  </div>
		</div>
     CONTACT SECTION END
    <div id="footer">
        <div class="row">
          <div class="col-lg-9 col-md-9 col-sm-9">
            &copy 2014 Korea Software HRD Center. All right reserved.
          </div>
          <div class="col-lg-3 col-md-3 col-sm-3" style="  text-align: right;">
            <a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
            <a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>
            <a href="#"><i class="fa fa-twitter-square fa-2x"></i></a>
            <a href="#"> <i class="fa fa-youtube fa-2x"></i></a>
          </div>
      </div>   
    </div> -->
     <!-- FOOTER SECTION END-->
   
    <!--  Jquery Core Script -->
    <script src="${pageContext.request.contextPath }/resources/jquery/jquery/jquery.js"></script>
    <!--  Core Bootstrap Script -->
    <script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.js"></script>
    <!--  Flexslider Scripts --> 
         <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.flexslider.js"></script>
     <!--  Scrolling Reveal Script -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/scrollReveal.js"></script>
    <!--  Scroll Scripts --> 
    <script src="${pageContext.request.contextPath }/resources/assets/js/jquery.easing.min.js"></script>
    <!--  Custom Scripts --> 
         <script src="${pageContext.request.contextPath }/resources/assets/js/custom.js"></script>

</body>
</html>