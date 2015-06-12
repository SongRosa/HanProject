package spring.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import spring.command.UserInfo;

public class MypagePwdValidation implements Validator{
	
public boolean supports(Class<?> clazz){
	return UserInfo.class.isAssignableFrom(clazz);
}

public void validate(Object target, Errors errors) {
	UserInfo ui=(UserInfo)target;
	
	if(!(ui.getPwd().equals(ui.getPwd2()))){
		errors.rejectValue("pwd2", "checkcheck");
	}
	
}
}
