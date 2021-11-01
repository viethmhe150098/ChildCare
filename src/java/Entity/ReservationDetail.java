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
public class ReservationDetail {
    private int serID;
    private String reID;
    private int quantity;
    private float price;
    private String slotID;
    public ReservationDetail() {
    }

    public ReservationDetail(int serID, String reID, int quantity, float price) {
        this.serID = serID;
        this.reID = reID;
        this.quantity = quantity;
        this.price = price;
    }

    public ReservationDetail(int serID, String reID, int quantity, float price, String slotID) {
        this.serID = serID;
        this.reID = reID;
        this.quantity = quantity;
        this.price = price;
        this.slotID = slotID;
    }

    public int getSerID() {
        return serID;
    }

    public void setSerID(int serID) {
        this.serID = serID;
    }

    public String getReID() {
        return reID;
    }

    public void setReID(String reID) {
        this.reID = reID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getSlotID() {
        return slotID;
    }

    public void setSlotID(String slotID) {
        this.slotID = slotID;
    }
    
    @Override
    public String toString() {
        return "ReservationDetail{" + "serID=" + serID + ", reID=" + reID + ", quantity=" + quantity + ", price=" + price + '}';
    }
    
}
