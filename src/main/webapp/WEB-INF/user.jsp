<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>My user management system</h1>
        
        <table class="table">
            <thead>
                <tr>
                    <th>E-mail</th> 
                    <th>First name</th> 
                    <th>Last name</th> 
                    <th>Actions</th> 
                </tr>
            </thead>
            <tbody>
                <c:forEach  var="user" items="${users}">
                    <tr>
                        <td>${users.email}</td>
                        <td>${users.firstName}</td>
                        <td>${users.lastName}</td>
                        <td>${user.active ? "Y" : "N"}</td>
                        <td><a href="">Edit</a><a href="">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
