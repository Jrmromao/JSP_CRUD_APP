<%-- 
    Document   : index
    Created on : 14-Nov-2017, 20:14:45
    Author     : jrmromao
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">CRUD App</a>
                </div>
                <ul class="nav navbar-nav">
                     <li class="active"><a href="${pageContext.request.contextPath}/ShowAllCustomers">Home</a></li>
                     <li><a href="${pageContext.request.contextPath}/addCustomer.jsp">Add Customer</a></li>
                </ul>
            </div>
        </nav>

        <div class="container">
            <div class="container">
                <h2>CRUD App - Test prep</h2>
                <p>Training for the in-class assessment</p>            
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Customer number</th>
                            <th>Customer name</th>
                            <th>Contact name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Edit </th>
                            <th>Delete </th>

                        </tr>
                    </thead>
                    <tbody>


                        <c:forEach items="${custList}" var="cust" end="10">    
                            <tr> 
                                <td>${cust.customerNumber}</td>
                                <td>${cust.customerName}</td>
                                <td>${cust.contactFirstName} ${cust.contactLastName}</td>
                                <td>${cust.phone}</td>                 
                                <td>${cust.email}</td>
                                <td><a href="${pageContext.request.contextPath}/EditCustomer?id=${cust.customerNumber}" class="btn btn-info" role="button">Edit</a></td>
                                <td><a href="${pageContext.request.contextPath}/DeleteCustomer?id=${cust.customerNumber}" class="btn btn-danger" role="button">Delete</a></td>
                            </tr> 
                        </c:forEach>  


                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>