package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.command.MainNoticeCommand;
import spring.mybatis.MainDAO;

@Controller
public class MainController {
	
	@Autowired
	MainDAO dao;
	
	public void setDao(MainDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/test.do")
	public String site(Model model){
		List<MainNoticeCommand> list = dao.notice();
		model.addAttribute("list", list);
		return "main/test/main";
	}
	
	@RequestMapping("/sitemap.do")
	public String siteMap(){
		return "main/test/sitemap";
	}
}
