<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>视图</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  
  <body>
  	<h1>视图</h1>
  	<form action="FindViewServlet" method="post">
  	查询种类:收入视图<input type="radio" name="viewType" value="incomeView"><br>
  			订单视图<input type="radio" name="viewType" value="orderView"><br>
  			房间信息视图<input type = "radio" name="viewType" value="roomInfoView"><br>
  			续费视图<input type="radio" name="viewType" value="timeExtensionOrdersView"><br>
  	<input type="submit" value="提交">
  	</form>
  </body>
</html>
