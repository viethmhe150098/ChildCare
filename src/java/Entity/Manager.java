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
public class Manager {
    private int mID;
    private int aID;
    private String first_name;
    private String last_name;
    private int age;
    private int gender;
    private String username;
    private String password;
    private String image;
    private int role;
    private String address;
    private String email;
    private String phone;

    public Manager(int mID, int aID, String first_name, String last_name, int age, int gender, String username, String password, String image, int role, String address) {
        this.mID = mID;
        this.aID = aID;
        this.first_name = first_name;
        this.last_name = last_name;
        this.age = age;
        this.gender = gender;
        this.username = username;
        this.password = password;
        this.image = image;
        this.role = role;
        this.address = address;
    }

    public Manager() {
    }

    
    
    public int getmID() {
        return mID;
    }

    public void setmID(int mID) {
        this.mID = mID;
    }

    public int getaID() {
        return aID;
    }

    public void setaID(int aID) {
        this.aID = aID;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Manager{" + "mID=" + mID + ", aID=" + aID + ", first_name=" + first_name + ", last_name=" + last_name + ", age=" + age + ", gender=" + gender + ", username=" + username + ", password=" + password + ", image=" + image + ", role=" + role + ", address=" + address + '}';
    }

    


  
    
}
