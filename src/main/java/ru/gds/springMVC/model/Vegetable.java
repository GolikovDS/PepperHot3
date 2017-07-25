package ru.gds.springMVC.model;


public class Vegetable {
    private String vegetable;
    private Pepper pepper;
    private String scovel;
    public String getVegetable() {
        return vegetable;
    }

    public void setVegetable(String vegetable) {
        this.vegetable = vegetable;
    }

    public Pepper getPepper() {
        return pepper;
    }

    public void setPepper(Pepper pepper) {
        this.pepper = pepper;
    }

    public String getScovel() {
        return scovel;
    }

    public void setScovel(String scovel) {
        this.scovel = scovel;
    }
}
