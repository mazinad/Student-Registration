<%@page import="co.model.RegistrationModel"%>
<%@page import="co.dao.GenericDao"%>
<%@page import="co.domain.Course"%>
<%
    String code=request.getParameter("id");
    GenericDao<Course>dao=new GenericDao<>(Course.class);
    Course c=dao.findbyID(code);
    RegistrationModel con=(RegistrationModel)session.getAttribute("registration");
            if(con==null){
                con=new RegistrationModel();
                session.setAttribute("registration", con);
            }
            con.addCourse(c);
%>
<jsp:forward page="courseList.jsp"/>