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
import spring.validation.ConfirmPwdValidation;
import spring.validation.MypageEmailValidation;
import spring.validation.MypageNickValidation;
import spring.validation.MypageNameValidation;
import spring.validation.MypagePwdValidation;
import spring.validation.MypageTelValidation;


@Controller
public class UpdateController {

	@Autowired
	UserDAO dao;
	@Autowired
	ZipDAO zipdao;

	@ModelAttribute("loginform")
	UserInfo getLoginform() {
		return new UserInfo();
	}

	public void setDao(UserDAO dao) {
		this.dao = dao;
	}

	public void setZipdao(ZipDAO zipdao) {
		this.zipdao = zipdao;
	}

	@RequestMapping(value = "updatePwd.do", method = RequestMethod.POST)
	public String updatePwd(@ModelAttribute("loginform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypagePwdValidation().validate(useri, result);
		UserInfo se = (UserInfo) session.getAttribute("user");
		String seid = se.getId();
		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}

		dao.updatePwd(seid, useri.getPwd());
		se.setPwd(useri.getPwd());
		session.setAttribute("user", se);		
		/*
		return "mypage/mypageForm";*/
		return "redirect:updatego.do";
	}

	@RequestMapping(value = "updateName.do", method = RequestMethod.POST)
	public String updateName(@ModelAttribute("loginform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageNameValidation().validate(useri, result);
		UserInfo se = (UserInfo) session.getAttribute("user");
		String seid = se.getId();
		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}

		dao.updateName(seid, useri.getName());
		se.setName(useri.getName());
		session.setAttribute("user", se);
		/*return "mypage/mypageForm";*/
		return "redirect:updatego.do";
	}
	@RequestMapping(value = "updateNick.do", method = RequestMethod.POST)
	public String updateNick(@ModelAttribute("loginform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageNickValidation().validate(useri, result);
		UserInfo se = (UserInfo) session.getAttribute("user");
		String seid = se.getId();
		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}

		dao.updateNick(seid, useri.getNick());
		se.setNick(useri.getNick());
		session.setAttribute("user", se);/*
		return "mypage/mypageForm";*/
		return "redirect:updatego.do";
	}
	
	
	@RequestMapping(value = "updateEmail.do", method = RequestMethod.POST)
	public String updateEmail(@ModelAttribute("loginform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageEmailValidation().validate(useri, result);
		
		UserInfo se = (UserInfo) session.getAttribute("user");
		useri.setEmail(useri.getEmail1()+"@"+useri.getEmail2());
		String seid = se.getId();
		if (result.hasErrors()) {
			System.out.println("1");
			return "mypage/updateInfo";
		}
		if(se.getTel().length()==12){
			session.setAttribute("tel1",se.getTel().substring(0, 3));
			session.setAttribute("tel2",se.getTel().substring(4, 7));
			session.setAttribute("tel3",se.getTel().substring(8, se.getTel().length()));

			
		}
		if(se.getTel().length()==13){

			session.setAttribute("tel1",se.getTel().substring(0, 3));
			session.setAttribute("tel2",se.getTel().substring(4, 8));
			session.setAttribute("tel3",se.getTel().substring(9, se.getTel().length()));
		}
		System.out.println(seid);
		System.out.println(useri.getEmail());
		dao.updateEmail(seid, useri.getEmail());
		se.setEmail(useri.getEmail());
		session.setAttribute("user", se);/*
		return "mypage/mypageForm";*/

		return "redirect:updatego.do";
	}

	@RequestMapping(value = "updateTel.do", method = RequestMethod.POST)
	public String updateTel(@ModelAttribute("loginform") UserInfo useri,
			BindingResult result, HttpSession session) {
		new MypageTelValidation().validate(useri, result);
		UserInfo se = (UserInfo) session.getAttribute("user");
		useri.setTel(useri.getTel1()+"-"+useri.getTel2()+"-"+useri.getTel3());
		String seid = se.getId();
		int atidx=se.getEmail().indexOf('@');
		session.setAttribute("email1",se.getEmail().substring(0, atidx));
		session.setAttribute("email2",se.getEmail().substring(atidx+1, se.getEmail().length()));

		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}
		System.out.println(seid);
		System.out.println(useri.getTel());
		dao.updateTel(seid, useri.getTel());
		se.setTel(useri.getTel());
		session.setAttribute("user", se);/*
		return "mypage/mypageForm";*/
		return "redirect:updatego.do";
		
		
	}
	

	@RequestMapping(value = "updateAddress.do", method = RequestMethod.POST)
	public String updateAddress(
			@ModelAttribute("loginform") UserInfo useri,
			BindingResult result, HttpSession session) {
		UserInfo se = (UserInfo) session.getAttribute("user");
		String seid = se.getId();

		dao.updateAddress(seid, useri.getAddress(),useri.getZipcode());
		se.setZipcode(useri.getZipcode());
		se.setAddress(useri.getAddress());
		session.setAttribute("user", se);/*
		return "mypage/mypageForm";*/

		return "redirect:updatego.do";
	}
	
	@RequestMapping(value = "byebye.do", method = RequestMethod.POST)
	public String out(@ModelAttribute("loginform") UserInfo useri,
			BindingResult result, HttpSession session,Model model) {
		
		new ConfirmPwdValidation().validate(useri, result);
		
		UserInfo se = (UserInfo) session.getAttribute("user");
		String seid = se.getId();
		
		if (result.hasErrors()) {
			return "mypage/byePwd";
		}
		
		int x = dao.outisId(seid, useri.getPwd());
		if (x == 1) {
			dao.deleteMem(seid, useri.getPwd());
			session.invalidate();
			return "redirect:log_loginForm.do";
		} else {
			int i = 1;
			model.addAttribute("a", i);
			return "mypage/byePwd";
		}
	}
	
	@RequestMapping(value = "byePwd.do")
	public String bye() {
		return "mypage/byePwd";
	}
	
/*	@RequestMapping(value = "updateAllInfo.do", method = RequestMethod.POST)
	public String updateAllInfo(@ModelAttribute("confirmpwdform") UserInfo useri,
			BindingResult result,HttpSession session) {
		new MypageValidation().validate(useri, result);
		
		UserInfo se = (UserInfo) session.getAttribute("user");
		String seid = se.getId();
		useri.setEmail(useri.getEmail1()+"@"+useri.getEmail2());
		useri.setTel(useri.getTel1()+"-"+useri.getTel2()+"-"+useri.getTel3());
		

		if (result.hasErrors()) {
			return "mypage/updateInfo";
		}
		dao.updateAllInfo(seid,useri);
		session.setAttribute("user", useri);
		return "mypage/mypageForm";
	}*/
	
	
	
	
	
	
	
	
	
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
		int x = dao.countNick(nick);
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
	public String EmailCheck(@ModelAttribute("loginform") UserInfo useri,
			BindingResult result,String email,String email1,String email2,Model model, HttpSession session) {
		new MypageEmailValidation().validate(useri, result);
		if (result.hasErrors()) {
			int x=1;
			int a=1;
			model.addAttribute("x",x);
			model.addAttribute("a",a);
			return "mypage/confirmEmail";
		}
		if(email1=="" || email2==""){
			int x=1;
			int a=1;
			model.addAttribute("x",x);
			model.addAttribute("a",a);
			return "mypage/confirmEmail";
		}else{
		email=email1+"@"+email2;
		int x = dao.countEmail(email);
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
