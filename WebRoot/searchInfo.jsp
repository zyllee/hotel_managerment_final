<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <style>
        * {
      padding: 0;
      margin: 0;
    }
    
    .container {
      width: 100%;
      height: 50px;
      position: relative;
      margin: 0 auto;
      display: flex;
      flex-direction: row;
      justify-content: space-around;
      align-items: center;
      cursor: pointer;
      background: purple;
      color: white;
    }
    .pay_list_c1 {
      width: 24px;
      height: 18px;
      float: left;
      padding-top: 3px;
      cursor: pointer;
      text-align: center;
      margin-right: 10px;
      background-image: url(img/inputradio.gif);
      background-repeat: no-repeat;
      background-position: -24px 0;
    }
    .radioclass {
      opacity: 0;
      cursor: pointer;
    }
    .on {
      background-position: 0 0;
    }
    .items span:first-child {
      float: left;
      font-size: 15px;
      margin-top: -1px;
    }
    
    .search-button{
      width: 500px;
      height: 45px;
      background: white;
      border-radius: 50px;
      left: 50%;
      top: 30%;
      transform: translate(-50%,30%);
      border: 1px solid gray;
      position: relative;
      cursor: pointer;
    }
    .search-button input {
      width: 90%;
      height: 100%;
      outline: none;
      border: none;
      border-radius: 50px;
      font-size: 20px;
      margin: 0 auto;
      display: block;
      line-height: 45px;
    }
    #body {
      background: rgba(128, 0, 128, .1);
    }

  </style>
    <script type="text/javascript" src="js/jquery.js"></script>
</head>

<body id="body">
    <div class="container">
        <div class="items">
          <span>姓名</span>
            <span class="pay_list_c1 on">
        <input type="radio" value="customerName" class="radioclass">
      </span>
        </div>
        <div class="items">
          <span>房间号</span>
            <span class="pay_list_c1">
        <input type="radio" value="roomNumber" class="radioclass">
      </span>
        </div>
        <div class="items">
          <span>房间类型</span>
            <span class="pay_list_c1">
        <input type="radio"  value="roomType" class="radioclass">
      </span>
        </div>
        <div class="items">
          <span>预订时间</span>
            <span class="pay_list_c1">
        <input type="radio"  value="orderTime" class="radioclass">
      </span>
        </div>
        <div class="items">
          <span>入住时间</span>
            <span class="pay_list_c1">
        <input type="radio"  value="checkInTime" class="radioclass">
      </span>
        </div>
        <div class="items">
          <span>退房时间</span>
            <span class="pay_list_c1">
        <input type="radio" value="checkOutTime" class="radioclass">
      </span>
        </div>
        <div class="items">
          <span>联系方式</span>
            <span class="pay_list_c1">
        <input type="radio"  value="customerPhoneNumber" class="radioclass">
      </span>
        </div>
        <div class="items">
          <span>总金额</span>
            <span class="pay_list_c1">
        <input type="radio" value="totalMoney" class="radioclass">
      </span>
        </div>
    </div>

    <div class="search-button">
      <input type="text" id="search" placeholder="">
    </div>
</body>
<script type="text/javascript">
  $(function() {
    var $search = $("#search");
    var inputValue,selectValue = "customerName";
    window.onload = function (){
      init();
      getData();
    }
    function init(){
      $search.attr('placeholder', '请输入姓名');
      $(".pay_list_c1").on("click", function() {
          selectValue = $(this).find('input').val();
            $(this).addClass("on").parents('.items').siblings('.items').find('.pay_list_c1').removeClass("on");
            var $placeholderContent = $(this).siblings('span').text();
            console.log($placeholderContent);
            $search.attr('placeholder', "请输入" + $placeholderContent);
        });
    }
    function getData(){
      $search.on('input', function(event) {
        inputValue = $(this).val();
        throttle(processGet);
      });
    }
    function throttle(method, context) {
        context = context || window;
        //用tId清除定时器
        clearTimeout(method.tId);
        //然后继续产生这个定时器
        method.tId = setTimeout(function() {
            //让执行上下文(这里是window)调用一下method ===>即这里的proccess
            method.call(context); //相当于window.proccess();
        }, 800);
    }
    function processGet(){
      if(inputValue == ""){
        return;
      }
      if(inputValue == "checkOutTime" || inputValue == "checkInTime") {
        inputValue = changeDate(inputValue);
      } 
      console.log(selectValue);
      console.log(inputValue);
      $.ajax({
        url: 'SearchInfoServlet',
        type: 'get',
        dataType: 'json',
        data: {
          'orderProperty': selectValue,
          'SearchInfo': encodeURI(inputValue)
        }
      })
      .done(function(data) {
        processData(data);
      })
      .fail(function(e) {
        console.log(e.status);
      })
    }
    function changeDate(inputValue){
      var date = inputValue.split('-');
      return date[0] + "-" + (date[1] < 10 ? "0" + date[1] : date[1] ) + "-" + (date[2] < 10 ? "0" + date[2] : date[2] );
    }
    function processData(data) {
        console.log(data);
        
    }
  });
</script>

</html>