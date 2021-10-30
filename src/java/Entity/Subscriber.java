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
public class Subscriber {
    private int subId;
    private String subEmail;

    public Subscriber() {
    }

    public Subscriber(int subId, String subEmail) {
        this.subId = subId;
        this.subEmail = subEmail;
    }

    public Subscriber(String subEmail) {
        this.subEmail = subEmail;
    }
    
    public int getSubId() {
        return subId;
    }

    public void setSubId(int subId) {
        this.subId = subId;
    }

    public String getSubEmail() {
        return subEmail;
    }

    public void setSubEmail(String subEmail) {
        this.subEmail = subEmail;
    }

    @Override
    public String toString() {
        return "Subcriber{" + "subId=" + subId + ", subEmail=" + subEmail + '}';
    }
    
}
