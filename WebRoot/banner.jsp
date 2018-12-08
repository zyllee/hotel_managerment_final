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
	<link rel="stylesheet" href="//at.alicdn.com/t/font_956203_qa5tpt4r5wh.css">
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
  <script type="text/javascript" src="js/main.js"></script>
</html>
