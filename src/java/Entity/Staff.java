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
public class Staff {
    private int stID;
    private String first_name;
    private int aID;
    private String last_name;
     private int age;
     private String gender;
    private String username;
    private String password;
    private String image;
    private String address;
    private int role;
    private int isDoctor;
    private String email;
    private String phone;

    public Staff() {
    }

    public Staff(int stID, String first_name, int aID, String last_name, int age, String gender, String username, String password, String image, String address, int role, int isDoctor) {
        this.stID = stID;
        this.first_name = first_name;
        this.aID = aID;
        this.last_name = last_name;
        this.age = age;
        this.gender = gender;
        this.username = username;
        this.password = password;
        this.image = image;
        this.address = address;
        this.role = role;
        this.isDoctor = isDoctor;
    }

    public int getStID() {
        return stID;
    }

    public void setStID(int stID) {
        this.stID = stID;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public int getaID() {
        return aID;
    }

    public void setaID(int aID) {
        this.aID = aID;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getIsDoctor() {
        return isDoctor;
    }

    public void setIsDoctor(int isDoctor) {
        this.isDoctor = isDoctor;
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
        return "Staff{" + "stID=" + stID + ", first_name=" + first_name + ", aID=" + aID + ", last_name=" + last_name + ", age=" + age + ", gender=" + gender + ", username=" + username + ", password=" + password + ", image=" + image + ", address=" + address + ", role=" + role + ", isDoctor=" + isDoctor + '}';
    }

    
    
}
