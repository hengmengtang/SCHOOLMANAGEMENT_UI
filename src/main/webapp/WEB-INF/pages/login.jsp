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
<jsp:include page="include/headView.jsp" />
<script src="${pageContext.request.contextPath }/resources/jquery/jquery/jquery-2.2.4.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<jsp:include page="include/sweetalert.jsp" />
<!-- Modal Center Screen -->
<style>
.modal {
	text-align: center;
	padding: 0 !important;
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
	color: white !important;
	text-align: center;
	font-size: 30px;
}

.modal-footer {
	background-color: #FAFAFA;
}

li h3 {
	font-family: Khmer OS Muol Light;
	font-size: 36px;
}
</style>
</head>
<body>
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>
	<div class="navbar navbar-inverse navbar-fixed-top " id="menu">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img class="logo-custom"
					src="${pageContext.request.contextPath }/resources/assets/img/logo.png"
					alt="" /></a>
			</div>
			<div class="navbar-collapse collapse move-me">
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<form method="post" id="frmLogin">
						<ul class="nav navbar-nav navbar-right">

							<li><a> <label style="color: white; margin-top: 8px;">Email:</label>
							</a></li>
							<li><a> <input type="text" class="form-control"
									placeholder="Enter username" name="username" id="username" />
							</a></li>
							<li><a> <label style="color: white; margin-top: 8px;">Password:</label>
							</a></li>
							<li><a><input type="password" class="form-control"
									placeholder="Enter password" name="password" id="password" /> </a></li>
							<li>
								<a><input type="submit" id="btLog" class="btn btn-default" value="Login"></a> 
							</li>
							<li>
								<a href="#"  class="btn btn-info" style="top: 22px; padding: 6px;" data-toggle="modal" data-target="#register">Sign Up</a>
							</li>
						</ul>
					</form>
				</div>
				<!-- /.navbar-collapse -->
			</div>
		</div>
	</div>
	<!--NAVBAR SECTION END-->
	<div class="home-sec" id="home">
		<div class="overlay" style="opacity: 0.7">
			<div class="container">
				<div class="row text-center ">

					<div class="col-lg-12  col-md-12 col-sm-12">

						<div class="flexslider set-flexi" id="main-section">
							<ul class="slides move-me" style="margin-top: 100px">
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
									<h3>ដំណឹងអាហារូបករណ៍ IT ចំនួន ៨០ កន្លែង!</h3>
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
	<div class="tag-line">
		<div class="container">
			<div class="row  text-center">
				<div class="col-lg-12  col-md-12 col-sm-12">
					<h2 data-scroll-reveal="enter from the bottom after 0.1s">
						<i class="fa fa-circle-o-notch"></i> The Best Software Expert
						Training Center in Cambodia <i class="fa fa-circle-o-notch"></i>
					</h2>
					We provide the best opportunities for IT major students to become
					global SW experts with the highest quality training programs. All
					courses are free of charge. Furthermore, we provide a bridge for
					graduated students to the global SW job market. Please join our
					center for a bright future!
				</div>
			</div>
		</div>
	</div>
	
<!--  Jquery Core Script -->
<script
	src="${pageContext.request.contextPath }/resources/jquery/jquery/jquery.js"></script>
<!--  Core Bootstrap Script -->
<script
	src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.js"></script>
<!--  Flexslider Scripts -->
<script
	src="${pageContext.request.contextPath }/resources/assets/js/jquery.flexslider.js"></script>
<!--  Scrolling Reveal Script -->
<script
	src="${pageContext.request.contextPath }/resources/assets/js/scrollReveal.js"></script>
<!--  Scroll Scripts -->
<script
	src="${pageContext.request.contextPath }/resources/assets/js/jquery.easing.min.js"></script>
				<!--  Custom Scripts -->
<script src="${pageContext.request.contextPath }/resources/assets/js/custom.js"></script>
	
