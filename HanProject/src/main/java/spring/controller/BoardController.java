package spring.controller;

import java.util.Enumeration;
import java.util.List;
import java.util.Map;

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
		
		List<BoardListCommand> list;
		
		if(search_option.equals("sub")){
			list = dao.board_search_subject(search_value);
			System.out.println("dao.sear.sub");
		}else if(search_option.equals("wri")){
			list = dao.board_search_writer(search_value);
			System.out.println("dao.sear.wri");
		}else{
			list = dao.board_selectList();
			System.out.println("dao.selectAll");
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
		int i = dao.update_b_count(b_number);
		
		return "views/board/detail";
	}
	
	@RequestMapping(value="insert.do", method=RequestMethod.GET)
	public String insertForm(){
		return "views/board/insertForm";
	}
	
	
	@RequestMapping(value="insert.do", method=RequestMethod.POST)
	public String insert(HttpServletRequest req){
		
		String b_subject = req.getParameter("b_subject");
		String b_writer = req.getParameter("b_writer");
		String b_content = req.getParameter("b_content");
		int p_number = Integer.parseInt(req.getParameter("b_subTab"));
		
		
		
		BoardCommand bc = new BoardCommand(p_number , b_subject, b_writer, b_content);
		System.out.println(bc);
		
		int i = dao.insertOne(bc);
		if(i==1){
		
			return "views/board/success/insert";
		}else{
			
			return "views/board/fail/insert";
		}
	}
	
	@RequestMapping(value="deleteForm.do", method=RequestMethod.GET)
	public String deleteForm(){

		return "views/board/deleteForm";
	}
	
	@RequestMapping(value="deleteForm.do", method=RequestMethod.POST)
	public String delete(HttpServletRequest req, Model model){
		
		String a = req.getParameter("b_number");
		int b_number= Integer.parseInt(a);
		System.out.println(b_number);
		int i = dao.deleteOne(b_number);
		if(i==1){
			
			return "views/board/success/delete";
		}else{
			
			return "views/board/fail/delete";
		}
		
	}
	
	@RequestMapping(value="updateForm.do", method=RequestMethod.GET)
	public String updateForm(HttpServletRequest req, Model model){
		int i = Integer.parseInt(req.getParameter("b_number"));
		BoardCommand bc = dao.selectOne(i);
		model.addAttribute("detail", bc);
		
		return "views/board/updateForm";
	}
	

}
