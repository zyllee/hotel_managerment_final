<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addBook.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:useBean id="book" class = "bookFunction.BookBean"></jsp:useBean>
 <jsp:setProperty property="*" name="book"/>
  <body>
  	<%
  		try{
  			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
  			String url = "jdbc:sqlserver://localhost:1433;Database=hotel_managerment_final";
  			String username = "sa";
  			String password = "123";
  			Connection conn = DriverManager.getConnection(url,username,password);
  			String sql = "insert into book_info(name,price,amount,author) values(?,?,?,?)";
  			PreparedStatement ps = conn.prepareStatement(sql);
  			ps.setString(1,book.getName());
  			ps.setDouble(2,book.getPrice());
  			ps.setInt(3,book.getAmount());
  			ps.setString(4,book.getAuthor());
  			int row = ps.executeUpdate();
  			if(row > 0){
  				out.print("成功添加" + row + "条数据！");
  			}
  			ps.close();
  			conn.close();
  		}catch(Exception e){
  			out.print("加载失败！");
  			e.printStackTrace();
  		}
  		
  	 %>  
  	 <a href="welcome.jsp">返回首页</a>
  </body>
  
</html>
