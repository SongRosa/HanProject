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