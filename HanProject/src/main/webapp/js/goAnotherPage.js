$(function(){
		$("#pageName").change(function(){
			var parkNum = $(":selected").attr("value");
			
			window.location = "directionPage.do?parkNum="+parkNum;
		});
});

$(function(){
	$("#map_pageName").change(function(){
		var parkNum = $(":selected").attr("value");
		
		window.location = "mapPage.do?parkNum="+parkNum;
	});
});

$(function() {
	$("#go_direction").click(function (parkNum) {
		var parkNum = $(":button").attr("value");
		
		window.location = "directionPage.do?parkNum="+parkNum;
	});
});

$(function() {
	$("#go_maps").click(function (parkNum) {
		var parkNum = $(":button").attr("value");
		
		window.location = "mapPage.do?parkNum="+parkNum;
	});
});
/* 이건 쩡오빠한테 형식 물어보고 다시 하기..!!
$(function() {
	$("#go_maps").click(function (parkNum) {
		var parkNum = $(":button").attr("value");
		
		window.location = "mapPage.do?parkNum="+parkNum;
	});
});*/