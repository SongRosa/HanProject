package spring.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.command.UserInfo;

public class MypageEmailValidation  implements Validator{
	
public boolean supports(Class<?> clazz){
	return UserInfo.class.isAssignableFrom(clazz);
}


public void validate(Object target, Errors errors) {
	UserInfo ui=(UserInfo)target;

	if(ui.getEmail1()==null || ui.getEmail1().trim().isEmpty()){
		errors.rejectValue("email2","required");
	}

	if(!(ui.getEmail1()==null || ui.getEmail1().trim().isEmpty())){

		if(!(ui.getEmail2().equals("naver.com")||ui.getEmail2().equals("daum.net")||ui.getEmail2().equals("gmail.com")||ui.getEmail2().equals("yahoo.com")||ui.getEmail2().equals("nate.com"))){
			errors.rejectValue("email2", "checkcheck");
			
		}
	}
		
	if(!(ui.getEmail1()==null || ui.getEmail1().trim().isEmpty()||ui.getEmail2()==null || ui.getEmail2().trim().isEmpty())){

		if(ui.getEmail2().equals("naver.com")||ui.getEmail2().equals("daum.net")||ui.getEmail2().equals("gmail.com")||ui.getEmail2().equals("yahoo.com")||ui.getEmail2().equals("nate.com")){
			if(!ui.getCheckemail().equals("yes")){
				errors.rejectValue("checkemail", "checkcheck");
			}
		}
	}

	
	

	}
}
