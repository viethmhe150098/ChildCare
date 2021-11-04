/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author Viet
 */
public class Service {
    private String sname;
    private String scID;
    private double sprice;
    private String description;
    private int maxquantity;
    private String ser_image;
    private String sID;
    private int amount;

    public Service(String sname, String scID, double sprice, String description, int maxquantity, String ser_image, String sID) {
        this.sname = sname;
        this.scID = scID;
        this.sprice = sprice;
        this.description = description;
        this.maxquantity = maxquantity;
        this.ser_image = ser_image;
        this.sID = sID;
    }

    public Service(String sID,String sname, double sprice, String description, int maxquantity, String ser_image) {
        this.sID = sID;
        this.sname = sname;
        this.sprice = sprice;
        this.description = description;
        this.maxquantity = maxquantity;
        this.ser_image = ser_image;
    }
    

    public Service(String sname, String scID, double sprice, String description, int maxquantity, String ser_image, String sID, int amount) {
        this.sname = sname;
        this.scID = scID;
        this.sprice = sprice;
        this.description = description;
        this.maxquantity = maxquantity;
        this.ser_image = ser_image;
        this.sID = sID;
        this.amount = amount;
    }
    
    
    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getScID() {
        return scID;
    }

    public void setScID(String scID) {
        this.scID = scID;
    }

    public double getSprice() {
        return sprice;
    }

    public void setSprice(double sprice) {
        this.sprice = sprice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getMaxquantity() {
        return maxquantity;
    }

    public void setMaxquantity(int maxquantity) {
        this.maxquantity = maxquantity;
    }

    public String getSer_image() {
        return ser_image;
    }

    public void setSer_image(String ser_image) {
        this.ser_image = ser_image;
    }

    public String getsID() {
        return sID;
    }

    public void setsID(String sID) {
        this.sID = sID;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    
    @Override
    public String toString() {
        return "Service{" + "sname=" + sname + ", scID=" + scID + ", sprice=" + sprice + ", description=" + description + ", maxquantity=" + maxquantity + ", ser_image=" + ser_image + ", sID=" + sID + '}';
    }
    
}
