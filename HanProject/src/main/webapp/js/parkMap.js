var lat;
var lon;
var oMap;
var oPoint;
var tempNum = $("#tempNum").attr("value");
var buttonNum;
var buttonClick = 0;
var parkNum;
var clickCount = 0;
var oMarker;

$(document).ready(function() {
	parkNum = $("#parkNum").attr("value");
	
	if(tempNum == 0){
		$.loadDb();
	}
	$.loadInitLocation();
	
	oPoint = new nhn.api.map.LatLng(lat, lon);
	tempMarker = new nhn.api.map.LatLng(0,0);
	
	$.makeMap(oPoint);
	$.makeMarker(oPoint,0);	
});


$(function(){	
	$("#information").click(function(){
		buttonNum = $(this).val();	
		oMap.clearOverlay();
		$(".1").each(function(){		
			lat = $(this).attr("value");
			lon = $(this).attr("title");
			oPoint = new nhn.api.map.LatLng(lat, lon);
			$.makeMarker(oPoint);	
			$.changeLocation(oPoint);	
		});
	});
});

$(function(){
	$("#parking").click(function(){
		buttonNum = $(this).val();

		oMap.clearOverlay();
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

		oMap.clearOverlay();
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

		oMap.clearOverlay();
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

		oMap.clearOverlay();
		
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
	oMap.setCenterAndLevel(oPoint,11);
}

$.makeMarker = function(oPoint){
	var oSize = new nhn.api.map.Size(28, 37);                        
	var oOffset = new nhn.api.map.Size(14, 37);                        
	var oIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);      

	oMarker= new nhn.api.map.Marker(oIcon);  
	oMarker.setPoint(oPoint);
	oMap.addOverlay(oMarker); 
}

$.loadDb = function(){
	window.location="facility_search.do?parkNum="+parkNum;	
}

$(function(){	
	$("#view_btn li").click(function() {
		buttonNum = $(this).val();
		
		for(var i=1; i<6; i++){
			$("#mapicons"+i).attr("src", "mapIcons/mapIcons"+i+".png");
		}		

		$(this).find("img").attr("src", "mapIcons/mapIcons"+buttonNum+"_clicked.png");
		
		buttonClick = 1;
	})
	
	$("#view_btn li").mouseenter(function(){
		buttonNum = $(this).val();
		
		$(this).find("img").attr("src","mapIcons/mapIcons"+buttonNum+"_clicked.png");
		
		buttonClick = 0;
	});	
	
	$("#view_btn li").mouseleave(function(){
		buttonNum = $(this).val();

		if(buttonClick != 1){
		$(this).find("img").attr("src","mapIcons/mapIcons"+buttonNum+".png");}
		
	});	

});

$.loadInitLocation = function() {
	if(parkNum == 1){
		lat = 37.5878709;
		lon = 126.8150663;
	}else if(parkNum == 2){
		lat = 37.5583388;
		lon = 127.1245699;
	}else if(parkNum == 3){
		lat = 37.5672574;
		lon = 126.8744075;
	}else if(parkNum == 4){
		lat = 37.5294517;
		lon = 127.0706769;		
	}else if(parkNum == 5){
		lat = 37.555301;
		lon = 126.8952798;
	}else if(parkNum == 6){
		lat = 37.5094917;
		lon = 126.9946625;
	}else if(parkNum == 7){
		lat = 37.5446259;
		lon = 126.8925002;
	}else if(parkNum == 8){
		lat = 37.5263232;
		lon = 126.9348268;
	}else if(parkNum == 9){
		lat = 37.5583388;
		lon = 127.1245699;
	}else if(parkNum == 10){
		lat = 37.5188864;
		lon = 127.0900268;
	}else if(parkNum == 11){
		lat = 37.5225934;
		lon = 127.0130935;
	}
}