<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <form action="checkinServlet" method = "post" onsubmit = "return check(this)">
    	<ul>
    		
    		<li>房间号：<input type = "text" name = "roomNumber"></li>
    		<li>身份证号：<input type = "text" name = "customerIDCard"></li>
    		<li>性别:男<input type = "radio" name = "customerGender" value = "男" checked>女<input type = "radio" name = "customerGender" value = "女"></li>
    		<li>姓名：<input type = "text" name = "customerName" ></li>
    		<li>备注：<input type = "text" name = "remarks" ></li>
    		<li><input type = "submit" value = "提交"><input type = "reset" value = "重置">
    	</ul>
    </form>
  </body>
</html>
