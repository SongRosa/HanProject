package spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.command.UserInfo;
import spring.mybatis.UserDAO;

@Controller
public class LoginController {

	@Autowired
	UserDAO dao;

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	@RequestMapping(value = "log/loginForm.do")
	public String login() {
		return "log/loginForm";
	}

	@RequestMapping(value = "log/login.do")
	public String login(UserInfo useri, Model model, HttpSession session) {
		int x = dao.isId(useri);
		if (x == 1) {
			session.setAttribute("id", useri.getId());
			return "log/login";
		} else {
			return "log/loginForm";
		}
	}

	@RequestMapping(value = "log/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "log/loginForm";
	}

}
