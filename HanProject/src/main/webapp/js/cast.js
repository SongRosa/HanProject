function xmlLoader(i) {

	var urlAddr = new Array(
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1150064100', // 강서 한강공원 강서구 방화 3동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1174058000', // 광나루 한강공원 강동구 암사2동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1144074000', // 난지 한강공원 마포구 상암동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1121582000', // 뚝섬 한강공원 광진구 자양1동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1144070000', // 망원 한강공원 마포구 망원2동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1165057000', // 반포 한강공원 서초구 반포 2동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1156055000', // 양화 한강공원 영등포구 당산1동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1156054000', // 여의도 한강공원 영등포구 여의동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1117063000', // 이촌 한강공원 용산구 이촌1동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1171067000', // 잠실 한강공원 송파수 잠실 2동
			'http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1165054000' // 잠원 한강공원 서초구 잠원동

	);
	
	var hour;
	var hour_str;
	var day;
	var day_str;
	var temp;
	var sky;
	var pty;
	var sky_str;
	var pop;

		$.ajax({
			url : urlAddr[i], // <- xml 위치
			dataType : "xml", // xml 형식
			type : 'GET',
			success : function(res) {
				
				var myXML = res.responseText; // xml을 text형식으로 가져온 것이다. alert을찍어보면 알수 있다.
				var XML = $.parseXML(myXML); // xml 파싱하여 가져온 text를 xml형태로 바꿔주는
				$xml = $(XML)
				
					
					var j = 0;

					for (j; j < 4; j++) {
						hour = $("data:eq(" + j + ")>hour", XML).text();

						hour_str = hour - 3 + " ~" + hour + "시";

						day = $("data:eq(" + j + ")>day", XML).text();

						if (day == '0') {
							day_str = '오늘';
						} else if (day == '1') {
							day_str = '내일';
						} else {
							day_str = '모레';
						}
						sky = $("data:eq(" + j + ")>sky", XML).text();
						pty = $("data:eq(" + j + ")>pty", XML).text();
						if (pty == '0') {
							if (sky = '1') {
								sky_str = '<img height="83" width="83" alt="fine" src="weather/fine.gif">';
							} else if (sky == '2') {
								sky_str = '<img height="83" width="83" alt="fine" src="weather/few_cloudy2.gif">';
							} else if (sky == '3') {
								sky_str = '<img height="83" width="83" alt="cloudy" src="weather/cloudy.gif">';
							} else {
								sky_str = '<img height="83" width="83" alt="dark_cloudy" src="weather/dark_cloudy.gif">';
							}
						} else {
							if (pty == '1') {
								sky_str = '<img height="83" width="83" alt="rain" src="weather/rain.gif">';
							} else {
								sky_str = '<img height="83" width="83" alt="snow" src="weather/snow.gif">';
							}
						}

						temp = $("data:eq(" + j + ")>temp", XML).text();
						pop = $("data:eq(" + j + ")>pop", XML).text();

						$("#page"+[i]+" .td0_" + j + "").text(day_str + " " + hour_str);
						$("#page"+[i]+" .td1_" + j + "").prepend(sky_str);
						$("#page"+[i]+" .td2_" + j + "").text(
								temp+" ℃" + "   " + pop+" %");

					}// for 문 j 종료
				}, //석세스 펑션 종료
			
			error : function() {
				alert("error");
			}// 에러 펑션 종료
			
			
		}); //ajax 종료
}