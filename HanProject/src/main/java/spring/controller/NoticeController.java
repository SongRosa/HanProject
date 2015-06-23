package spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.command.NoticeCommand;
import spring.mybatis.NoticeDAO;
import spring.service.NoticePagingService;

@Controller
public class NoticeController {

	@Autowired
	NoticeDAO dao;

	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}

	int blockCount = 5;
	int blockPage = 3;

	/* 초기상태의 리스트를 불러오는 메서드 */
	@RequestMapping(value = "notice_list.do", method = RequestMethod.GET)
	public String list(@RequestParam(value = "p", defaultValue = "1") String p,
			Model model) {
		String page;
		List<NoticeCommand> list =dao.selectAll();
		
		int totalCount = list.size();
		int currentPage = Integer.parseInt(p);
		NoticePagingService ps = new NoticePagingService(currentPage, totalCount,
				blockCount, blockPage);

		page = ps.getPagingHtml().toString();

		int lastCount = totalCount;

		if (ps.getEndCount() < totalCount) {
			lastCount = ps.getEndCount() + 1;
		}
		list = list.subList(ps.getStartCount(), lastCount);
		
		
		model.addAttribute("paging", page);
		model.addAttribute("list", list);
		return "views/notice/list";
	}
	/* 글의 내용을 보게 해주는 메서드 */
	@RequestMapping(value="notice_detail.do" ,method= RequestMethod.GET)
	public String viewDetail(@RequestParam (value = "p", defaultValue = "1") String p, @RequestParam int n_number, Model model) {
	
		NoticeCommand command = dao.selectOne(n_number);
		dao.updateN_count(n_number);
		
		model.addAttribute("listPage", p);
		model.addAttribute("detail", command);
		return "views/notice/detail";
	}
	
	/* 목록에서 글 쓰기를 불렀을 때 실행해주는 메서드 */
	@RequestMapping(value = "notice_insert.do", method = RequestMethod.GET)
	public String insertForm( Model model ) {
		
		return "views/notice/insertForm";
	}
	
	/* 글쓰기를 서브밋했을 때 실행되는 메서드 */
	@RequestMapping(value = "notice_insert.do", method = RequestMethod.POST)
	public String insert(HttpServletRequest req, NoticeCommand nc) {

		int i = dao.insertOne(nc);
		if (i == 1) {

			return "redirect:notice_list.do";
		} else {

			return "views/notice/fail/insert";
		}
	}
	/* 글 내용에서 삭제 버튼을 누르면 실행되는 메서드 */
	@RequestMapping(value = "notice_deleteForm.do", method = RequestMethod.GET)
	public String deleteForm() {

		return "views/notice/deleteForm";
	}
	
	/* 삭제 확인을 하면 실행되는 메서드 */
	@RequestMapping(value = "notice_deleteForm.do", method = RequestMethod.POST)
	public String delete(HttpServletRequest req, Model model) {

		int n_number = Integer.parseInt(req.getParameter("n_number"));
			int j = dao.deleteOne(n_number);
			if (j == 1) {

				return "views/notice/success/delete";
			} else {

				return "views/notice/fail/delete";
		}
		
	}
	
	/* 글 내용에서 수정 버튼을 누르면 실행되는 메서드 */
	@RequestMapping(value = "notice_updateForm.do", method = RequestMethod.GET)
	public String updateForm(HttpServletRequest req, Model model) {
		int i = Integer.parseInt(req.getParameter("n_number"));
		NoticeCommand bc = dao.selectOne(i);

		model.addAttribute("detail", bc);

		return "views/notice/updateForm";
	}

	/* 글 수정에서 서브밋을 하면 실행되는 메서드 */
	@RequestMapping(value = "notice_updateForm.do", method = RequestMethod.POST)
	public String update(NoticeCommand command) {
		
		int i = dao.updateOne(command);
		if (i == 1) {
			return "redirect:notice_list.do";
		} else {
			return "views/notice/fail/insert";
		}
	}
	
	
	
	
}
