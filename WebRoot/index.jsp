<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>旅店管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <link rel="stylesheet" href="css/style.css">
  <script type="text/javascript" src="js/jquery.js"></script>
  </head>
  
  <body>
    <form>
      <div id="particles-js">
      <div class="login">
        <div class='error'>您的用户名或者密码不正确,请重新输入</div>
        <div class="login-top">
          登录
        </div>
        <div class="login-center clearfix">
          <div class="login-center-img"><img src="img/name.png"/></div>
          <div class="login-center-input">
            <input type="text" name="user" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
            <div class="login-center-input-text">用户名</div>
          </div>
        </div>
        <div class="login-center clearfix">
          <div class="login-center-img"><img src="img/password.png"/></div>
          <div class="login-center-input">
            <input type="password" name="pwd" value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
            <div class="login-center-input-text">密码</div>
          </div>
        </div>
        <div class="login-button">
          登录
        </div>
      </div>
      <div class="sk-rotating-plane"></div>
    </div>
    </form>
  <script src="js/particles.min.js"></script>
  <script src="js/app.js"></script>
  <script type="text/javascript" src="js/login.js"></script>
  </body>
</html>
