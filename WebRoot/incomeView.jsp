<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Bean.incomeViewBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>收入视图</title>
    
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
  	<h1>收入视图</h1>
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
    	<tr>
    		<th bgcolor="#FFFFFF">退房时间</th>
    		<th bgcolor="#FFFFFF">总价</th>
    		<th bgcolor="#FFFFFF">订单个数</th>
    	</tr>
		<%
			List<incomeViewBean> list = (List<incomeViewBean>) request.getAttribute("list");
			if(list == null || list.size() <  1){
				out.print("<tr><td bgcolor='#FFFFFF' colspan='5'>没有任何信息</td></tr>");
			}else{
				for(incomeViewBean e: list){
					
		%>
		<tr align="center">
			<td bgcolor="#FFFFFF"><%=e.getCheckOutTime()%></td>
			<td bgcolor="#FFFFFF"><%=e.getTotalIncome()%></td>
			<td bgcolor="#FFFFFF"><%=e.getNum()%></td>
		</tr>
		<%
			}
		}
		 %>	
    </table>
    <a href="showView.jsp">返回视图查询</a>
  </body>
</html>
