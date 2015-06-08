package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapsController {
	
	@RequestMapping("/mapPage.do")
	public String directionPage(int parkNum, Model model){  // 매개변수에 공원번호 받아오기.
		
		if(parkNum == 1){			// 강서 광나루 난지 뚝섬 망원 반포 양화 여의도 이촌 잠실 잠원
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_gangseo";
		}else if(parkNum == 2){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_kwangnaru";
		}else if(parkNum == 3){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_nanji";
		}else if(parkNum == 4){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_ttukseom";
		}else if(parkNum == 5){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_mangwon";
		}else if(parkNum == 6){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_banpo";
		}else if(parkNum == 7){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_yanghwa";
		}else if(parkNum == 8){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_yeouido";
		}else if(parkNum == 9){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_ichon";
		}else if(parkNum == 10){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_jamsil";
		}else if(parkNum == 11){
			model.addAttribute("parkNum", parkNum);
			return "views/maps/maps_jamwon";
		}
		return "redirect:header.do";
	}
}
