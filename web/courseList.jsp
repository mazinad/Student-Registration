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
        <title>Course</title>
        <style>
            div{
                border: 2px solid black;
                width: 900px;
                height: 450px;
                margin-right:auto;
            }
            table {
                width: 50%;        
                border-collapse: collapse;
                margin-left: 20px
            }
            th,td {
                padding: 2px;
                border: 1px solid black;
            }
            th {
                height: 10%;
                text-align: left;
                background-color: gray
            }
            h3{
                text-align:right;
                font-size: 14px;
                position: relative;
                bottom: 160px;
                margin-right: 100px
            }
            a{
                text-decoration: none;
                text-align-last: inherit
            }
            h1{
                font-size: 20px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div>
            <h1>Course to be selected</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Credits</th>
                        <th>Amount</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <%

                    RegistrationModel con = (RegistrationModel) session.getAttribute("registration");
                    if (con == null) {
                        con = new RegistrationModel();
                        session.setAttribute("registration", con);
                    }

                    GenericDao<Course> dao = new GenericDao<>(Course.class);
                    List<Course> list = dao.findAll();
                    for (Course cr : list) {


                %>
                <tbody>
                    <tr>
                        <td><%=cr.getCourse_code()%></td>
                        <td><%=cr.getCourse_name()%></td>
                        <td><%=cr.getCredits()%></td>
                        <td><%=cr.getAmount()%></td>
                        <td>
                            <%
                                if (con.isExist(cr.getCourse_code())) {
                            %>
                            <a href="deleteCourse.jsp?id=<%=cr.getCourse_code()%>">Remove</a>
                            <%
                            } else {

                            %>

                            <a href="addCourse.jsp?id=<%=cr.getCourse_code()%>">Add</a>
                            <%
                                }
                            %>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <h3>Your current selection</h3>
            <h3>The number of course(s):     <%=con.countCourse()%></h3>
            <h3>The total credit(s):         <%=con.countReg()%></h3>
            <h3>The amount of course(s)added:        <%=con.totalAmount()%></h3>
            <h4><a href="courseView.jsp">View Details</a></h4>
            <h4><a href="registration-summary.jsp">Complete registration</a></h4>
        </div>
    </body>
</html>
