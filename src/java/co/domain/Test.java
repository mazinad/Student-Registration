/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.domain;

import co.dao.GenericDao;

/**
 *
 * @author mazinad
 */
public class Test {
    public static void main(String[] args) {
        GenericDao<Course>dao=new GenericDao<>(Course.class);
        Course c=new Course("C05","Intro to Bible",2, 30000.0);
        dao.create(c);
        
    }
}
