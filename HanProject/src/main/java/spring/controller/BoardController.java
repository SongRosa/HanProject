package spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.command.BoardCommand;
import spring.command.BoardGroupingCommand;
import spring.command.CommentsCommand;
import spring.mybatis.BoardDAO;
import spring.service.CommentsPagingService;
import spring.service.GroupingPagingService;
import spring.service.PagingService;

@Controller
public class BoardController {

	@Autowired
	BoardDAO dao;

	public void setDao(BoardDAO dao) {
		this.dao = dao;
	}

	int blockCount = 5;
	int blockPage = 3;

	/* 초기상태의 리스트를 불러오는 메서드 */
	@RequestMapping(value = "board_list.do", method = RequestMethod.GET)
	public String list(
			@RequestParam(value = "p", defaultValue = "1") String p,
			@RequestParam(value = "parkNum", defaultValue = "0") String parkNum,
			Model model) {

		List<BoardCommand> list;
		String page;

		if (parkNum.equals("0"))/* 글분류가 0 일때는 전체글을 불러옴 */{
			list = dao.board_selectList();

			int totalCount = list.size();
			int currentPage = Integer.parseInt(p);
			PagingService ps = new PagingService(currentPage, totalCount,
					blockCount, blockPage);

			page = ps.getPagingHtml().toString();

			int lastCount = totalCount;

			if (ps.getEndCount() < totalCount) {
				lastCount = ps.getEndCount() + 1;
			}

			list = list.subList(ps.getStartCount(), lastCount);
		} else /* 글분류가 0이 아닐때는 parkNum에 해당하는 공원 글을 불러옴 */{

			list = dao.board_grouping_selectList(parkNum);
			System.out.println("dao.selectGroupingAll");

			int totalCount = list.size();
			int currentPage = Integer.parseInt(p);
			GroupingPagingService gps = new GroupingPagingService(currentPage, totalCount,
					blockCount, blockPage, parkNum);

			page = gps.getPagingHtml().toString();

			int lastCount = totalCount;

			if (gps.getEndCount() < totalCount) {
				lastCount = gps.getEndCount() + 1;
			}

			list = list.subList(gps.getStartCount(), lastCount);

		}
		model.addAttribute("paging", page);
		model.addAttribute("list", list);
		return "views/board/list";
	}

	/* 검색을 한뒤에 리스트를 불러오는 메서드 */
	@RequestMapping(value = "board_list.do", method = RequestMethod.POST)
	public String searchList(
			@RequestParam(value = "p", defaultValue = "1") String p,
			@RequestParam(value = "parkNum", defaultValue = "0") String parkNum,
			HttpServletRequest req, Model model) {

		String search_option = req.getParameter("search_option");
		String search_value = req.getParameter("search_value");

		List<BoardCommand> list;
		BoardGroupingCommand bgc;
		String page;

		if (parkNum.equals("0")) {

			if (search_option.equals("sub")) {
				list = dao.board_search_subject(search_value);
				System.out.println("dao.sear.sub");
			} else if (search_option.equals("wri")) {
				list = dao.board_search_writer(search_value);
				System.out.println("dao.sear.wri");
			} else {
				list = dao.board_selectList();
				System.out.println("dao.selectAll");
			}
			int totalCount = list.size();
			int currentPage = Integer.parseInt(p);
			PagingService ps = new PagingService(currentPage, totalCount,
					blockCount, blockPage);

			page = ps.getPagingHtml().toString();

			int lastCount = totalCount;

			if (ps.getEndCount() < totalCount) {
				lastCount = ps.getEndCount() + 1;
			}

			list = list.subList(ps.getStartCount(), lastCount);

		} else {
			bgc = new BoardGroupingCommand(search_value, parkNum);

			if (search_option.equals("sub")) {

				list = dao.board_grouping_search_subject(bgc);
				System.out.println("dao.g.sear.sub");

			} else if (search_option.equals("wri")) {

				list = dao.board_grouping_search_writer(bgc);
				System.out.println("dao.g.sear.wri");

			} else {

				list = dao.board_grouping_selectList(parkNum);
				System.out.println("dao.g.selectAll");
			}
			int totalCount = list.size();
			int currentPage = Integer.parseInt(p);
			GroupingPagingService gps = new GroupingPagingService(currentPage, totalCount,
					blockCount, blockPage, parkNum);

			page = gps.getPagingHtml().toString();

			int lastCount = totalCount;

			if (gps.getEndCount() < totalCount) {
				lastCount = gps.getEndCount() + 1;
			}

			list = list.subList(gps.getStartCount(), lastCount);

		}

		model.addAttribute("paging", page);
		model.addAttribute("list", list);
		return "views/board/list";
	}

