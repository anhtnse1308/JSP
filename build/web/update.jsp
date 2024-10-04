<%-- 
    Document   : update.jsp
    Created on : Jun 8, 2021, 12:46:36 PM
    Author     : USER
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
        <%
            UserError userError = (UserError)request.getAttribute("USER_ERROR");
            if (userError == null){
                userError = new UserError("", "", "", "", "");
            }
        %>
        <form action="MainController">
            User ID <input type="text" name="userID" value="<%= request.getParameter("userID")%>" readonly="" /></br>
           
            Full Name <input type="text" name="fullName" value="<%= request.getParameter("fullName")%>" required="" /></br>
            <%= userError.getFullNameError() %> </br>
            Role ID <input type="text" name="roleID" value="<%= request.getParameter("roleID")%>" required="" /></br>
            <input type="hidden" name="search" value ="<%= request.getParameter("search") %>"/>
             <%= userError.getRoleIDError() %> </br>
            <input type="submit" name="action" value="Confirm Update"/>
            <input type ="reset" value="Reset" />             
        </form>
    </body>
</html>
