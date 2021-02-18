<%-- 
    Document   : courseList
    Created on : Feb 11, 2021, 5:30:01 PM
    Author     : mazinad
--%>

<%@page import="co.model.RegistrationModel"%>
<%@page import="java.util.List"%>
<%@page import="co.domain.Course"%>
<%@page import="co.dao.GenericDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP LIst</title>
        <style>
            div{border: 2px solid black;
                width:500px;height: 250px;
                margin-left: 100px; 
                padding:10px 60px 20px 30px;
            }
            h5{font-size: 15px;
               margin-left: 100px;}
            h1{font-size: 20px;
               text-align: center;}
            h3{border: 2px solid black;
               text-align: center;
               width:200px;
               margin-bottom: -30px;
            }h2{border: 1px solid black;
                width:90px;margin-left: auto;
                margin-top: -20px;
            }a{color: black;
            }  
            table {
                width:100%;
                border-collapse: collapse;
            }
            th,td {padding: 2px;
                   border: 1px solid black;
                   
            }
            th{
                background-color: gray
            }
        </style>
    </head>
    <body>
        <%
            RegistrationModel con = (RegistrationModel) session.getAttribute("registration");
            if (con == null) {
                con = new RegistrationModel();
                session.setAttribute("registration", con);
            }
        %>
        <div>
        <h1>Details of selected Courses</h1>
        
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Credits</th>
                    <th>Amount</th>
                </tr>
            </thead>
            <%
                List<Course> list = con.getGetcourse();
                for (Course cr : list) {


            %>
            <tbody>
                <tr>
                    <td><%=cr.getCourse_code()%></td>
                    <td><%=cr.getCourse_name()%></td>
                    <td><%=cr.getCredits()%></td>
                    <td><%=cr.getAmount()%></td>

                </tr>
                <%
                    }
                %>
                <tr>
                    <td>Total</td>
                    <td></td>
                    <td><%=con.countReg()%></td>

                    <td><%=con.totalAmount()%></td>
                </tr>
            </tbody>
        </table>
        <h3><a href="registration-summary.jsp">Complete Registration</a></h3>
        <h2><a href="courseList.jsp">Go Back</a></h2>
        </div>
    </body>
</html>
