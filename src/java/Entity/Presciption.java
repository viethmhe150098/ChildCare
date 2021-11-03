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
public class Presciption {
    private String reID;
    private int preiD;
    private int meID;
    private int quantity;

    public Presciption() {
    }

    public Presciption(String reID, int preiD, int meID, int quantity) {
        this.reID = reID;
        this.preiD = preiD;
        this.meID = meID;
        this.quantity = quantity;
    }

    public Presciption(String reID, int meID, int quantity) {
        this.reID = reID;
        this.meID = meID;
        this.quantity = quantity;
    }

    public String getReID() {
        return reID;
    }

    public void setReID(String reID) {
        this.reID = reID;
    }

    public int getPreiD() {
        return preiD;
    }

    public void setPreiD(int preiD) {
        this.preiD = preiD;
    }

    public int getMeID() {
        return meID;
    }

    public void setMeID(int meID) {
        this.meID = meID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Presciption{" + "reID=" + reID + ", preiD=" + preiD + ", meID=" + meID + ", quantity=" + quantity + '}';
    }
    
}
