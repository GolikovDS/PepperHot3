package ru.gds.springMVC.model;


import ru.gds.springMVC.model.capsicum.*;

import java.util.HashMap;
import java.util.Map;

public class Pepper {
    String pepper;

    private static final Map<Integer, Capsicum> CAPSICUMS = new HashMap<>();

    static {
        CAPSICUMS.put(13, new Pubescens());
        CAPSICUMS.put(14, new Frutescens());
        CAPSICUMS.put(15, new Chinens());
        CAPSICUMS.put(16, new Baccatum());
        CAPSICUMS.put(17, new Annuum());
    }

    public String getPepper() {
        return pepper;
    }

    public void setPepper(String pepper) {
        this.pepper = pepper;
    }
}