	/* 글의 내용을 보게 해주는 메서드 */
	@RequestMapping(value="board_detail.do" ,method= RequestMethod.GET)
	public String viewDetail(@RequestParam(value = "p", defaultValue = "1") String p, @RequestParam int b_number, Model model) {

		BoardCommand bc = dao.selectOne(b_number);
		model.addAttribute("detail", bc);
		dao.update_b_count(b_number);
		
		int c_block_page = 3;
		int c_block_count = 100;
		
		List<CommentsCommand> list = dao.selectCommentsList(b_number);
		
		int totalCount = list.size();
		int currentPage = Integer.parseInt(p);
		
		CommentsPagingService cps = new CommentsPagingService(currentPage, totalCount, c_block_count, c_block_page, b_number);

		String page = cps.getPagingHtml().toString();

		int lastCount = totalCount;

		if (cps.getEndCount() < totalCount) {
			lastCount = cps.getEndCount() + 1;
		}

		list = list.subList(cps.getStartCount(), lastCount);

		model.addAttribute("commentsList", list);
		model.addAttribute("paging", page);

		return "views/board/detail";
	}
	
	/*코멘트가 입력되면 실행되는 메서드*/
	@RequestMapping(value="board_detail.do" ,method= RequestMethod.POST)
	public String insertComments(HttpServletRequest req){
		
		String c_writer = req.getParameter("c_writer");
		String c_content = req.getParameter("c_content");
		int b_number = Integer.parseInt(req.getParameter("b_number"));
		String c_id = req.getParameter("c_id");
		int parkNum = Integer.parseInt(req.getParameter("parkNum"));
		CommentsCommand cc = new CommentsCommand(c_writer, c_content, b_number,c_id);
		dao.insertComments(cc);
		
		return "redirect:board_detail.do?b_number="+b_number+"&parkNum="+parkNum;
	}
	
	/*코멘트를 삭제하는 메서드*/
	@RequestMapping("commentsDel.do")
	public String commentsDel(HttpServletRequest req){
		
		int c_number = Integer.parseInt(req.getParameter("c_number"));
		int b_number = Integer.parseInt(req.getParameter("b_number"));
		int parkNum = Integer.parseInt(req.getParameter("parkNum"));
		
		CommentsCommand cc = new CommentsCommand(c_number, b_number);
		dao.deleteComments(cc);
		
		return"redirect:board_detail.do?b_number="+b_number+"&parkNum="+parkNum;
	}


	/* 목록에서 글 쓰기를 불렀을 때 실행해주는 메서드 */
	@RequestMapping(value = "board_insert.do", method = RequestMethod.GET)
	public String insertForm(@RequestParam(value="parkNum",defaultValue="0") String parkNum, Model model ) {
		
		int p_number = Integer.parseInt(parkNum);
		model.addAttribute("p_number", p_number);
		
		return "views/board/insertForm";
	}

	/* 글쓰기를 서브밋했을 때 실행되는 메서드 */
	@RequestMapping(value = "board_insert.do", method = RequestMethod.POST)
	public String insert(HttpServletRequest req, BoardCommand bcc) {

		int p_number = Integer.parseInt(req.getParameter("p_number"));

		System.out.println(bcc);

		int i = dao.insertOne(bcc);
		if (i == 1) {

			return "redirect:board_list.do?parkNum="+p_number;
		} else {

			return "views/board/fail/insert";
		}
	}

	/* 글 내용에서 삭제 버튼을 누르면 실행되는 메서드 */
	@RequestMapping(value = "board_deleteForm.do", method = RequestMethod.GET)
	public String deleteForm() {

		return "views/board/deleteForm";
	}

	/* 삭제 확인을 하면 실행되는 메서드 */
	@RequestMapping(value = "board_deleteForm.do", method = RequestMethod.POST)
	public String delete(HttpServletRequest req, Model model) {

		int b_number = Integer.parseInt(req.getParameter("b_number"));
		System.out.println(b_number);
		
		int i = dao.countComments(b_number);
		
		if (i==0) {
			int j = dao.deleteOne(b_number);
			if (j == 1) {

				return "views/board/success/delete";
			} else {

				return "views/board/fail/delete";
			}
		} else {
			dao.delteAllComments(b_number);
			
			int j = dao.deleteOne(b_number);
			if (j == 1) {

				return "views/board/success/delete";
			} else {

				return "views/board/fail/delete";
			}

		}
		
		
		

	}

	/* 글 내용에서 수정 버튼을 누르면 실행되는 메서드 */
	@RequestMapping(value = "board_updateForm.do", method = RequestMethod.GET)
	public String updateForm(HttpServletRequest req, Model model) {
		int i = Integer.parseInt(req.getParameter("b_number"));
		BoardCommand bc = dao.selectOne(i);

		model.addAttribute("detail", bc);

		return "views/board/updateForm";
	}

	/* 글 수정에서 서브밋을 하면 실행되는 메서드 */
	@RequestMapping(value = "board_updateForm.do", method = RequestMethod.POST)
	public String update(BoardCommand command) {
		System.out.println(command);
		int i = dao.updateOne(command);
		if (i == 1) {
			return "redirect:board_list.do?parkNum=0";
		} else {
			return "views/board/fail/insert";
		}
	}

}
