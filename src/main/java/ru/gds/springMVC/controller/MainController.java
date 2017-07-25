package ru.gds.springMVC.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.gds.springMVC.controller.Util.GeneratorHtml;
import ru.gds.springMVC.model.Pepper;
import ru.gds.springMVC.model.User;
import ru.gds.springMVC.model.Vegetable;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@Controller
public class MainController {


    /*First method on start application*/
    /*Попадаем сюда на старте приложения (см. параметры аннтоции и настройки пути после деплоя) */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main() {
//        vegetable.setVegetable("pepper");
        ModelAndView modelAndView = new ModelAndView("model/index", "command", new Vegetable());
        modelAndView.addObject("pepper", new Pepper());
        modelAndView.addObject("msg", "eeeeee");
        modelAndView.addObject("userJSP", new User());
        modelAndView.setViewName("model/index");
        return modelAndView;
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView mainIndex() {
        return main();
    }


    @RequestMapping(value = "/", method = RequestMethod.POST)
    public ModelAndView select() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("model/index");

        return modelAndView;
    }

    @RequestMapping(value = "/check-user")
    public ModelAndView checkUser(@ModelAttribute("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userJSP", new User());
        modelAndView.addObject("msg", "eeeeee");
        modelAndView.setViewName("model/index");
        return modelAndView;
    }

    @RequestMapping(value = "/check-pepper")
    public ModelAndView checkPepper() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("model/index");
        return modelAndView;
    }

    @RequestMapping(value = "/check-scovel", method = RequestMethod.POST)
    @ResponseBody
    public String checkScovel(@RequestBody String json, Model model) throws IOException {

        return new GeneratorHtml().selectorPanelHtml(parserJsonToArrayInt(json));
    }

    public List<Integer> parserJsonToArrayInt(String json) {
        List<Integer> resultJson = new ArrayList<>();
        if (json.length() > 24) {
            String str = json.substring(36);
            int index = str.indexOf('&');
            int breakChar;
            while (index > 0) {
                breakChar = str.contains("Scovel")? 18: 20;
                resultJson.add(Integer.valueOf(str.substring(0, index)));
                str = str.substring(index + breakChar);
                index = str.indexOf('&');

            }
            resultJson.add(Integer.valueOf(str));
            return resultJson;
        } else {
            return resultJson;
        }
    }

}
