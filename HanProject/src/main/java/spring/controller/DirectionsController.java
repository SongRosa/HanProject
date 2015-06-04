package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DirectionsController {
	
	@RequestMapping("/directionPage.do")
	public String directionPage(int parkNum){  // 매개변수에 공원번호 받아오기.
		
		if(parkNum == 1){			// 강서 광나루 난지 뚝섬 망원 반포 양화 여의도 이촌 잠실 잠원
			return "views/directions/directions_gangseo";
		}else if(parkNum == 2){
			return "views/directions/directions_kwangnaru";
		}else if(parkNum == 3){
			return "views/directions/directions_nanji";
		}else if(parkNum == 4){
			return "views/directions/directions_ttukseom";
		}else if(parkNum == 5){
			return "views/directions/directions_mangwon";
		}else if(parkNum == 6){
			return "views/directions/directions_banpo";
		}else if(parkNum == 7){
			return "views/directions/directions_yanghwa";
		}else if(parkNum == 8){
			return "views/directions/directions_yeouido";
		}else if(parkNum == 9){
			return "views/directions/directions_ichon";
		}else if(parkNum == 10){
			return "views/directions/directions_jamsil";
		}else if(parkNum == 11){
			return "views/directions/directions_jamwon";
		}
		return "redirect:header.do";
	}
}
