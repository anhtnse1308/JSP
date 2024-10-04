<%-- 
    Document   : createUser.jsp
    Created on : Jun 8, 2021, 3:13:31 PM
    Author     : USER
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
    </head>
    <body>
        <%
            UserError userError = (UserError)request.getAttribute("USER_ERROR");
            if (userError == null){
                userError = new UserError("", "", "", "", "");
            }
        %>
        <form action="MainController" method="POST">
            User ID <input type="text" name ="userID" required=""/></br>
            <%= userError.getUserIDError() %></br>
            Full Name <input type="text" name ="fullName" required=""/></br>
            <%= userError.getFullNameError() %></br>
            Role ID <input type="text" name ="roleID" required=""/></br>
            <%= userError.getRoleIDError() %></br>
            Password <input type="text" name ="password" required=""/></br>
            <%= userError.getPasswordError() %></br>
            Confirm <input type="text" name ="confirm" required=""/></br>
            <%= userError.getConfirmPasswordError() %></br>
            <input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>
        </form>
    </body>
</html>
