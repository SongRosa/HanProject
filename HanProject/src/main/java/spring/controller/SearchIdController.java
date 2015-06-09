package spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.command.UserInfo;
import spring.mybatis.UserDAO;
import spring.validation.SearchValidation;

@Controller
public class SearchIdController {

	@Autowired
	UserDAO dao;

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	@ModelAttribute("searchidform")
	UserInfo getSearchidform(){
		return new UserInfo();
	}
	
	@RequestMapping(value = "searchIdForm.do")
	public String search() {
		return "search/searchIdForm";
	}

	@RequestMapping(value = "searchId.do",method = RequestMethod.POST)
	public String search(@ModelAttribute("searchidform") UserInfo useri,BindingResult result, HttpSession session) {
		new SearchValidation().validate(useri, result);

		if (result.hasErrors()) {

			return "search/searchIdForm";
		}
		int x = dao.isId2(useri);
		UserInfo id = dao.selectId(useri);
		if (x == 1) {
			String a=id.getId();
			session.setAttribute("id", a);
			return "search/searchIdSuccess";
		} else {
			return "search/searchIdFail";
		}
	}
	

/*	@RequestMapping(value = "log_logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "log/loginForm";
	}*/

}
