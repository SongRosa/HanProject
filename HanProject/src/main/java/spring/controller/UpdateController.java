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
import spring.validation.MypageValidation;

@Controller
public class UpdateController {

	@Autowired
	UserDAO dao;
	@Autowired
	ZipDAO zipdao;

	@ModelAttribute("confirmpwdform")
	UserInfo getconfirmpwdform() {
		return new UserInfo();
	}

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	public void setZipdao(ZipDAO zipdao) {
		this.zipdao = zipdao;
	}

	@RequestMapping(value = "updatePwd.do", method = RequestMethod.POST)
	public String updatePwd(@ModelAttribute("confirmpwdform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageValidation().validate(useri, result);
		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}
		String seid = (String) session.getAttribute("id");
/*		String sepwd = (String) session.getAttribute("pwd");
		String sename = (String) session.getAttribute("name");
		String senick = (String) session.getAttribute("nick");
		String seemail = (String) session.getAttribute("email");
		String setel = (String) session.getAttribute("tel");
		String seaddress = (String) session.getAttribute("address");*/
		System.out.println(seid);
		System.out.println(useri.getPwd());
		dao.updatePwd(seid, useri.getPwd());
		return "mypage/mypageForm";
	}

	@RequestMapping(value = "updatename.do", method = RequestMethod.POST)
	public String updateName(@ModelAttribute("confirmpwdform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageValidation().validate(useri, result);
		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}
		String seid = (String) session.getAttribute("id");
		System.out.println(seid);
		System.out.println(useri.getPwd());
		dao.updatePwd(seid, useri.getPwd());
		return "mypage/mypageForm";
	}

	@RequestMapping(value = "updatenick.do", method = RequestMethod.POST)
	public String updateNick(@ModelAttribute("confirmpwdform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageValidation().validate(useri, result);
		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}
		String seid = (String) session.getAttribute("id");
		System.out.println(seid);
		System.out.println(useri.getNick());
		dao.updateNick(seid, useri.getNick());
		return "mypage/mypageForm";
	}

	@RequestMapping(value = "updateemail.do", method = RequestMethod.POST)
	public String updateEmail(@ModelAttribute("confirmpwdform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageValidation().validate(useri, result);
		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}
		String seid = (String) session.getAttribute("id");
		System.out.println(seid);
		System.out.println(useri.getPwd());
		dao.updatePwd(seid, useri.getPwd());
		return "mypage/mypageForm";
	}

	@RequestMapping(value = "updatetel.do", method = RequestMethod.POST)
	public String updateTel(@ModelAttribute("confirmpwdform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageValidation().validate(useri, result);
		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}
		String seid = (String) session.getAttribute("id");
		System.out.println(seid);
		System.out.println(useri.getPwd());
		dao.updatePwd(seid, useri.getPwd());
		return "mypage/mypageForm";
	}

	@RequestMapping(value = "updateaddress.do", method = RequestMethod.POST)
	public String updateAddress(
			@ModelAttribute("confirmpwdform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageValidation().validate(useri, result);
		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}
		String seid = (String) session.getAttribute("id");
		System.out.println(seid);
		System.out.println(useri.getPwd());
		dao.updatePwd(seid, useri.getPwd());
		return "mypage/mypageForm";
	}
	
	@RequestMapping(value = "update_nickCheck.do")
	public String NickCheck(String nick,Model model) {
		if(nick==""){
			int x=1;
			int a=1;
			model.addAttribute("nick",nick);
			model.addAttribute("x",x);
			model.addAttribute("a",a);
			return "mypage/confirmNick";
		}else{
		int x = dao.countId(nick);
		int a=2;
		model.addAttribute("nick",nick);
		model.addAttribute("x",x);
		model.addAttribute("a",a);
		return "mypage/confirmNick";
		}
	}
	
	@RequestMapping(value = "update_zipCheck.do")
	public String zipCheck() {
		return "mypage/zipCheck";
	}

	@RequestMapping(value = "update_dongseach.do", method = RequestMethod.POST)
	public String dongSearch(ZipInfo dong, Model model) {
		List<ZipInfo> zip = zipdao.selectzip(dong.getDong());
		model.addAttribute("zip", zip);
		return "mypage/zipCheck";
	}
	
	@RequestMapping(value = "update_emailCheck.do")
	public String EmailCheck(String email,String email1,String email2,Model model) {
		if(email1=="" || email2==""){
			int x=1;
			int a=1;
			model.addAttribute("x",x);
			model.addAttribute("a",a);
			return "mypage/confirmEmail";
		}else{
		email=email1+"@"+email2;
		int x = dao.countId(email);
		int a=2;
		model.addAttribute("email1",email1);
		model.addAttribute("email2",email2);
		model.addAttribute("email",email);
		model.addAttribute("x",x);
		model.addAttribute("a",a);
		return "mypage/confirmEmail";
		}
	}

}
