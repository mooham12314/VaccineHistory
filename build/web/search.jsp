<%-- 
    Document   : show
    Created on : Dec 2, 2021, 1:11:22 PM
    Author     : mooham12314
--%>

<%@page import="java.util.List"%>
<%@page import="VacServ.StudentTable"%>
<%@page import="java.util.Iterator"%>
<%@page import="VacServ.Student"%>
<%@page import="java.util.Vector"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Student Page</title>
    </head>
    <%Student std = (Student)session.getAttribute("student"); %>
    <jsp:useBean id="emp" class="VacServ.Student" scope="request"/>
    <%
            List<Student> empList = StudentTable.findAllStudent();
            Iterator<Student> itr = empList.iterator();
     %>
     
    <body>
        <h1>Show Student</h1>
             
 <table border="1">
          <tr>
            <th>ID</th>
            <th>Vaccine Name</th>
          </tr>
          <%
                while(itr.hasNext()) {
                   emp = itr.next();
                   out.println("<tr>");
                   out.println("<td> "+ emp.getId() + "</td>");
                   out.println("<td> "+ emp.getVaccineName() + "</td>");
                   out.println("<tr>");
               }
          %>
 </table>
 
 <a href="index.html">Back to Main Page</a>
 
    </body>
</html>
