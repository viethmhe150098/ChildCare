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
public class PostCategory {
    private int pCateID;
    private String pCateName;

    public PostCategory() {
    }

    public PostCategory(int pCateID, String pCateName) {
        this.pCateID = pCateID;
        this.pCateName = pCateName;
    }

    public PostCategory(String pCateName) {
        this.pCateName = pCateName;
    }
    
    public int getpCateID() {
        return pCateID;
    }

    public void setpCateID(int pCateID) {
        this.pCateID = pCateID;
    }

    public String getpCateName() {
        return pCateName;
    }

    public void setpCateName(String pCateName) {
        this.pCateName = pCateName;
    }

    @Override
    public String toString() {
        return "PostCategory{" + "pCateID=" + pCateID + ", pCateName=" + pCateName + '}';
    }
    
    
}
