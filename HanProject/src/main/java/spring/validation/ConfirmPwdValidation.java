package spring.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.command.UserInfo;

public class ConfirmPwdValidation  implements Validator{
	
public boolean supports(Class<?> clazz){
	return UserInfo.class.isAssignableFrom(clazz);
}

public void validate(Object target, Errors errors) {
	UserInfo ui=(UserInfo)target;
	
	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pwd", "required");	
	
	if(!(ui.getPwd()==null || ui.getPwd().trim().isEmpty())){
		if(ui.getPwd().length()<8){
			errors.rejectValue("pwd", "checkcheck");
		}
	}
}



}
