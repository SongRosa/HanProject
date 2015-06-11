package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.command.ManagerCommand;
import spring.mybatis.ManagerDAO;

@Controller
public class ManagerController {

	@Autowired
	ManagerDAO dao;

	public void setDao(ManagerDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/managerPage.do")
	public String managerPage(Model model){
		
		List<ManagerCommand> list = dao.manager_select();
		
		if(list.size() > 0){
			System.out.println(list.size() + " :::::: 디비가져왔지롱~");
		}else{
			System.out.println("ㅠㅠ");
		}
		
		model.addAttribute("manager", list);
		
		return "main/test/managerMode";
	}
}
