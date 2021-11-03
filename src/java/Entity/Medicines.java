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
public class Medicines {
    private int meID;
    private String meName;
    private int meQuantity;
    private String meImg;
    private String meDes;
    private double mePrice;
    private int meStatus;
    
    public Medicines() {
    }

    public Medicines(int meID, String meName, int meQuantity, String meImg, String meDes, double mePrice, int meStatus) {
        this.meID = meID;
        this.meName = meName;
        this.meQuantity = meQuantity;
        this.meImg = meImg;
        this.meDes = meDes;
        this.mePrice = mePrice;
        this.meStatus = meStatus;
    }
    
    public Medicines(int meID, String meName, int meQuantity, String meImg, String meDes, double mePrice) {
        this.meID = meID;
        this.meName = meName;
        this.meQuantity = meQuantity;
        this.meImg = meImg;
        this.meDes = meDes;
        this.mePrice = mePrice;
    }

    public Medicines(String meName, int meQuantity, String meImg, String meDes, double mePrice) {
        this.meName = meName;
        this.meQuantity = meQuantity;
        this.meImg = meImg;
        this.meDes = meDes;
        this.mePrice = mePrice;
    }

    public int getMeStatus() {
        return meStatus;
    }

    public void setMeStatus(int meStatus) {
        this.meStatus = meStatus;
    }
    
    public int getMeID() {
        return meID;
    }

    public void setMeID(int meID) {
        this.meID = meID;
    }

    public String getMeName() {
        return meName;
    }

    public void setMeName(String meName) {
        this.meName = meName;
    }

    public int getMeQuantity() {
        return meQuantity;
    }

    public void setMeQuantity(int meQuantity) {
        this.meQuantity = meQuantity;
    }

    public String getMeImg() {
        return meImg;
    }

    public void setMeImg(String meImg) {
        this.meImg = meImg;
    }

    public String getMeDes() {
        return meDes;
    }

    public void setMeDes(String meDes) {
        this.meDes = meDes;
    }

    public double getMePrice() {
        return mePrice;
    }

    public void setMePrice(double mePrice) {
        this.mePrice = mePrice;
    }

    @Override
    public String toString() {
        return "Medicine{" + "meID=" + meID + ", meName=" + meName + ", meQuantity=" + meQuantity + ", meImg=" + meImg + ", meDes=" + meDes + ", mePrice=" + mePrice + '}';
    }
    
}
