$(function() {
	window.onload = function() {
		init();
		searchBtn();
		getTime();
		setInterval(getTime, 1000);
	}

	var $time = $("#banner .banner-time");
	var $search = $("#banner .search");
	var $btn = $("#banner .btn");


	//初始化事件
	function init() {
		$search.on('click', function(event) {
			event.preventDefault();
			$("#banner .btn .searchBtn").stop(true, true).slideUp(400);
			$("#banner .search .searchBtn").stop(true, true).slideToggle(400);
		});
		$btn.on('click', function(event) {
			event.preventDefault();
			$("#banner .search .searchBtn").stop(true, true).slideUp(400);
			$("#banner .btn .searchBtn").stop(true, true).slideToggle(400);
		});
	}
	//获取系统当前时间
	function getTime() {
		var date = new Date();
		var time = date.toString().split(" ");
		var formatTime = time[3] + "年" + (date.getMonth() + 1) + "月" + time[2] + "日" + time[4];
		$time.text(formatTime);
	}
	//点击菜单栏 跳转相应的页面
	function searchBtn() {
		var $searchBtn = $("#banner .searchBtn");
		$searchBtn.on('click', '.content', function(event) {
			var className = $(this).attr('class');
			console.log(className);
			var page = className.split(' ')[1];
			var $iframe = $("#iframe");
			console.log(page);
			$iframe.attr('src', page + ".jsp");
		});
	}
});