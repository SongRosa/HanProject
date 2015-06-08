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
import spring.validation.LoginCommandValidator;
import spring.validation.SearchValidation;

@Controller
public class SearchPwdController {


	@Autowired
	UserDAO dao;

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	@ModelAttribute("searchpwdform")
	UserInfo getSearchpwdform(){
		return new UserInfo();
	}
	
	@RequestMapping(value = "searchPwdForm.do")
	public String search() {
		return "search/searchPwdForm";
	}

	@RequestMapping(value = "searchPwd.do",method = RequestMethod.POST)
	public String search(@ModelAttribute("searchpwdform") UserInfo useri,BindingResult result, HttpSession session) {
		new SearchValidation().validate(useri, result);

		if (result.hasErrors()) {

			return "search/searchPwdForm";
		}
		int x = dao.isPwd2(useri);
		UserInfo pwd = dao.selectPwd(useri);
		if (x == 1) {
			String a=pwd.getPwd();
			session.setAttribute("pwd", a);
			return "search/searchPwdSuccess";
		} else {
			return "search/searchPwdFail";
		}
	}
	

/*	@RequestMapping(value = "log_logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "log/loginForm";
	}*/

}
