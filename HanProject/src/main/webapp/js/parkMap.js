var lat;
var lon;
var oMap;
var oPoint;
var tempNum = $("#tempNum").attr("value");
var buttonNum;
var parkNum;
var clickCount = 0;
var info_clicked = 0;
var parking_clicked=0; 
var lending_clicked=0; 
var drinking_clicked=0;
var police_clicked=0;
var oMarker;

$(document).ready(function() {
	parkNum = $("#parkNum").attr("value");
	
	if(tempNum == 0){/*
		$.loadDb();*/
	}
	
	lat = 37.5878709;
	lon = 126.8150663;
	
	oPoint = new nhn.api.map.LatLng(lat, lon);
	
	$.makeMap(oPoint);
	$.makeMarker(oPoint);	
});


$(function(){	
	$("#information").click(function(){
		buttonNum = $(this).val();
		$.checkClicked();
		
		$(".1").each(function(){		
			lat = $(this).attr("value");
			lon = $(this).attr("title");
			oPoint = new nhn.api.map.LatLng(lat, lon);
			$.makeMarker(oPoint);	
		//	$.changeLocation(oPoint);	
		});
	});
});

$(function(){
	$("#parking").click(function(){
		buttonNum = $(this).val();
		$.checkClicked();
		
		$(".2").each(function(){		
			lat = $(this).attr("value");
			lon = $(this).attr("title");
			oPoint = new nhn.api.map.LatLng(lat, lon);
			$.makeMarker(oPoint);	
			$.changeLocation(oPoint);	
		});
	});
});

$(function(){
	$("#lending").click(function(){
		buttonNum = $(this).val();
		$.checkClicked();
		
		$(".3").each(function(){		
			lat = $(this).attr("value");
			lon = $(this).attr("title");
			oPoint = new nhn.api.map.LatLng(lat, lon);
			$.makeMarker(oPoint);	
			$.changeLocation(oPoint);	
		});
	});
});

$(function(){
	$("#drinking").click(function(){
		buttonNum = $(this).val();
		$.checkClicked();
		
		$(".4").each(function(){		
			lat = $(this).attr("value");
			lon = $(this).attr("title");
			oPoint = new nhn.api.map.LatLng(lat, lon);
			$.makeMarker(oPoint);	
			$.changeLocation(oPoint);	
		});
	});
});

$(function(){
	$("#police").click(function(){	
		buttonNum = $(this).val();
		$.checkClicked();

		lat = 37.5540732;
		lon = 126.8964669;
		oPoint = new nhn.api.map.LatLng(lat, lon);
		$.makeMarker(oPoint);	
		$.changeLocation(oPoint);	
	});
});

$(function(){
	$("#view_btn li").mouseenter(function(){
		buttonNum = $(this).val();
		
		$(this).find("img").attr("src","mapIcons/mapIcons"+buttonNum+"_clicked.png");
	});	
	
	$("#view_btn li").mouseleave(function(){
		buttonNum = $(this).val();
		
		$(this).find("img").attr("src","mapIcons/mapIcons"+buttonNum+".png");
	});	
});

$.makeMap = function (oPoint) {
	                    
	nhn.api.map.setDefaultPoint('LatLng');                        
	oMap = new nhn.api.map.Map('view_maps' ,{                                               
		point : oPoint,                                                
		zoom : 12,                                                
		enableWheelZoom : true,                                                
		enableDragPan : true,                                                
		enableDblClickZoom : false,                                                
		mapMode : 0,                                                
		activateTrafficMap : false,                                                
		activateBicycleMap : false,                                                
		minMaxLevel : [ 1, 14 ],                                                
		size : new nhn.api.map.Size(800, 500)                                        
	});
	
    var mapZoom = new nhn.api.map.ZoomControl(); // - 줌 컨트롤 선언                        
    mapZoom.setPosition({left:10, bottom:10}); // - 줌 컨트롤 위치 지정                        
    oMap.addControl(mapZoom); // - 줌 컨트롤 추가.
}

$.changeLocation = function (oPoint){
	oMap.setCenter(oPoint);
}

$.makeMarker = function(oPoint) {
	var markerCount = 0;                                                
	var oSize = new nhn.api.map.Size(28, 37);                        
	var oOffset = new nhn.api.map.Size(14, 37);                        
	var oIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);                                                
	oMarker = new nhn.api.map.Marker(oIcon); 
    oMarker.setPoint(oPoint);
    oMap.addOverlay(oMarker);     // - 지도에 추가.     
}

$.loadDb = function(){
	window.location="facility_search.do?parkNum="+parkNum;	
}

$.checkClicked = function(){
	
	if(buttonNum == 1){	
		$.changeButton();
		$("#mapicons1").attr("src", "mapIcons/mapIcons1_clicked.png");
	}else if (buttonNum == 2) {
		$.changeButton();
		$("#mapicons2").attr("src", "mapIcons/mapIcons2_clicked.png");
	}else if (buttonNum == 3) {
		$.changeButton();
		$("#mapicons3").attr("src", "mapIcons/mapIcons3_clicked.png");
	}else if (buttonNum == 4) {
		$.changeButton();
		$("#mapicons4").attr("src", "mapIcons/mapIcons4_clicked.png");
	}else if (buttonNum == 5) {
		$.changeButton();
		$("#mapicons5").attr("src", "mapIcons/mapIcons5_clicked.png");
	}

	oMarker.setVisible(false);	
}

$.changeButton = function() {
	for(var i=1; i<6; i++){
		$("#mapicons"+i).attr("src", "mapIcons/mapIcons"+i+".png");
	}	
}