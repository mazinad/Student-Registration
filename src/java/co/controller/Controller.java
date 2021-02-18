/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.controller;

import co.dao.GenericDao;
import co.domain.Registration;
import co.domain.Student;
import co.model.RegistrationModel;
import java.io.IOException;
import java.time.LocalDate;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mazinad
 */
@WebServlet("/")
public class Controller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();
        switch (path) {
            case "/getStudent":
                getStudent(request, response);
                break;
            case "/register":
                register(request, response);
                break;
        }
    }

    public void getStudent(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispt = request.getRequestDispatcher("/courseList.jsp");

        int codeinput = Integer.parseInt(request.getParameter("id"));
        String nameinput = request.getParameter("N");
        String genderinput = request.getParameter("G");
        LocalDate dateinput = LocalDate.parse(request.getParameter("D"));
        Student stud = new Student(codeinput, nameinput, genderinput, dateinput);
        request.getSession().setAttribute("student", stud);

        dispt.forward(request, response);
    }


public void register(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
         
                 RegistrationModel reg=(RegistrationModel)request.getSession().getAttribute("registration");
        if(reg==null){
            reg=new RegistrationModel();
            request.getSession().setAttribute("registration", reg);
        }
        
        RequestDispatcher dis=request.getRequestDispatcher("/registration-summary.jsp");
        RequestDispatcher disp=request.getRequestDispatcher("/confirmation.jsp");
       Student stud=(Student)request.getSession().getAttribute("student");
         Registration regi=new Registration();
         regi.setRegId(stud.getStudent_id());
         regi.setRegName(stud.getName());
         regi.setRegGender(stud.getGender());
         regi.setRegDob(stud.getDob());
         regi.setTotal_courses(reg.countReg());
         regi.setTotal_credits(reg.countCourse());
         regi.setFees(reg.totalAmount());
         GenericDao

<Registration>dao=new GenericDao<>(Registration.class
);
         dao.create(regi);
         disp.forward(request, response);
     }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
