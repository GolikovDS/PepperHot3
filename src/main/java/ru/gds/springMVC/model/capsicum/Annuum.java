package ru.gds.springMVC.model.capsicum;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Annuum extends Capsicum {
    private static final Map<Integer, List<String>> peppers = new HashMap<>();

    static {
        List<String> pepper1 = new ArrayList<>();
        pepper1.add(getTagImg("resources/images/peppers/annuum/jalapenoEarly.jpg") + "<br/><p>Халапеньо Ранний</p>");
        pepper1.add(getTagImg("resources/images/peppers/annuum/jamaicanRed.jpg") + "<br/><p>Jamaican Red Hot</p>");


        peppers.put(1, pepper1);
    }

    public static String getHtml(int[] scovels) {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < peppers.get(1).size(); i++) {
            result.append("<div class=\"cell-select-pane\"> ").append(peppers.get(1).get(i));
        }
        return result.toString();
    }

}
