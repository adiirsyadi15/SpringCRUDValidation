package crud.com.springcrudmahasiswa.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import crud.com.springcrudmahasiswa.model.Jurusan;

@Component
public class JurusanValidation implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return Jurusan.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Jurusan jurusan = (Jurusan) target;
		String noJur = jurusan.getNoJur();
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nama", "jurusan.nama.empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "noJur", "jurusan.noJur.empty");
	
		if (noJur.length()>5) {
			errors.rejectValue("noJur", "jurusan.nojur.lenght");
		}
	}
	
	
}
