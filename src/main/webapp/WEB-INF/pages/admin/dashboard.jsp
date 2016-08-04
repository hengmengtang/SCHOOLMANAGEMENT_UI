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
  <jsp:include page="../include/headDashboard.jsp"/>
</head>
<body>
<!-- index is menu -->
<jsp:include page="index.jsp"/>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" >
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
          <div class="small-box heightlogo" style="background-color: #e0f2f2;">
            <div class="inner">
              <div class="row">
                <div class="col-md-2">
                  <img src="${pageContext.request.contextPath }/resources/images/logo.png" class="logodash">
                </div>
                <div class="col-md-10" style="color: black; text-align: center;">
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
      <!--statistic-->
      <div class="row">

        <div class="col-md-8">
          <div class="small-box bg-aqua">
            
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
			<!-- Generation -->
            <div class="col-md-9 rightst"> 
              <div class="small-box bg-aqua" style="background: #FF5722 !important;">
                <div class="inner ">    
                    1<sup>st</sup> GENERATION &nbsp&nbsp&nbsp&nbsp56
                    <div class="progress" style="margin-top:11px;">
                      <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                        60%
                      </div>
                    </div>
                    <ul class="nav nav-pills" role="tablist">
                      <li role="presentation">Male<span class="badge">50</span></li>
                      <li role="presentation">&nbsp&nbsp&nbsp&nbspFemale<span class="badge">6</span></li>
                    </ul>
                </div>
              </div>
            </div>

          </div>
         <!-- End Generation -->
        </div>
        <!-- Generation Summary -->
      </div>
      <!-- End Calendar -->
    </section>
</div>
<div>
<jsp:include page="../include/footer.jsp"/>
</div>
<!-- /.content-wrapper -->
<jsp:include page="../include/footDashboard.jsp"/>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
</body>
</html>