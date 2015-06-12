package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.command.ManagerCommand;
import spring.mybatis.ManagerDAO;
import spring.service.ManagerPagingService;

@Controller
public class ManagerController {

	@Autowired
	ManagerDAO dao;

	int blockCount = 10;
	int blockPage = 5;
	
	public void setDao(ManagerDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/managerPage.do")
	public String managerPage(Model model, @RequestParam(value = "p", defaultValue = "1") String p){
		
		List<ManagerCommand> list = dao.manager_select();
		String page;
		
		int totalCount = list.size();
		int currentPage = Integer.parseInt(p);
		
		ManagerPagingService ps = new ManagerPagingService(currentPage, totalCount, blockCount, blockPage);
		page = ps.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(ps.getEndCount() < totalCount){
			lastCount = ps.getEndCount() + 1;
		}

		list = list.subList(ps.getStartCount(), lastCount);

		model.addAttribute("paging", page);
		model.addAttribute("manager", list);
		
		return "main/test/managerMode";
	}
	
	@RequestMapping("/managerDeleteMember.do")
	public String managerDeleteMember(String id, Model model, @RequestParam(value = "p", defaultValue = "1") String p){
		System.out.println(id);
		int deleteCount = dao.manager_delete(id);
		
		if(deleteCount == 1){
			List<ManagerCommand> list = dao.manager_select();
			model.addAttribute("manager", list);
			return "redirect:managerPage.do";
		}
		
		return "redirect:managerPage.do?p="+p;
	}
}
