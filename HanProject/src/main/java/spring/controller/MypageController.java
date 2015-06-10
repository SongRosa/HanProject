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
import spring.validation.JoinValidation;
import spring.validation.MypageValidation;

@Controller
public class MypageController {

	@Autowired
	UserDAO dao;

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	@ModelAttribute("confirmpwdform")
	UserInfo getConfirmpwdform(){
		return new UserInfo();
	}
	
	@RequestMapping(value = "confirmPwd.do")
	public String search() {
		return "mypage/confirmPwd";
	}

	@RequestMapping(value = "updatego.do",method = RequestMethod.POST)
	public String search(@ModelAttribute("confirmpwdform") UserInfo useri,BindingResult result, HttpSession session,Model model) {
		new MypageValidation().validate(useri, result);

		if (result.hasErrors()) {
			System.out.println("33");
			return "mypage/confirmPwd";
		}
		UserInfo se = (UserInfo) session.getAttribute("user");
		String seid = se.getId();
		int x = dao.selectId2(seid,useri.getPwd());
		int atidx=se.getEmail().indexOf('@');
		int dashidx=se.getTel().indexOf('-');
		model.addAttribute("pwd",se.getPwd());
		model.addAttribute("name",se.getName());
		model.addAttribute("nick",se.getNick());
		model.addAttribute("email1",se.getEmail().substring(0, atidx));
		model.addAttribute("email2",se.getEmail().substring(atidx+1, se.getEmail().length()));
		model.addAttribute("tel1",se.getTel());
		model.addAttribute("tel2",se.getTel());
		model.addAttribute("tel3",se.getTel());
		model.addAttribute("zipcode",se.getZipcode());
		model.addAttribute("address",se.getAddress());
		
		if (x==1) {
			return "mypage/updateInfo";
		} else {
			return "mypage/disagreePwd";
		}
	}

	


	
	

}
