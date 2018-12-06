$(function() {
  var $login = $(".login-button");
  var timer;
  $login.on('click', function(event) {
    login();
  });
  
  function login() {
    var $user = $("input[name=user]").val();
    var $pwd = $("input[name=pwd]").val();
    $.ajax({
        url: 'loginServlet',
        type: 'post',
        dataType: 'text',
        data: {
          'user': $user,
          'pwd': $pwd
        }
      })
      .done(function(data) {
        if($.trim(data) == "false") {
          clearInterval(timer);
          $(".login").show();
          $(".login").removeClass('active');
          $(".sk-rotating-plane").removeClass('active')
          $(".error").stop().fadeIn(2000).fadeOut(2000);
          return;
        }
        console.log(data);
        window.location = "welcome.jsp";
      })
      .fail(function(e) {
        console.log(e.status);
      })
  }
});