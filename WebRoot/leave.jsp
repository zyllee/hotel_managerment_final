<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>退房</title>
    
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
	<h1>退房</h1>
	顾客身份证号：<input type = "text" name = "customerIDCard">
	<input type="button" name="leaveSumbit" value="确定">
  <h1>需要渲染更改用户信息</h1>
  </body>
  <script>
          $(function(){
            var $submitID = $("input[name=leaveSumbit]");
            
            $submitID.on('click', function() {
              var customerIDCard = $("input[name=customerIDCard]").get(0).value;
              console.log(customerIDCard);
              $.ajax({
                  url:'leaveServlet',
                  type:'post',
                  dataType:'json',
                  data: {
                    'customerIDCard':customerIDCard
                  },
                  success:function(data){
                      console.log(data);
                  } 
                });
            });
          });		
  </script>
</html>
