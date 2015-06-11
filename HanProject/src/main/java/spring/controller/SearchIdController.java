package spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.command.UserInfo;
import spring.mybatis.UserDAO;
import spring.validation.SearchIdValidation;

@Controller
public class SearchIdController {

	@Autowired
	UserDAO dao;

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	@ModelAttribute("loginform")
	UserInfo getLoginform(){
		return new UserInfo();
	}
	
	@RequestMapping(value = "searchIdForm.do")
	public String search() {
		return "search/searchIdForm";
	}

	@RequestMapping(value = "searchId.do",method = RequestMethod.POST)
	public String search(@ModelAttribute("loginform") UserInfo useri,BindingResult result, HttpSession session, Model model,
						 String name, String email) {
		new SearchIdValidation().validate(useri, result);

		if (result.hasErrors()) {

			return "search/searchIdForm";
		}
		
		System.out.println(name + " ::::::: " + email);
		int x = dao.isId2(useri);
		UserInfo id = dao.selectId(useri);

		if (x == 1) {
			id.setName(name);
			id.setEmail(email);
			model.addAttribute("model", id);
			
			return "search/searchIdSuccess";
		} else {
			int i = 1;
			model.addAttribute("a", i);
			return "search/searchIdForm";
		}
	}
	

/*	@RequestMapping(value = "log_logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "log/loginForm";
	}*/

}
