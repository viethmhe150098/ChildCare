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
public class Reservation {
    private String reID;
    private String date;
    private float totalprice;
    private String phone;
    private String mail;
    private int status;
    private String address;
    private String fullname;
    private String recceive_name;
    private int recceive_gender;
    private String recceive_mail;
    private String recceive_tel;
    private int cid;
   

    public Reservation() {
    }

    public Reservation(String reID, String date, float totalprice, String phone, String mail, int status) {
        this.reID = reID;
        this.date = date;
        this.totalprice = totalprice;
        this.phone = phone;
        this.mail = mail;
        this.status = status;
    }

    public Reservation(String reID, String date, float totalprice, String phone, String mail, int status, String address, String fullname, String recceive_name, int recceive_gender, String recceive_mail, String recceive_tel, int cid) {
        this.reID = reID;
        this.date = date;
        this.totalprice = totalprice;
        this.phone = phone;
        this.mail = mail;
        this.status = status;
        this.address = address;
        this.fullname = fullname;
        this.recceive_name = recceive_name;
        this.recceive_gender = recceive_gender;
        this.recceive_mail = recceive_mail;
        this.recceive_tel = recceive_tel;
        this.cid = cid;
      
    }

    public Reservation(String reID, float totalprice, String phone, String mail, int status, String address, String fullname, String recceive_name, int recceive_gender, String recceive_mail, String recceive_tel, int cid) {
        this.reID = reID;
        this.totalprice = totalprice;
        this.phone = phone;
        this.mail = mail;
        this.status = status;
        this.address = address;
        this.fullname = fullname;
        this.recceive_name = recceive_name;
        this.recceive_gender = recceive_gender;
        this.recceive_mail = recceive_mail;
        this.recceive_tel = recceive_tel;
        this.cid = cid;
    }
    
    
    
    
    public Reservation(String reID, String date, float totalprice, String phone, String mail, int status, String fullname, String recceive_name, int recceive_gender, String recceive_mail, String recceive_tel) {
        this.reID = reID;
        this.date = date;
        this.totalprice = totalprice;
        this.phone = phone;
        this.mail = mail;
        this.status = status;
        this.fullname = fullname;
        this.recceive_name = recceive_name;
        this.recceive_gender = recceive_gender;
        this.recceive_mail = recceive_mail;
        this.recceive_tel = recceive_tel;
       
    }

    
 

    public Reservation(String reID, String date, float totalprice, String phone, String mail, int status, String address, String fullname, String recceive_name, int recceive_gender, String recceive_mail, String recceive_tel) {
        this.reID = reID;
        this.date = date;
        this.totalprice = totalprice;
        this.phone = phone;
        this.mail = mail;
        this.status = status;
        this.address = address;
        this.fullname = fullname;
        this.recceive_name = recceive_name;
        this.recceive_gender = recceive_gender;
        this.recceive_mail = recceive_mail;
        this.recceive_tel = recceive_tel;
    }

    public String getReID() {
        return reID;
    }

    public void setReID(String reID) {
        this.reID = reID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public float getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(float totalprice) {
        this.totalprice = totalprice;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getRecceive_name() {
        return recceive_name;
    }

    public void setRecceive_name(String recceive_name) {
        this.recceive_name = recceive_name;
    }

    public int getRecceive_gender() {
        return recceive_gender;
    }

    public void setRecceive_gender(int recceive_gender) {
        this.recceive_gender = recceive_gender;
    }

    public String getRecceive_mail() {
        return recceive_mail;
    }

    public void setRecceive_mail(String recceive_mail) {
        this.recceive_mail = recceive_mail;
    }

    public String getRecceive_tel() {
        return recceive_tel;
    }

    public void setRecceive_tel(String recceive_tel) {
        this.recceive_tel = recceive_tel;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    @Override
    public String toString() {
        return "Reservation{" + "reID=" + reID + ", date=" + date + ", totalprice=" + totalprice + ", phone=" + phone + ", mail=" + mail + ", status=" + status + ", address=" + address + ", fullname=" + fullname + ", recceive_name=" + recceive_name + ", recceive_gender=" + recceive_gender + ", recceive_mail=" + recceive_mail + ", recceive_tel=" + recceive_tel + ", cid=" + cid + '}';
    }

  

    
   
    
}
