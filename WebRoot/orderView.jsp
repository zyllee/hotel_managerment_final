<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Bean.orderViewBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单视图</title>
    
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
   <h1>订单视图</h1>
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
    	<tr>
    		<th bgcolor="#FFFFFF">订单号</th>
    		<th bgcolor="#FFFFFF">订单状态</th>
    		<th bgcolor="#FFFFFF">客户姓名</th>
    		<th bgcolor="#FFFFFF">房间号</th>
    		<th bgcolor="#FFFFFF">房间类型</th>
    		<th bgcolor="#FFFFFF">预定时间</th>
    		<th bgcolor="#FFFFFF">入住时间</th>
    		<th bgcolor="#FFFFFF">退房时间</th>
    		<th bgcolor="#FFFFFF">顾客电话号码</th>
    		<th bgcolor="#FFFFFF">总金额</th>
    	</tr>
		<%
			List<orderViewBean> list = (List<orderViewBean>) request.getAttribute("list");
			if(list == null || list.size() <  1){
				out.print("<tr><td bgcolor='#FFFFFF' colspan='5'>没有任何信息</td></tr>");
			}else{
				for(orderViewBean e: list){
					
		%>
		<tr align="center">
			<td bgcolor="#FFFFFF"><%=e.getOrderNumber()%></td>
			<td bgcolor="#FFFFFF"><%=e.getOrderStatus()%></td>
			<td bgcolor="#FFFFFF"><%=e.getCustomerName()%></td>
			<td bgcolor="#FFFFFF"><%=e.getRoomNumber()%></td>
			<td bgcolor="#FFFFFF"><%=e.getRoomType()%></td>
			<td bgcolor="#FFFFFF"><%=e.getOrderTime()%></td>
			<td bgcolor="#FFFFFF"><%=e.getCheckInTime()%></td>
			<td bgcolor="#FFFFFF"><%=e.getCheckOutTime()%></td>
			<td bgcolor="#FFFFFF"><%=e.getCustomerPhoneNumber()%></td>
			<td bgcolor="#FFFFFF"><%=e.getTotalMoney()%></td>
		</tr>
		<%
			}
		}
		 %>	
    </table>
    <a href="showView.jsp">返回视图查询</a>
  </body>
</html>
