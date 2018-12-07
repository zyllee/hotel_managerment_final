<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welcome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/welcome.css">
  <script type="text/javascript" src="js/jquery.js"></script>
  </head>
  
  <body>
    
   <jsp:include page="banner.jsp"></jsp:include>

	

    <!-- <a href="reserve.jsp">预订</a>
    <a href="arrive.jsp">入住</a>
    <a href="leave.jsp">退房</a>
    <a href="timeExtension.jsp">续费</a> -->
  </body>
</html>
