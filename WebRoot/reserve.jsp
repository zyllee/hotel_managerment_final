<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>预订</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery.js"></script>
  </head>
  
  <body>
    <form>
        <ul class = "selectTime">
            <li>入住时间:<input type = "date" name = "checkInTime"></li>
            <li>离开时间:<input type = "date" name = "checkOutTime"></li>
            <input type="button" value="确定">
    </form>
    <form>
        渲染位置
    </form>
    <form>
    	<ul class="ul">
    		<li>身份证号：<input type = "text" name = "customerIDCard"></li>
    		<li>性别:男<input type = "radio" name = "customerGender" value = "男" checked>女<input type = "radio" name = "customerGender" value = "女"></li>
    		<li>姓名：<input type = "text" name = "customerName" ></li>
    		<li>备注：<input type = "text" name = "remarks" ></li>
    		<!-- <li><input type = "button" value = "提交"><input type = "reset" value = "重置"> -->
    	</ul>
    </form>
    
    <script>
    	$(function(){
    		var $submit = $("input[type=button]");
            var checkInTime = $("input[name=checkInTime]");
            var checkOutTime = $("input[name=checkOutTime]");
    		console.log($submit);
    		$submit.on('click',function(){
    			$.ajax({
    				url:'SearchByTime',
    				type:'post',
    				dataType:'json',
    				data:{
    					'checkInTime':checkInTime,
                        'checkOutTime':checkOutTime
    				},
    				success:function(data){
    					console.log(data);
    				}
    			});
    		});
    		
    		
    	});
    </script>
  </body>
</html>
