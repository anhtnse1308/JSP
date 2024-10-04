<%-- 
    Document   : user
    Created on : Jun 1, 2021, 1:37:21 PM
    Author     : USER
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <% 
        UserDTO user =( UserDTO) session.getAttribute("LOGIN_USER");
        if (user == null){
            return;
        }
    %>
    
    <body>
        <h1>Hello User role: <%= user.getFullName() %></h1>
    </body>
</html>
