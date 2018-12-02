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
    <form action="addBook.jsp" method = "post" onsubmit = "return check(this)">
    	<ul>
    		<li>图书名称:<input type = "text" name = "name"></li>
    		<li>价&nbsp;&nbsp;&nbsp;&nbsp;格:<input type = "text" name = "price"></li>
    		<li>数&nbsp;&nbsp;&nbsp;&nbsp;量:<input type = "text" name = "amount"></li>
    		<li>作&nbsp;&nbsp;&nbsp;&nbsp;者:<input type = "text" name = "author"></li>
    		<li><input type= "submit" value = "添 加"></li>
    	</ul>
    </form>
  </body>
</html>
