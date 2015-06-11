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
import spring.validation.SearchPwdValidation;

@Controller
public class SearchPwdController {


	@Autowired
	UserDAO dao;

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	@ModelAttribute("loginform")
	UserInfo getLoginform(){
		return new UserInfo();
	}
	
	@RequestMapping(value = "searchPwdForm.do")
	public String search() {
		return "search/searchPwdForm";
	}

	@RequestMapping(value = "searchPwd.do")
	public String searchPwd(@ModelAttribute("loginform") UserInfo useri,HttpSession session) {
		
		return "search/searchPwdForm";
	}
	
	@RequestMapping(value = "searchPwd.do",method = RequestMethod.POST)
	public String searchPwd2(@ModelAttribute("loginform") UserInfo useri,BindingResult result, HttpSession session,Model model) {
		new SearchPwdValidation().validate(useri, result);
		

		if (result.hasErrors()) {

			return "search/searchPwdForm";
		}
		int x = dao.isPwd2(useri);
		
		if (x == 1) {
			useri.setPwd("tp"+(int)(Math.random()*10000000));
			dao.tempPwd(useri);
			UserInfo pwd = dao.selectPwd(useri);
			String a=pwd.getPwd();
			session.setAttribute("pwd", a);
			return "search/searchPwdSuccess";
		} else {
			int i = 1;
			model.addAttribute("a", i);
			return "search/searchPwdForm";
		}
	}
	

/*	@RequestMapping(value = "log_logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "log/loginForm";
	}*/

}
