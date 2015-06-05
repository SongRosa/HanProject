package spring.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.command.UserInfo;

public class JoinValidation implements Validator{
	
public boolean supports(Class<?> clazz){
	return UserInfo.class.isAssignableFrom(clazz);
}


public void validate(Object target, Errors errors) {
	UserInfo ui=(UserInfo)target;

	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id", "required");
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pwd", "required");
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nick", "required");		

	if(!(ui.getId()==null || ui.getId().trim().isEmpty())){
	if(!ui.getCheckid().equals("yes")){
		errors.rejectValue("checkid", "checkcheck");
	}
	}
	

	
	if(!(ui.getPwd()==null || ui.getPwd().trim().isEmpty())){
		if(ui.getPwd().length()<8){
			errors.rejectValue("pwd", "checkcheck");
		}
	}

	if(!(ui.getNick()==null || ui.getNick().trim().isEmpty())){
		if(!ui.getChecknick().equals("yes")){
			errors.rejectValue("checknick", "checkcheck");
		}
	}
	
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
