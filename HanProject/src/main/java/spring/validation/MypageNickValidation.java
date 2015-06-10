
package spring.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import spring.command.UserInfo;

public class MypageNickValidation implements Validator{
	
public boolean supports(Class<?> clazz){
	return UserInfo.class.isAssignableFrom(clazz);
}


public void validate(Object target, Errors errors) {
	UserInfo ui=(UserInfo)target;

	ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nick", "required");


	if(!(ui.getNick()==null || ui.getNick().trim().isEmpty())){
		if(!ui.getChecknick().equals("yes")){
			errors.rejectValue("checknick", "checkcheck");
		}
	}
	}
}
