
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>续费</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery.js"></script>
  </head>
  <body>
    <h1>续费</h1>
    	续费房间号：<input type="text" name="roomNumber"><br>
    	续费天数：<input type="text" name="addDay"><br>
    <input type="button" name="getPrice" value="确认">
 	<input type="button" name = "submitTimeExtension" value="提交">
  </body>
  <script>
          $(function(){
            var $getPrice = $("input[name=getPrice]");
            var $submitTimeExtension = $("input[name=submitTimeExtension]");
            var addMoney;
            var orderNumber;
            var oldExpiryTime;
            var newExpiryTime;
            var roomNumber;
            $getPrice.on('click', function() {
            	var addDay = $("input[name=addDay]").val();
            	roomNumber = $("input[name=roomNumber]").val();
	            console.log(addDay);
	            console.log(roomNumber);
	              $.ajax({
	                  url:'getPriceServlet',
	                  type:'post',
	                  dataType:'json',
	                  data: {
	                    'addDay':addDay,
	                    'roomNumber':roomNumber
	                  },
	                  success:function(data){
	                      console.log(data);
	                      addMoney = data[0].addMoney;
	                      orderNumber = data[0].orderNumber;
	                      oldExpiryTime = data[0].oldExpiryTime;
	                      newExpiryTime = data[0].newExpiryTime;
	                  } 
	                });
	            });
            $submitTimeExtension.on('click', function() {
            	$.ajax({
            		url: 'TimeExtensionServlet',
            		type: 'post',
            		dataType: 'json',
            		data: {
            			'addMoney':addMoney,
            			'orderNumber':orderNumber,
            			'oldExpiryTime':oldExpiryTime,
            			'newExpiryTime':newExpiryTime
            		},
            		success:function(data){
            			console.log("续房成功！");
            		}
            	})
            });
          });   
  </script>
</html>
