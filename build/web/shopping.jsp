<%-- 
    Document   : shopping
    Created on : Jun 17, 2021, 12:49:15 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Milk Tea Page</title>
    </head>
    <body>
        <h1>Welcum 2 our shop!</h1>
        <form action="MainController">
            Choose your favorite tea:
            <select name="cmbTea">
                <option value="T01-Ice tea-10">Ice Tea</option>
                <option value="T02-Pink tea-60">Pink Tea</option>
                <option value="T03-Peach tea-50">Peach Tea</option>
                <option value="T04-Matcha tea-30">Matcha Tea</option>

            </select>
            <input type="number" name="quantity" value="1"/>
            <input type="submit" name="action" value="Add to Cart"/>
                        <input type="submit" name="action" value="View Cart"/>

        </form>
        <%
            String message = (String) request.getAttribute("SHOPPING_MESSAGE");
            if (message == null) {
                message = "";
            }

        %>
        <h1 style="color:white; background-color:red; font-size: 16px"> 
             <%= message %>
        </h1>
       
    </body>
</html>
