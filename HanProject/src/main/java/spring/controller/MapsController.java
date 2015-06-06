package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MapsController {
	
	@RequestMapping("/mapPage.do")
	public String directionPage(int parkNum){  // �Ű������� ������ȣ �޾ƿ���.
		
		if(parkNum == 1){			// ���� ������ ���� �Ҽ� ���� ���� ��ȭ ���ǵ� ���� ��� ���
			return "views/maps/maps_gangseo";
		}else if(parkNum == 2){
			return "views/maps/maps_kwangnaru";
		}else if(parkNum == 3){
			return "views/maps/maps_nanji";
		}else if(parkNum == 4){
			return "views/maps/maps_ttukseom";
		}else if(parkNum == 5){
			return "views/maps/maps_mangwon";
		}else if(parkNum == 6){
			return "views/maps/maps_banpo";
		}else if(parkNum == 7){
			return "views/maps/maps_yanghwa";
		}else if(parkNum == 8){
			return "views/maps/maps_yeouido";
		}else if(parkNum == 9){
			return "views/maps/maps_ichon";
		}else if(parkNum == 10){
			return "views/maps/maps_jamsil";
		}else if(parkNum == 11){
			return "views/maps/maps_jamwon";
		}
		return "redirect:header.do";
	}
}
