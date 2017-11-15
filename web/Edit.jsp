<%-- 
    Document   : Edit
    Created on : 14-Nov-2017, 21:47:51
    Author     : jrmromao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Edit Customer</title>
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
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/ShowAllCustomers">CRUD App</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="${pageContext.request.contextPath}/ShowAllCustomers">Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/addCustomer.jsp">Add Customer</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h2>Edit Customer</h2>
            <form class="form-horizontal" action="SaveEdit">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Customer name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="customerName" value="${cust.customerName}" name="customerName">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Contact Fist Name</label>
                    <div class="col-sm-10">          
                        <input type="text" class="form-control" id="ContactFirstName" value="${cust.contactFirstName}"  name="contactFirstName">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Contact Last Name</label>
                    <div class="col-sm-10">          
                        <input type="text" class="form-control" id="ContactLastName" value="${cust.contactLastName}"  name="contactLastName">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Phone</label>
                    <div class="col-sm-10">          
                        <input type="text" class="form-control" id="phone" value="${cust.phone}"  name="phone">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Email</label>
                    <div class="col-sm-10">          
                        <input type="email" class="form-control" id="email" value="${cust.email}"  name="email">
                    </div>
                </div>
                      <input type="hidden" name="customerNumber" value="${cust.customerNumber}">
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                </div>
            </form>
        </div>


    </body>
</html>
