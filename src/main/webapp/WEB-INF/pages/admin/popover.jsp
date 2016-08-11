<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/popover/bootstrap.min.css">
  <script src="${pageContext.request.contextPath }/resources/popover/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/popover/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
  <h3>Popover Example</h3>
  <a href="#" title="Header" data-toggle="popover" data-content="Some content">Click Me</a><br>
  <a href="#" title="Header" data-toggle="popover" data-trigger="hover" data-content="Some content">Hover over me</a>
</div>
</body>
</html>