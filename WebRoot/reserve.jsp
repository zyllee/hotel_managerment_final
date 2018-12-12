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
            <input type="button" value="确定" id="time">
    </form>
    <form>
        渲染位置
    </form>
    <form>
    	<ul>
    		<li>身份证号：<input type = "text" name = "customerIDCard"></li>
    		<li>性别:男<input type = "radio" name = "customerGender" value = "男" checked>  女<input type = "radio" name = "customerGender" value = "女"></li>
    		<li>姓名：<input type = "text" name = "customerName" ></li>
            <li>电话号码：<input type="text" name="customerPhoneNumber"></li>
    		<li>备注：<input type = "text" name = "remarks" ></li>
    		<li><input type = "button" value = "提交" id="info"><input type = "reset" value = "重置"> 
    	</ul>
    </form>
    
    <script>
    	$(function(){
    		var $submitTime = $("#time");//提交时间查看空房间
            var $submitInfo = $("#info");//提交个人信息插入orders和customers
            var checkInTime = $("input[name=checkInTime]");//入住时间
            var checkOutTime = $("input[name=checkOutTime]");//离开时间
            var customerIDCard;//身份证号
            var customerGender;//性别
            var customerName;//姓名
            var customerPhoneNumber;//电话号码
            var remarks;//备注
            var checkInDate;//转格式后储存的变量
            var checkOutDate;//转格式后储存的变量
            var roomNumber;//房间号
            var price;//价格
            var roomUrl;//房间图片
            //转换格式（日期->字符串），以便插入数据库
            checkInTime.on('change', function(event) {
                event.preventDefault();
                checkInDate = $(this).val();
                console.log(checkInDate);
            });
            //转换格式（日期->字符串），以便插入数据库
            checkOutTime.on('change', function(event) {
                event.preventDefault();
                checkOutDate = $(this).val();
                console.log(checkOutDate);
            });
            // console.log(checkInTime);
            //提交查询的该时间范围内空房
    		$submitTime.on('click',function(){
    			//console.log(checkInTime);
    			$.ajax({
    				url:'SearchByTime',
    				type:'post',
    				dataType:'json',
    				data:{
    					'checkInTime':checkInDate,
                        'checkOutTime':checkOutDate
    				},
    				success:function(data){
    					// console.log(data);
    				    price = data[0].price;
                        roomNumber =data[0].roomNumber;
                        console.log(roomNumber);
                        console.log(price);
                    }
    			});
    		});
            //提交个人数据插入表格
            $submitInfo.on('click', function() {
                customerIDCard = $("input[name=customerIDCard]").val();//身份证号
                customerGender = $("input[name=customerGender]").val();//性别
                customerName = $("input[name=customerName]").val();//姓名
                customerPhoneNumber = $("input[name=customerPhoneNumber]").val();//电话号码
                remarks = $("input[name=remarks]").val();//备注
                console.log(customerIDCard);
                console.log(customerGender);
                console.log(customerName);
                console.log(customerPhoneNumber);
                console.log(remarks);
                $.ajax({
                    url: 'checkinServlet',
                    type: 'post',
                    dataType: 'text',
                    data: {
                        'checkInTime':checkInDate,
                        'checkOutTime':checkOutDate,
                        'customerIDCard':customerIDCard,
                        'customerGender':customerGender,
                        'customerName':customerName,
                        'customerPhoneNumber':customerPhoneNumber,
                        'remarks':remarks,
                        'price':price,
                        'roomNumber':roomNumber
                    },
                    success:function(data){
                        console.log(data);
                    }
                })
            });
    	});
    </script>
  </body>
</html>
