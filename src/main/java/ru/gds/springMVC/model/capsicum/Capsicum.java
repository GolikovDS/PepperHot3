package ru.gds.springMVC.model.capsicum;


public class Capsicum {
    private int scovel;

    public int getScovel() {
        return scovel;
    }

    public void setScovel(int scovel) {
        this.scovel = scovel;
    }

    public static String getTagImg(String src){
        return "<img src=\"" + src + "\"/>";
    }
}
