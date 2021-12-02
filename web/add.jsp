<%-- 
    Document   : add
    Created on : Dec 2, 2021, 1:11:22 PM
    Author     : mooham12314
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Page</title>
    </head>
    <body>
        <h1>Add Student</h1>
        <form name="addStudent" action="add" method="POST">
            ID: <input type="text" name="id" value="" size="10" />
            </br>
            Name: <input type="text" name="name" value="" size="20" />
            </br>
            Vaccine: <input type="text" name="gpa" value="" size="10" />
            </br>
            <input type="submit" value="Submit" name="submit" />
        </form>
        <br>
        <jsp:include page="show.jsp" flush="true" />
    </body>
</html>
