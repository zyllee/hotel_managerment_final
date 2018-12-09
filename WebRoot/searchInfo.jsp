<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索</title>
    
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
    <h1>搜索</h1>
    <!-- 按类别：<br>
    		姓名<input type="radio" name="orderProperty" value="customerName"><br>
			房间号<input type="radio" name="orderProperty" value="roomNumber"><br>
			房间类型<input type="radio" name="orderProperty" value="roomType"><br>
			预订时间<input type="radio" name="orderProperty" value="orderTime"><br>
			入住时间<input type="radio" name="orderProperty" value="checkInTime"><br>
			退房时间<input type="radio" name="orderProperty" value="checkOutTime"><br>
			联系方式<input type="radio" name="orderProperty" value="customerPhoneNumber"><br>
			总金额<input type="radio" name="orderProperty" value="totalMoney"><br> -->
  按类型：
      <input type="text" name="orderProperty"><br>
	查询内容：<input type="text" name="SearchInfo">
			<input type="button" name="submitSearchInfo" value="确定">
  </body>
  <script>
          $(function(){
            var $submitSearchInfo = $("input[name=submitSearchInfo]");
            $submitSearchInfo.on('click', function() {
              var orderProperty = $("input[name=orderProperty]").val();
              var SearchInfo = $("input[name=SearchInfo]").val();
              console.log(orderProperty);
              console.log(SearchInfo);
              $.ajax({
                  url:'SearchInfoServlet',
                  type:'post',
                  dataType:'json',
                  data: {
                    'orderProperty':orderProperty,
                    'SearchInfo':SearchInfo
                  },
                  success:function(data){
                      console.log(data);
                  } 
                });
            });
          });		
  </script>
</html>
