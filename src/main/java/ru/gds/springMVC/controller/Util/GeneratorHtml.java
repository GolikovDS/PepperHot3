package ru.gds.springMVC.controller.Util;


import ru.gds.springMVC.model.capsicum.Annuum;

import java.util.List;

public class GeneratorHtml {
    public String selectorPanelHtml(List<Integer> numbers) {
//        StringBuilder builder = new StringBuilder();
//        for (int number : numbers) {
//            builder.append(includeInDiv(String.valueOf(number), "cell-select-pane"));
//        }
        return Annuum.getHtml(new int[]{1});
    }


    public String includeInDiv(String text, String clazz) {
        return "<div class=\"" + clazz + "\">" + text + "</div>";
    }
}
