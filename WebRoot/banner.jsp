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
    <!-- 顶部菜单栏 -->
    <div id="banner">
    	<div class="banner-left fl">
    		<div class="search">
    			<i class="iconfont icon-yewubanli"></i>
    			<span class="word">业务办理</span>
    			<span class="triangle"></span>
    			<div class="searchBtn">
	    			<div class="content reserve">
	    				<i class="iconfont icon-jiantou"></i>
	    				<span><a href="javascript:;">订房</a></span>
		    		</div>
					<div class="content timeExtension">
						<i class="iconfont icon-loading2-copy"></i>
						<span><a href="javascript:;">续费</a></span>
					</div>
					<div class="content leave">
						<i class="iconfont icon-jiantou-copy"></i>
						<span><a href="javascript:;">退房</a></span>
					</div>
				</div>
    		</div>
    		<div class="btn">
    			<i class="iconfont icon-chaxun"></i>
    			<span class="word">客房查询</span>
    			<span class="triangle"></span>
    			<div class="searchBtn">
	    			<div class="content reserve">
	    				<i class="iconfont icon-jiantou"></i>
	    				<span><a href="javascript:;">订房</a></span>
		    		</div>
					<div class="content timeExtension">
						<i class="iconfont icon-loading2-copy"></i>
						<span><a href="javascript:;">续费</a></span>
					</div>
					<div class="content leave">
						<i class="iconfont icon-jiantou-copy"></i>
						<span><a href="javascript:;">退房</a></span>
					</div>
				</div>
    		</div>
    	</div>
    	<div class="banner-right fr">
    		<i class="iconfont icon-member"></i>
    		客房管理员:<%=session.getAttribute("un")%>
    	</div>
		<div class="banner-time"></div>
    </div>
  </body>
  <script type="text/javascript">
  	$(function (){
  		window.onload = function (){
			init();
			searchBtn();
			getTime();
			setInterval(getTime,1000);
		}

		var $time = $("#banner .banner-time");
		var $search = $("#banner .search");
		var $btn = $("#banner .btn");


		//初始化事件
		function init(){
			$search.on('click', function(event) {
				event.preventDefault();
				$("#banner .btn .searchBtn").stop(true,true).slideUp(400);
				$("#banner .search .searchBtn").stop(true,true).slideToggle(400);
			});
			$btn.on('click', function(event) {
				event.preventDefault();
				$("#banner .search .searchBtn").stop(true,true).slideUp(400);
				$("#banner .btn .searchBtn").stop(true,true).slideToggle(400);
			});
		}
  		//获取系统当前时间
		function getTime(){
			var date = new Date();
			var time = date.toString().split(" ");
			var formatTime = time[3] + "年"  + (date.getMonth() + 1) + "月" + time[2] + "日" + time[4];
			$time.text(formatTime);
		}
		//点击菜单栏 跳转相应的页面
		function searchBtn(){
			var $searchBtn = $("#banner .searchBtn");
			$searchBtn.on('click','.content',function(event) {
				var className = $(this).attr('class');
				console.log(className);
				var page = className.split(' ')[1];
				var $iframe = $("#iframe"); 
				console.log(page);
				$iframe.attr('src', page + ".jsp");
			});
		}
  	});
  </script>
</html>
