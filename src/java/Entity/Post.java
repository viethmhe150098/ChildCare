/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.Date;

/**
 *
 * @author Viet
 */
public class Post {
    private String title;
    private int mID;
    private String date_create;
    private String updata_date;
    private String status;
    private int pcateID;
    private int pID;
    private String image;
    private String content;
    public Post() {
    }

    public Post(String title, int mID, String date_create, String updata_date, String status, int pcateID, int pID, String image, String content) {
        this.title = title;
        this.mID = mID;
        this.date_create = date_create;
        this.updata_date = updata_date;
        this.status = status;
        this.pcateID = pcateID;
        this.pID = pID;
        this.image = image;
        this.content = content;
    }

    public Post(String title, int mID, String date_create, String updata_date, String status, int pcateID, String image, String content) {
        this.title = title;
        this.mID = mID;
        this.date_create = date_create;
        this.updata_date = updata_date;
        this.status = status;
        this.pcateID = pcateID;
        this.image = image;
        this.content = content;
    }
    
    
    public Post(String title, int mID, String date_create, String updata_date, String status, int pcateID, int pID) {
        this.title = title;
        this.mID = mID;
        this.date_create = date_create;
        this.updata_date = updata_date;
        this.status = status;
        this.pcateID = pcateID;
        this.pID = pID;
    }

    public Post(String title, int mID, String date_create, String updata_date, String status, int pcateID, int pID, String image) {
        this.title = title;
        this.mID = mID;
        this.date_create = date_create;
        this.updata_date = updata_date;
        this.status = status;
        this.pcateID = pcateID;
        this.pID = pID;
        this.image = image;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getmID() {
        return mID;
    }

    public void setmID(int mID) {
        this.mID = mID;
    }

    public String getDate_create() {
        return date_create;
    }

    public void setDate_create(String date_create) {
        this.date_create = date_create;
    }

    public String getUpdata_date() {
        return updata_date;
    }

    public void setUpdata_date(String updata_date) {
        this.updata_date = updata_date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getPcateID() {
        return pcateID;
    }

    public void setPcateID(int pcateID) {
        this.pcateID = pcateID;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
    @Override
    public String toString() {
        return "Post{" + "title=" + title + ", mID=" + mID + ", date_create=" + date_create + ", updata_date=" + updata_date + ", status=" + status + ", pcateID=" + pcateID + ", pID=" + pID + ", image=" + image + ", content=" + content + '}';
    }

    
    
}
