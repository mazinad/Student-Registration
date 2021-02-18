/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.domain;

import java.time.LocalDate;
import java.util.Date;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Edgar
 */
@Entity
public class Registration {

    @Id
    private int regId;
    private String regName;
    @Convert(converter = LocalDateConverter.class)
    private LocalDate regDob;
    private String regGender;
    private int total_credits;
    private int total_courses;
    private String fees;

    public int getRegId() {
        return regId;
    }

    public void setRegId(int regId) {
        this.regId = regId;
    }

    public String getRegName() {
        return regName;
    }

    public void setRegName(String regName) {
        this.regName = regName;
    }

    public LocalDate getRegDob() {
        return regDob;
    }

    public void setRegDob(LocalDate regDob) {
        this.regDob = regDob;
    }

    public String getRegGender() {
        return regGender;
    }

    public void setRegGender(String regGender) {
        this.regGender = regGender;
    }

    public int getTotal_credits() {
        return total_credits;
    }

    public void setTotal_credits(int total_credits) {
        this.total_credits = total_credits;
    }

    public int getTotal_courses() {
        return total_courses;
    }

    public void setTotal_courses(int total_courses) {
        this.total_courses = total_courses;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }

 
}