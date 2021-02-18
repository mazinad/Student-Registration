<%-- 
    Document   : confirmation
    Created on : Feb 16, 2021, 2:52:54 PM
    Author     : mazinad
--%>

<%@page import="co.domain.Student"%>
<%@page import="co.model.RegistrationModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            div{
                border: 1px solid black;
                width: 400px;
                margin: auto;
                padding: 40px
            }
            h1{
                text-align: center
            }
            p{
             text-align: center   
            }
        </style>
    </head>
    <body>
        <%
           
                    RegistrationModel stude = (RegistrationModel) request.getSession().getAttribute("registration");
                    if (stude == null) {
                        stude = new RegistrationModel();
                        request.getSession().setAttribute("registration", stude);
                    }
                    Student stud=(Student)request.getSession().getAttribute("student");
                    request.getSession().setAttribute("student",stud);
                 
        %>
        <br>
        <br>
        <div>
            <h1>Registration Feedback</h1>
            <p>Dear <%=stud.getGender().equals("Male")? "Mr.":"Ms "%> <%=stud.getName() %> , thank you for registering</p>
            <p>you requested to pay  <%=stude.totalAmount() %></p>
        </div>
    </body>
</html>
