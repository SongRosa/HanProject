package spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.command.UserInfo;
import spring.command.ZipInfo;
import spring.mybatis.UserDAO;
import spring.mybatis.ZipDAO;
import spring.validation.JoinValidation;
import spring.validation.MypageEmailValidation;

@Controller
public class MemberInputController {

	@Autowired
	UserDAO dao;
	@Autowired
	ZipDAO zipdao;

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	public void setZipdao(ZipDAO zipdao) {
		this.zipdao = zipdao;
	}

	@RequestMapping(value = "join_input.do")
	public String memberInput(@ModelAttribute("loginform") UserInfo useri) {
		return "join/joinForm";
	}

	
	@RequestMapping(value = "join_memsub.do", method = RequestMethod.POST)
	public String memSub(@ModelAttribute("loginform") UserInfo useri,
			BindingResult result,Model model,String checkid,String checkemail,String checknick) {
		useri.setEmail(useri.getEmail1()+"@"+useri.getEmail2());
		useri.setTel(useri.getTel1()+"-"+useri.getTel2()+"-"+useri.getTel3());
		model.addAttribute("checkid",checkid);
		model.addAttribute("checknick",checknick);
		model.addAttribute("checkemail",checkemail);
		new JoinValidation().validate(useri, result);
		
		if (result.hasErrors()) {
			
			return "join/joinForm";
		}
		dao.insert(useri);
		return "redirect:log_loginForm.do";
	}

	@RequestMapping(value = "join_zipCheck.do")
	public String zipCheck() {
		return "join/zipCheck";
	}

	@RequestMapping(value = "join_dongseach.do", method = RequestMethod.POST)
	public String dongSearch(ZipInfo dong, Model model) {
		List<ZipInfo> zip = zipdao.selectzip(dong.getDong());
		model.addAttribute("zip", zip);
		return "join/zipCheck";
	}
	
	@RequestMapping(value = "join_idCheck.do")
	public String IdCheck(String id,Model model) {
		if(id==""){
			int x=1;
			int a=1;
			model.addAttribute("id",id);
			model.addAttribute("x",x);
			model.addAttribute("a",a);
			return "join/confirmId";
		}else{
		int x = dao.countId(id);
		int a=2;
		model.addAttribute("id",id);
		model.addAttribute("x",x);
		model.addAttribute("a",a);
		return "join/confirmId";
		}
	}
		
	@RequestMapping(value = "join_nickCheck.do")
	public String NickCheck(String nick,Model model) {
		if(nick==""){
			int x=1;
			int a=1;
			model.addAttribute("nick",nick);
			model.addAttribute("x",x);
			model.addAttribute("a",a);
			return "join/confirmNick";
		}else{
		int x = dao.countNick(nick);
		int a=2;
		model.addAttribute("nick",nick);
		model.addAttribute("x",x);
		model.addAttribute("a",a);
		return "join/confirmNick";
		}
	}
	
	@RequestMapping(value = "join_emailCheck.do")
	public String EmailCheck(@ModelAttribute("loginform") UserInfo useri,
			BindingResult result,String email,String email1,String email2,Model model, HttpSession session) {
		new MypageEmailValidation().validate(useri, result);
		if (result.hasErrors()) {
			int x=1;
			int a=1;
			model.addAttribute("x",x);
			model.addAttribute("a",a);
			return "join/confirmEmail";
		}
		if(email1=="" || email2==""){
			int x=1;
			int a=1;
			model.addAttribute("x",x);
			model.addAttribute("a",a);
			return "join/confirmEmail";
		}else{
		email=email1+"@"+email2;
		int x = dao.countEmail(email);
		int a=2;
		model.addAttribute("email1",email1);
		model.addAttribute("email2",email2);
		model.addAttribute("email",email);
		model.addAttribute("x",x);
		model.addAttribute("a",a);
		return "join/confirmEmail";
		}
	}
	
	
	
/*	@RequestMapping(value = "mem/IdCheck.do", method = RequestMethod.POST)
	public int IdCheck1(UserInfo id,Model model) {
		UserInfo useri = dao.selectId(id);
		model.addAttribute("useri", useri);
		return "/mem/confirmId";
	}*/
}
