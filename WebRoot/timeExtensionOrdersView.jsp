<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="Bean.timeExtensionOrdersViewBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>续费订单视图</title>
    
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
  <h1>续费订单视图</h1>
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
    	<tr>
    		<th bgcolor="#FFFFFF">订单号</th>
    		<th bgcolor="#FFFFFF">客户姓名</th>
    		<th bgcolor="#FFFFFF">联系电话</th>
    		<th bgcolor="#FFFFFF">房间号</th>
    		<th bgcolor="#FFFFFF">入住时间</th>
    		<th bgcolor="#FFFFFF">前到期时间</th>
    		<th bgcolor="#FFFFFF">现到期时间</th>
    		<th bgcolor="#FFFFFF">加钱数目</th>
    	</tr>
		<%
			List<timeExtensionOrdersViewBean> list = (List<timeExtensionOrdersViewBean>) request.getAttribute("list");
			if(list == null || list.size() <  1){
				out.print("<tr><td bgcolor='#FFFFFF' colspan='5'>没有任何信息</td></tr>");
			}else{
				for(timeExtensionOrdersViewBean e: list){
					
		%>
		<tr align="center">
			<td bgcolor="#FFFFFF"><%=e.getOrderNumber()%></td>
			<td bgcolor="#FFFFFF"><%=e.getCustomerName()%></td>
			<td bgcolor="#FFFFFF"><%=e.getCustomerPhoneNumber()%></td>
			<td bgcolor="#FFFFFF"><%=e.getRoomNumber() %></td>
			<td bgcolor="#FFFFFF"><%=e.getCheckInTime() %></td>
			<td bgcolor="#FFFFFF"><%=e.getOldExpiryDate() %></td>
			<td bgcolor="#FFFFFF"><%=e.getNewExpiryDate() %></td>
			<td bgcolor="#FFFFFF"><%=e.getAddMoney() %></td>
		</tr>
		<%
			}
		}
		 %>	
    </table>
    <a href="showView.jsp">返回视图查询</a>
  </body>
</html>
