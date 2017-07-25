package ru.gds.springMVC.model;


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class VegetableValidator implements Validator{
    @Override
    public boolean supports(Class<?> clazz) {
        return Vegetable.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pepper", "valid.pepper");
    }
}
