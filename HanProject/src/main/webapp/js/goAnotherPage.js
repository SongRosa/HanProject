$(function(){
		$("#pageName").change(function(){
			var parkNum = $(":selected").attr("value");
			
			window.location = "directionPage.do?parkNum="+parkNum;
		});
});