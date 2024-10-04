<%-- 
    Document   : ViewCart
    Created on : Jun 17, 2021, 1:13:51 PM
    Author     : USER
--%>

<%@page import="sample.shopping.Tea"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Cart</title>
    </head>
    <body>
        <%
            Cart cart = (Cart) session.getAttribute("CART");
            if (cart == null) {
        %>
        <h1> You not chose any product!</h1>
        <%
        } else {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                    <th>Modify</th>
                    <th>Remove</th>

                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    double total = 0;
                    for (Tea tea : cart.getCart().values()) {
                        total += tea.getQuantity() * tea.getPrice();

                %>
            <form action="MainController">


                <tr>
                    <td><%= count++%></td>
                    <td>
                     <!--   <td><%= tea.getId()%></td> -->
                    <input type="text" name="id" value="<%= tea.getId()%>" readonly=""/>
                    </td>

                <td><%= tea.getName()%></td>
                <td>
                    <input type="number" name="quantity" value="<%= tea.getQuantity()%>"/>
                </td>


                <td><%= tea.getPrice()%></td>
                <td><%= tea.getQuantity() * tea.getPrice()%></td>
                <td>
                    <input type="submit" name="action" value="Modify"/>
                  <!--  <input typr="hidden" name="id" value="<%= tea.getId()%>"/> -->
                </td>
                <td>
                    <input type="submit" name="action" value="Remove"/>

                </td>
                </tr>
            </form> 
            <%
                }
            %>
        </tbody>
    </table>
    <h1> Total: <%= total%></h1>
    <%
        }
    %>
    <a href ="shopping.jsp">Add more</a>
</body>
</html>
