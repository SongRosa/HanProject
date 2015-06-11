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
			System.out.println(list.size() + " :::::: �����������~");
		}else{
			System.out.println("�Ф�");
		}
		
		model.addAttribute("manager", list);
		
		return "main/test/managerMode";
	}
	
	@RequestMapping("/managerDeleteMember.do")
	public String managerDeleteMember(String id, Model model){
		System.out.println(id);
		int deleteCount = dao.manager_delete(id);
		
		System.out.println("����������!! ���~~? " + deleteCount);
		if(deleteCount == 1){
			List<ManagerCommand> list = dao.manager_select();
			model.addAttribute("manager", list);
			return "main/test/managerMode";
		}
		
		return "redirect:managerPage.do";
	}
}
