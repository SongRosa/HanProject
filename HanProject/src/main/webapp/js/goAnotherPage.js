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

$(function() {
	$("#go_board").click(function () {
		var parkNum = $(":button").attr("value");
		
		window.location = "board_list.do?parkNum="+parkNum;
	});
});