<script>
$(document).ready(function(){
    $("#frmLogin").submit(function(e){
    	e.preventDefault();
  		  $.ajax({
	            url: "${pageContext.request.contextPath}/login",
	            type: "POST",
	            data: $("#frmLogin").serialize(),
	            success: function(data) {
	            	if(data == "User account is locked"){
	            	}else if(data == "User is disabled"){
	            		swal("LOGIN FAILED!", data, "error");
	            	}else if(data == "Bad credentials"){
	            		swal("LOGIN FAILED!", data, "error");
	            	}else{
	            		swal({   
	          			title: "LOGIN SUCCESSFULLY!",   
	          			text: "THANK YOU",   
	          			type: "success",   
	          			confirmButtonColor: "#007d3d",   
						closeOnConfirm: false,   
	          			closeOnCancel: false }, 
	          			function(isConfirm){   
	          				if(isConfirm) {     				
	          					window.location.href="${pageContext.request.contextPath}/" + data;
	          				}else {     
	          					swal("Cancelled", "Your imaginary file is safe :)", "error");   
	          				} 
	          			}); 
  		  
	            	}
	            },
	         	error: function(data){
	         	}
  		  });
    });
    
	$('#re_pwd').on('keyup',function(){
    	 var password = $("#pwd").val();
         var confirmPassword = $("#re_pwd").val();
         if (password != confirmPassword){
    	   $(this).tooltip({'trigger':'focus','placement': 'bottom'});
    	   $(this).trigger('focusin');

    	 }
         else{
        	 $(this).tooltip("hide");
         }
    });
	
	 $("#frmRegister").submit(function(e){
		e.preventDefault();
		var ursname = $('#usrname').val();
		var email = $('#email').val();
		var password = $('#pwd').val();
		
		if( password == $('#re_pwd').val()){
			if(ursname != "" && ursname != null && password != "" && password !=null && email != "" && email != null){
				$.ajax({
				    url: 'http://localhost:2222/api/user/register-user',
				    dataType: 'json',
				    type: 'post',
				    contentType: 'application/json',
				    data: JSON.stringify( { "EMAIL": email, "PASSWORD": password, "USERNAME" : ursname } ),
				    processData: false,
				    success: function( data, textStatus, jQxhr ){
				    	if(data.CODE == 406){
							sweetAlert(
									  'not available...',
									  'You are not student in KSHRD Center! sorry,..',
									  'error'
									)
						}
						else{
							swal({
							     title: 'Congratulation!',
							     text: 'You register successfully.',
							     type: 'success',
							     },
							     function () {
							    	 $("#register .close").click()
							 		 clearInputControll();
							     });
						} 
				    },
				    error: function( jqXhr, textStatus, errorThrown ){
				        console.log( errorThrown );
				    }
				});
			}
		}else{
			$(this).tooltip({'trigger':'focus','placement': 'bottom'});
	    	$(this).trigger('focusin');
		}
		
	}); 
	
	function clearInputControll(){
		$('#usrname').val("");
		$('#pwd').val('');
		$('#re_pwd').val('');
		$('#email').val('');
	}
});
	
</script>
<!-- Modal For Set User and Password -->
	<div class="container">
		<!-- Modal -->
		<div class="modal fade" id="register" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 10px 20px;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<i class="fa fa-registered" aria-hidden="true"
								style="font-size: 34px;""></i> Register
						</h4>
					</div>
					<div class="modal-body" style="padding: 40px 50px;">
						<form id="frmRegister">
							<div class="form-group">
								<label for="usrname"><span
									class="glyphicon glyphicon-user"></span> Username</label> <input
									type="text" class="form-control" id="usrname"
									placeholder="Enter username" required ng-click="click()">
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span> Password</label> <input
									type="password" class="form-control" id="pwd" required
									placeholder="Enter password" minlength="8" maxlength="8" name="pwd">
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span> Re-Enter Password</label>
								<input type="password" class="form-control" id="re_pwd" name="pwd" required
									placeholder="Enter re- enter password" minlength="8" maxlength="8"
									data-toggle="tooltip" title="Password you enter doesn't match!">
							</div>
							<div class="form-group">
								<label for="email"><span
									class="glyphicon glyphicon-envelope"></span> Email</label>
								<input type="email" class="form-control" id="email" required
									placeholder="Enter Email">
							</div>
							<div class="modal-footer" style="padding: 10px 20px;">
								<input type="button" class="close"
									class="btn btn-danger btn-default pull-right"
									data-dismiss="modal" style="display:none">
								<input type="button" 
									class="btn btn-danger btn-default pull-right"
									data-dismiss="modal" value="Cancel">
								<input type="submit" class="btn btn-primary pull-right"
									name="register" value="Register">
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>