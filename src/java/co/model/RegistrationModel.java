/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.model;

import co.dao.GenericDao;
import co.domain.Course;
import co.domain.Registration;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author mazinad
 */
public class RegistrationModel {

    private int codeinput;
    private String nameinput = "";
    private String genderinput = "";
    private String dateinput;
    private int countCourse;
    private int numberofcourses;
    private int price;
    private Registration s = new Registration();
    private List<Course> getcourse = new ArrayList<>();

    public int getCodeinput() {
        return codeinput;
    }

    public void setCodeinput(int codeinput) {
        this.codeinput = codeinput;
    }

    public String getNameinput() {
        return nameinput;
    }

    public void setNameinput(String nameinput) {
        this.nameinput = nameinput;
    }

    public String getGenderinput() {
        return genderinput;
    }

    public void setGenderinput(String genderinput) {
        this.genderinput = genderinput;
    }

    public String getDateinput() {
        return dateinput;
    }

    public void setDateinput(String dateinput) {
        this.dateinput = dateinput;
    }

    public int getCountCourse() {
        return countCourse;
    }

    public void setCountCourse(int countCourse) {
        this.countCourse = countCourse;
    }

    public int getNumberofcourses() {
        return numberofcourses;
    }

    public void setNumberofcourses(int numberofcourses) {
        this.numberofcourses = numberofcourses;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Registration getS() {
        return s;
    }

    public void setS(Registration s) {
        this.s = s;
    }

    public void addCourse(Course cr) {
        getcourse.add(cr);
    }

    public void removeCourse(Course co) {
        getcourse.remove(co);
    }

    public Integer countCourse() {
        return getcourse.size();
    }

    public Integer countReg() {
        int courses = 0;
        for (Course cr : getcourse) {
            courses = courses + cr.getCredits();
        }
        return courses;
    }

    public List<Course> getGetcourse() {
        return getcourse;
    }

    public void setGetcourse(List<Course> getcourse) {
        this.getcourse = getcourse;
    }

    public String totalAmount() {
        double total = 0;
        for (Course co : getcourse) {
            total = total + co.getAmount();
        }
        DecimalFormat dcf = new DecimalFormat("###,### RWF");
        return dcf.format(total);
    }
    public boolean isExist(String code){
        boolean isexist=false;
        for(Course cr:getcourse){
            if(cr.getCourse_code().equals(code)){
                isexist=true;
            }
        }
     return isexist;       
    }
    
}
