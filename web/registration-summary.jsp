
<%@page import="co.domain.Student"%>
<%@page import="java.util.List"%>
<%@page import="co.domain.Course"%>
<%@page import="co.model.RegistrationModel"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <style>
            
            div{
                border: 2px solid black;
                width:250px;height: 300px;
                margin-left: 100px; 
                padding:10px 60px 20px 30px;
            } 
            
            h1{
                font-size: 30px;
            }
            dan{
                margin-bottom: -30px;
            }
        </style>
    </head>
    <body>
        <div>
        <h1>Registration Form</h1>
        <table>
            <tbody>
                <%
                    RegistrationModel stude = (RegistrationModel) request.getSession().getAttribute("registration");
                    if (stude == null) {
                        stude = new RegistrationModel();
                        request.getSession().setAttribute("registration", stude);
                    }
                    Student stud=(Student)request.getSession().getAttribute("student");
                    request.getSession().setAttribute("student",stud);
                %>  
                <tr>

                    <td>ID</td>

                    <td><%=stud.getStudent_id() %></td>
                </tr>
                <tr>
                    <td>Name</td>

                    <td><%=stud.getName() %></td>
                </tr>
                <tr>
                    <td>Gender</td>

                    <td><%=stud.getGender() %></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><%=stud.getDob()  %></td>
                </tr>
                <tr>
                    <td>Credit</td>

                    <td>${registration.countCourse() }</td>
                </tr>
                <tr>
                    <td>Courses</td>
                    <td>${registration.countReg() }</td>
                </tr>
                <tr>
                    <td>Fees</td>
                    <td>${registration.totalAmount()}</td>
                </tr>
                <tr>
                    <td class="dan"><a href="register">Registration</td>
                </tr>
            </tbody>
        </table>
          </div>
    </form>
</body>
</html>