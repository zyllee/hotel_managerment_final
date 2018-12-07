<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="//at.alicdn.com/t/font_956203_ih5wqxe2xdg.css">
	<link rel="stylesheet" href="css/banner.css">
  </head>
  
  <body>
    
    <div id="banner">
    	<div class="banner-left fl">
    		<div class="search">
    			<i class="iconfont icon-yewubanli"></i>
    			<span>业务办理</span>
    			<span class="triangle"></span>
    			<div class="content">
	    				<i class="iconfont icon-jiantou"></i>订房
	    		</div>
				<div class="content">
						<i class="iconfont icon-loading2-copy"></i>续费
				</div>
				<div class="content">
						<i class="iconfont icon-jiantou"></i>退房
				</div>
    		</div>
    		<div class="btn">
    			<i class="iconfont icon-chaxun"></i>
    			<span>客房查询</span>
    			<span class="triangle"></span>
    		</div>
    	</div>
    	<div class="banner-right fr">
    		<i class="iconfont icon-member"></i>
    		客房管理员:<%=session.getAttribute("un")%>
    	</div>
		<div class="banner-time">2018年12月7月20:20:20</div>
    </div>


  </body>
  <script type="text/javascript">
  	$(function (){
		var $time = $("#banner .banner-time");
  		getTime();
		setInterval(getTime,1000);
		function getTime(){
			var date = new Date();
			var time = date.toString().split(" ");
			var formatTime = time[3] + "年"  + (date.getMonth() + 1) + "月" + time[2] + "日" + time[4];
			$time.text(formatTime);
		}
  	});
  </script>
</html>
