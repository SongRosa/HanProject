package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.command.FacilityCommand;
import spring.mybatis.FacilityDAO;

@Controller
public class FacilityController {

	@Autowired
	FacilityDAO dao;

	public void setDao(FacilityDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/facility_search.do")
	public String list(int parkNum, Model model){
		System.out.println("parkNum ::: " + parkNum);
		int tempNum = 1;
		List<FacilityCommand> list = dao.board_selectList(parkNum);
		
		if(list.size() > 0){
			System.out.println("select ½ÇÇà‰çÀ½!");
		}else{
			System.out.println("¤Ð¤Ð");
		}
		
		model.addAttribute("location", list);
		model.addAttribute("parkNum", parkNum);
		model.addAttribute("tempNum", tempNum);
		return "views/maps/maps_gangseo";
	}
}
