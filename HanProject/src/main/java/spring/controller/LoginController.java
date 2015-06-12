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

@Controller
public class LoginController {

	@Autowired
	UserDAO dao;

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	@ModelAttribute("loginform")
	UserInfo getLoginform(){
		return new UserInfo();
	}
	
	@RequestMapping(value = "log_loginForm.do")
	public String login() {
		return "log/loginForm";
	}

	@RequestMapping(value = "log_login.do")
	public String login(@ModelAttribute("loginform") UserInfo useri,BindingResult result, HttpSession session,Model model) {
		new LoginCommandValidator().validate(useri, result);
		System.out.println("aa");
		if (result.hasErrors()) {
			return "log/loginForm";
		}
		int x = dao.isId(useri);
		UserInfo ui=dao.selectInfo(useri);
		
		if (x == 1) {			
			session.setAttribute("user", ui);
			return "redirect:test.do";
		} else {
			System.out.println("else");
			int i = 1;
			model.addAttribute("a", i);
			return "log/loginForm";
		}
	}
	
	@RequestMapping(value = "log_login.do",method = RequestMethod.POST)
	public String login2(@ModelAttribute("loginform") UserInfo useri,BindingResult result, HttpSession session,Model model) {
		new LoginCommandValidator().validate(useri, result);
		if (result.hasErrors()) {
			return "log/loginForm";
		}
		int x = dao.isId(useri);
		UserInfo ui=dao.selectInfo(useri);
		if (x == 1) {
			session.setAttribute("user", ui);
			//DB select¹® Ãß°¡
			return "redirect:test.do";
		} else {
			int i = 1;
			model.addAttribute("a", i);
			return "log/loginForm";
		}
	}

	@RequestMapping(value = "log_logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "log/loginForm";
	}

}
