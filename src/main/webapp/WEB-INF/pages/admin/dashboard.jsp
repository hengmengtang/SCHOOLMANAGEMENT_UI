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
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <!-- <link rel="stylesheet" type="text/css" href="./bootstrap/css/custom.css"> -->
</head>
<body>
	 <section class="content-header">
      <h1>
        Dashboard
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content-->
    <section class="content">
      <div class="row" style="margin: 0px;">
          <div class="small-box" style="background-color: #e0f2f2;">
            <div class="inner">
              <div class="row">
                <div class="col-md-2">
                  <img src="${pageContext.request.contextPath }/resources/images\logo.png" class="logodash">
                </div>
                <div class="col-md-10" style="color: black;">
                  <b>#12, St 323, Sangkat Boeung Kak II, Khan Toul Kork, Phnom Penh<br/>
                  Tel:(855)23 99 13 14, Fax(855)23 99 14 15<br/>
                  Email: info.kshrd@gmail.com, phirum gm@gmail.com<br/>
                  Website: www.kshrd.com.kh, 
                  Facebook:facebook.com/ksignhrd</b>
                </div>
              </div>
            </div>
          </div>
      </div> 
      <!--dashboard calander-->
      <div class="row">

        <div class="col-md-8">
          <div class="small-box bg-aqua">
            <div class="inner bgcolor">
              <iframe src="${pageContext.request.contextPath }/resources/calender/calendar.html" style="border: 0" width="100%" height="600" frameborder="0" scrolling="no"></iframe>
            </div>  
          </div>
        </div>

        <div class="col-md-4 bgcolor" style="width: 32%;">
          <h5>Student summary</h5>        
          <hr style="height:2px; background:#e0f2f2">
          <!-- Generation 1 -->
          <div class="row">

            <div class="col-md-3 left">
              <div class="small-box bg-aqua lineleft">
                <div class="inner innerheight">    
                  <h2>1<sup>st</sup></h2>
                </div>
              </div>
            </div>

            <div class="col-md-9 rightst"> 
              <div class="small-box bg-aqua" style="background: #FF5722 !important;">
                <div class="inner ">    
                    1<sup>st</sup> GENERATION <p>56</p>
                    <div class="progress">
                      <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                        60%
                      </div>
                    </div>
                    <ul class="nav nav-pills" role="tablist">
                      <li role="presentation"><a href="#">Male<span class="badge">50</span></a></li>
                      <li role="presentation"><a href="#">Female<span class="badge">6</span></a></li>
                    </ul>
                </div>
              </div>
            </div>

          </div>
        <!-- End Generation 1 -->
        <!-- Start Generation 2 -->
          <div class="row">
            <div class="col-md-3 left">
              <div class="small-box bg-aqua lineleft">
                <div class="inner innerheight">    
                  <h2>2<sup>nd</sup></h2>
                </div>
              </div>
            </div>
            <div class="col-md-9 rightst"> 
              <div class="small-box bg-aqua" style="background: #FF7043 !important;">
                <div class="inner ">    
                  2<sup>nd</sup> GENERATION <p>56</p>
                    <div class="progress">
                      <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                        60%
                      </div>
                    </div>
                    <ul class="nav nav-pills" role="tablist">
                      <li role="presentation"><a href="#">Male<span class="badge">50</span></a></li>
                      <li role="presentation"><a href="#">Female<span class="badge">6</span></a></li>
                    </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- End Generation 2 -->
          <!-- Start Generation 3 -->
          <div class="row">
            <div class="col-md-3 left">
              <div class="small-box bg-aqua lineleft">
                <div class="inner innerheight">    
                  <h2>3<sup>rd</sup></h2>
                </div>
              </div>
            </div>
            <div class="col-md-9 rightst"> 
              <div class="small-box bg-aqua " style="background: #FF8A65 !important">
                <div class="inner ">    
                  3<sup>rd</sup> GENERATION <p>56</p>
                    <div class="progress">
                      <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                        60%
                      </div>
                    </div>
                    <ul class="nav nav-pills" role="tablist">
                      <li role="presentation"><a href="#">Male<span class="badge">50</span></a></li>
                      <li role="presentation"><a href="#">Female<span class="badge">6</span></a></li>
                    </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- End Generation 3 -->
          <!-- Start Generation 4 -->
          <div class="row">
            <div class="col-md-3 left">
              <div class="small-box bg-aqua lineleft">
                <div class="inner innerheight">    
                  <h2>4<sup>th</sup></h2>
                </div>
              </div>
            </div>
            <div class="col-md-9 rightst"> 
              <div class="small-box bg-aqua" style="background: #69F0AE !important">
                <div class="inner ">    
                  4<sup>th</sup> GENERATION <p>56</p>
                    <div class="progress">
                      <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                        60%
                      </div>
                    </div>
                    <ul class="nav nav-pills" role="tablist">
                      <li role="presentation"><a href="#">Male<span class="badge">50</span></a></li>
                      <li role="presentation"><a href="#">Female<span class="badge">6</span></a></li>
                    </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- End Generation 4 -->
        </div>
        <!-- Generation Summary -->
      </div>
      <!-- End Calendar -->
    </section>
<!-- /.content-wrapper -->

<!-- jQuery 2.2.0 -->
<script src="${pageContext.request.contextPath }/resources/plugins/jQuery/jQuery-2.2.0.min.js">
	
</script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="${pageContext.request.contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath }/resources/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="${pageContext.request.contextPath }/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath }/resources/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="${pageContext.request.contextPath }/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath }/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath }/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath }/resources/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath }/resources/dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${pageContext.request.contextPath }/resources/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath }/resources/dist/js/demo.js"></script>
</body>
</html>