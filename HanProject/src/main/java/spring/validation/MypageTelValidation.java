package spring.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import spring.command.UserInfo;

public class MypageTelValidation implements Validator{
	
public boolean supports(Class<?> clazz){
	return UserInfo.class.isAssignableFrom(clazz);
}


public void validate(Object target, Errors errors) {
	UserInfo ui=(UserInfo)target;
	if(ui.getTel1().length() < 3 || ui.getTel2().length() < 3 || ui.getTel3().length() < 4){
		errors.rejectValue("tel", "checkcheck");
	}
}
}
