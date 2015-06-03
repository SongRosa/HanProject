package spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.command.BoardCommand;
import spring.command.BoardListCommand;
import spring.mybatis.BoardDAO;
import spring.service.PagingService;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	BoardDAO dao;
	
	public void setDao(BoardDAO dao) {
		this.dao = dao;
	}
	
	int blockCount = 5;
	int blockPage = 3;



	@RequestMapping(value="list.do", method=RequestMethod.GET)
	public String list(
			@RequestParam(value="p", defaultValue="1") String p, Model model){
		
		List<BoardListCommand> list =  dao.board_selectList();
		
		int totalCount = list.size();
		int currentPage = Integer.parseInt(p);
		PagingService ps = 
				new PagingService(currentPage, totalCount, blockCount, blockPage);
		
		String page = ps.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(ps.getEndCount()<totalCount){
			lastCount=ps.getEndCount()+1;
		}
		
		list = list.subList(ps.getStartCount(), lastCount);
		
		model.addAttribute("paging", page);
		model.addAttribute("list", list);
		return "views/board/list";
	}
	
	@RequestMapping(value="list.do", method=RequestMethod.POST)
	public String searchList(@RequestParam(value="p", defaultValue="1") String p,HttpServletRequest req ,Model model){
		
		String search_option = req.getParameter("search_option");
		System.out.println(search_option);
		String search_value = req.getParameter("search_value");
		System.out.println(search_value);
		
		List list;
		
		if(search_option.equals("sub")){
			list = dao.board_search_subject(search_value);
			System.out.println("dao.sear.sub");
		}else{
			list = dao.board_search_writer(search_value);
			System.out.println("dao.sear.wri");
		}
		int totalCount = list.size();
		int currentPage = Integer.parseInt(p);
		PagingService ps = 
				new PagingService(currentPage, totalCount, blockCount, blockPage);
		
		String page = ps.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(ps.getEndCount()<totalCount){
			lastCount=ps.getEndCount()+1;
		}
		
		list = list.subList(ps.getStartCount(), lastCount);
		
		model.addAttribute("paging", page);
		model.addAttribute("list", list);
		
		
		return "views/board/list";
	}
	
	@RequestMapping("detail.do")
	public String viewDetail(@RequestParam int b_number, Model model){
		
		BoardCommand bc = dao.selectOne(b_number);
		model.addAttribute("detail", bc);
		
		return "views/board/detail";
	}
	

}
