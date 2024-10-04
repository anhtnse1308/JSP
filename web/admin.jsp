<%-- 
    Document   : admin
    Created on : Jun 1, 2021, 1:33:51 PM
    Author     : USER
--%>

<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"AD".equals(loginUser.getRoleID().trim())) {
                response.sendRedirect("login.html");

                return;
            }
            String search = (String) request.getParameter("search");
            if (search == null) {
                search = "";
            }
        %>

        <h1>Hello Admin: <%= loginUser.getFullName()%></h1>
        <form action="MainController">
            <input type="submit" name="action" value="Logout"/>

        </form>
        
        <form action="MainController">
            Search <input type="text" name="search" value="<%= search%>" />
            <input type="submit" name="action" value="Search"/>
        </form>

        <%
            String error_message = (String) request.getAttribute("ERROR_MESSAGE");
            if (error_message != null) {
        %>
        <h1> <%= error_message%></h1>
        <%
            }
        %>

        <%            List<UserDTO> list = (List<UserDTO>) request.getAttribute("LIST_USER");
            if (list != null) {
                if (!list.isEmpty()) {
        %>   
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>User ID</th>
                    <th>Full Name</th>
                    <th>Role ID</th>
                    <th>Password</th>
                    <th>Delete</th>
                    <th>Update</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    for (UserDTO user : list) {
                %>
            <form action = "MainController">


                <tr>
                    <td> <%= count++%></td>
                    <td> <%= user.getUserID()%></td>
                    <td> <%= user.getFullName()%></td>
                    <td> <%= user.getRoleID()%></td>
                    <td> <%= user.getPassword()%></td>
                    <td> 
                        <a href = "MainController?userID=<%= user.getUserID()%>&action=Delete&search=<%= search%>">Delete</a>
                    </td>
                    <td>
                <input type="submit" name="action" value="Update"/>
                <input type="hidden" name="userID" value="<%= user.getUserID()%>"/>
                <input type="hidden" name="fullName" value="<%= user.getFullName()%>"/>
                <input type="hidden" name="roleID" value="<%= user.getRoleID()%>"/>              
                <input type ="hidden" name="search" value <%= search %>/
                </td>

                </tr>
            </form>
            <%
                }
            %>
        </tbody>
    </table>
    <%
            }
        }
    %>
</body>
</html>
