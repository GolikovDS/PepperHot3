package ru.gds.springMVC.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.gds.springMVC.model.VegetableValidator;

@Controller
@RequestMapping("/vegetable")
public class SelectVegetableController {

    @Autowired
    @Qualifier("vegetableValidator")
    private Validator validator;

    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }

    @RequestMapping(method = RequestMethod.POST)
    public String selectVegetable(Model model, @Validated VegetableValidator validator, BindingResult result) {
        if (result.hasErrors()) {
            System.out.println("true");
        } else {
            System.out.println("false");
        }

        return "model/index";
    }

}
