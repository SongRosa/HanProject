var lat;
var lon;
var oMap;
var oPoint;
var tempNum = $("#tempNum").attr("value");
var buttonNum;
var parkNum;
var clickCount = 0;

$(document).ready(function() {
	parkNum = $("#parkNum").attr("value");
	
	if(tempNum == 0){
		$.loadDb();
	}
	
	lat = 37.5878709;
	lon = 126.8150663;
	
	oPoint = new nhn.api.map.LatLng(lat, lon);
	
	$.makeMap(oPoint);
	$.makeMarker(oPoint);	
});


$(function(){	
	$("#information").click(function(){
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
			lat = 37.5540732;
			lon = 126.8964669;
			oPoint = new nhn.api.map.LatLng(lat, lon);
			$.makeMarker(oPoint);	
			$.changeLocation(oPoint);	
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
	var oMarker = new nhn.api.map.Marker(oIcon, { title : '마커타이틀' }); 
    oMarker.setPoint(oPoint);
    oMap.addOverlay(oMarker);     // - 지도에 추가.     
}

$.loadDb = function(){
	window.location="facility_search.do?parkNum="+parkNum;	
}