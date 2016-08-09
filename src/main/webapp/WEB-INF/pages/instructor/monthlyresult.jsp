<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HRD Student Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <script src="${pageContext.request.contextPath }/resources/Jquery-new/jquery-2.2.4.js"></script>
 <script src="${pageContext.request.contextPath }/resources/bootstrap/js/jquery.js"></script>
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
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/bootstrap/css/custom.css">
</head>
<body>
  <!-- Content Wrapper. Contains page content -->
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <b>HRD</b> Student Score
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">View Score</li>
      </ol>
    </section>

    <!-- Main content-->
    <div class="container">
    <div class="row">
        <div class="col-md-12 col-xs-6 bg-dafault">
          <div class="small-box bg-aqua">
            <div class="inner" style="background-color: #E0F2F2; border-top: 3px solid green; color: black;">
              <div class="row">
                <div class="col-md-8" style="font-size: 18px;">
                  <i class="fa fa-users" aria-hidden="true"></i>
                  Student Score
                </div>
                <div class="col-md-4">
                  <nav class="page">           
                         <ul class="pagination">
                         <li><a href="#">First</a></li>
                           <li>
                             <a href="#" aria-label="Previous">
                               <span aria-hidden="true">&laquo;</span>
                             </a>
                           </li>
                           <li><a href="#">1</a></li>
                           <li><a href="#">2</a></li>
                           <li><a href="#">3</a></li>
                           <li>
                             <a href="#" aria-label="Next">
                               <span aria-hidden="true">&raquo;</span>
                             </a>
                           </li>
                           <li><a href="#">Last</a></li>
                         </ul>
                       </nav>
                </div>
              </div>
              <!-- Start Selection -->
              <div class="row">
              <div class="col-md-1">
              <div>
                <span>
                  <i class="fa fa-align-justify" style="font-size: 32px;"></i>
                </span>
                <select style="height: 30px; margin-left: 35px; margin-top: -32px; width:40px;">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
              </div>  
              </div>
              <!-- End Selection --> 
              <div class="col-md-2">
                <!--  <button class="btn btn-success" style="height: 30px;">Generation</button>-->
                <label id="generation" style="font-size:20px">Generation</label>
              </div>
              <!--Search Location-->
              <div class="col-md-2">
             <div class="input-group" style="margin-left: -80px;">
                <span class="input-group-addon" id="basic-addon1" style=" background-color: #00A65A;">Course
                </span>
                <select style="width: 140px; height: 30px;">
                	<option>Basic</option>
                	<option>Advance</option>
                </select>
             </div>
              </div>
              <div class="col-md-2">
             <div class="input-group" style="margin-left:-60px;">
                <span class="input-group-addon" id="basic-addon1" style=" background-color: #00A65A;">Class
                </span>
                <select style="width: 140px; height: 30px;">
                	<option>Battambang</option>
                	<option>Phnom Penh</option>
                	<option>Siem Reap</option>
                	<option>Kampongsom</option>
                </select>
             </div>
              </div>
              <div class="col-md-2">
              <div class="input-group"  style="margin-left:-40px;">
              <span class="input-group-addon" id="basic-addon1" style=" background-color: #00A65A; ">Start Date
                </span>
             <input type="date" placeholder="Select start date here"  style="height:30px;">
             </div>
              </div>
              <div class="col-md-2">
              <div class="input-group">
              <span class="input-group-addon" id="basic-addon1" style=" background-color: #00A65A;">End Date
                </span>
             <input type="date" placeholder="Select end date here"  style="height:30px;">
             </div>
              </div>
             </div>
             <!-- End Selection --> 
            <!-- Start Add Score Table Here-->    
            <div style="margin-top: 20px; id="addScoreTable">
              <table class="table">
                <thead>
                  <tr style="font-size: 16px;">
                    <th>N <sup>o</sup></th>
                    <th>Student&#x2191;&#x2193;</th>
                    <th>Class&#x2191;&#x2193;</th>
                    <th>Korean&#x2191;&#x2193;</th>
                    <th>Web&#x2191;&#x2193;</th>
                    <th>Java&#x2191;&#x2193;</th>
                      <th>Total Score&#x2191;&#x2193;</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Sam Ol Sam On</td>
                    <td>Battambang</td>
                    <td>100</td>
                    <td>100</td>
                    <td>100</td>
                    <td>100</td>
                  </tr>
                  <tr>
                    <td>1</td>
                    <td>Sam Ol Sam On</td>
                    <td>Battambang</td>
                    <td>100</td>
                    <td>100</td>
                    <td>100</td>
                    <td>100</td>
                  </tr>
                </tbody> 
              </table>
              	<input type="submit" value="Print" class="btn btn-success" style="margin-left:1000px" onclick="window.print()">
             	<input type="submit" value="Export" class="btn btn-danger" style="float:right">
            </div>  
            <!-- End Add Score Table Here -->  
            </div>
          </div>
        </div>           
      </div>
      </div>
      
 
  <!-- /.content-wrapper -->
  
<!-- jQuery 2.2.0 -->
<script src="${pageContext.request.contextPath }/resources/jquery/jquery-ui/jquery-ui.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/jquery/jquery-ui/jquery-ui.min.css">
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
<!--End Script-->
<!-- Custom Jquery Start Here!-->
<script src="${pageContext.request.contextPath }/resources/assets/js/custom.js"></script>
</body>
</html>