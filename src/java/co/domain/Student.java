/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.domain;

import co.dao.GenericDao;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mazinad
 */
public class Student {
  private int student_id;
private String name;
private String gender;
private LocalDate dob;

    public Student() {
    }

    public Student(int student_id, String name, String gender, LocalDate dob) {
        this.student_id = student_id;
        this.name = name;
        this.gender = gender;
        this.dob = dob;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

  
}
