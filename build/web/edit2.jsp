<%-- 
    Document   : editCF
    Created on : Dec 2, 2021, 1:11:22 PM
    Author     : mooham12314
--%>

<%@page import="VacServ.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Student Page</title>
    </head>
    <%Student std = (Student)session.getAttribute("student"); %>
    <body>
        <h1>Edit Student Page</h1>
        <form name="updateStudent" action="EditStudent">
            ID: <%=std.getId()%>
            </br>
            Vaccine Name: <input type="text" name="name" value="<%=std.getVaccineName()%>" size="40" />
            </br>
            <input type="submit" value="Submit" name="submit" />
            <input type="submit" value="Cancel" name="cancel" />
        </form>
            <br>
        <jsp:include page="show.jsp" flush="true" />
    </body>
</html>
