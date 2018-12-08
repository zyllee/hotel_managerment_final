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
	<link rel="stylesheet" href="//at.alicdn.com/t/font_956203_i0r8tc8tce.css">
	<link rel="stylesheet" href="css/banner.css">
  </head>
  
  <body>
    
    <div id="banner">
    	<div class="banner-left fl">
    		<div class="search">
    			<i class="iconfont icon-yewubanli"></i>
    			<span class="word">业务办理</span>
    			<span class="triangle"></span>
    			<div class="searchBtn">
	    			<div class="content">
		    				<i class="iconfont icon-jiantou"></i>
		    				<span>订房</span>
		    		</div>
					<div class="content">
							<i class="iconfont icon-loading2-copy"></i>
							<span>续费</span>
					</div>
					<div class="content">
							<i class="iconfont icon-jiantou-copy"></i>
							<span>退房</span>
					</div>
				</div>
    		</div>
    		<div class="btn">
    			<i class="iconfont icon-chaxun"></i>
    			<span class="word">客房查询</span>
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
		var $search = $("#banner .search");
		$search.on('click', function(event) {
			$("#banner .search .searchBtn").slideToggle(400);
		});
		
		window.onload = function (){
			getTime();
			setInterval(getTime,1000);
		}
  		
		function getTime(){
			var date = new Date();
			var time = date.toString().split(" ");
			var formatTime = time[3] + "年"  + (date.getMonth() + 1) + "月" + time[2] + "日" + time[4];
			$time.text(formatTime);
		}
  	});
  </script>
</html>
