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
import spring.validation.ConfirmPwdValidation;
import spring.validation.LoginCommandValidator;
import spring.validation.MypageNameValidation;

@Controller
public class MypageController {

	@Autowired
	UserDAO dao;

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	@ModelAttribute("loginform")
	UserInfo getLoginform(){
		return new UserInfo();
	}
	
	@RequestMapping(value = "confirmPwd.do")
	public String search() {
		return "mypage/confirmPwd";
	}
	
	@RequestMapping(value="mypageForm.do")
	public String moveMypage(){
		return "mypage/mypageForm";
	}

	@RequestMapping(value = "updatego.do", method=RequestMethod.GET)
	public String search1(@ModelAttribute("loginform") UserInfo useri, HttpSession session,Model model){
		UserInfo se = (UserInfo) session.getAttribute("user");
		String seid = se.getId();
		
		int atidx=se.getEmail().indexOf('@');
		model.addAttribute("pwd",se.getPwd());
		model.addAttribute("name",se.getName());
		model.addAttribute("nick",se.getNick());
		model.addAttribute("email1",se.getEmail().substring(0, atidx));
		model.addAttribute("email2",se.getEmail().substring(atidx+1, se.getEmail().length()));
		model.addAttribute("tel1",se.getTel().substring(0, 3));
		model.addAttribute("tel2",se.getTel().substring(4, 8));
		model.addAttribute("tel3",se.getTel().substring(9, se.getTel().length()));
		model.addAttribute("zipcode",se.getZipcode());
		model.addAttribute("address",se.getAddress());
		
		return "mypage/updateInfo";
	}
	
	
	@RequestMapping(value = "updatego.do",method = RequestMethod.POST)
	public String search(@ModelAttribute("loginform") UserInfo useri,BindingResult result, HttpSession session,Model model) {
		new ConfirmPwdValidation().validate(useri, result);

		if (result.hasErrors()) {
			System.out.println("33");
			return "mypage/confirmPwd";
		}
		UserInfo se = (UserInfo) session.getAttribute("user");
		String seid = se.getId();
		int x = dao.selectId2(seid,useri.getPwd());
		int atidx=se.getEmail().indexOf('@');
		model.addAttribute("pwd",se.getPwd());
		model.addAttribute("name",se.getName());
		model.addAttribute("nick",se.getNick());
		model.addAttribute("email1",se.getEmail().substring(0, atidx));
		model.addAttribute("email2",se.getEmail().substring(atidx+1, se.getEmail().length()));
		model.addAttribute("tel1",se.getTel().substring(0, 3));
		model.addAttribute("tel2",se.getTel().substring(4, 8));
		model.addAttribute("tel3",se.getTel().substring(9, se.getTel().length()));
		model.addAttribute("zipcode",se.getZipcode());
		model.addAttribute("address",se.getAddress());
		
		if (x==1) {
			return "mypage/updateInfo";
		} else {
			int i = 1;
			model.addAttribute("a", i);
			return "mypage/confirmPwd";
		}
		

	}
	


	


	
	

}
