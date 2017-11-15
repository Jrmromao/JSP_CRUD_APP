<%-- 
    Document   : addCustomer
    Created on : 14-Nov-2017, 23:39:26
    Author     : jrmromao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Add Customer</title>
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
                     <li><a href="#">Add Customer</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h2>Add Customer</h2>
            <form class="form-horizontal" action="AddCustomer" method="post">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="email">Customer name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="customerName" name="customerName" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Contact Fist Name</label>
                    <div class="col-sm-10">          
                        <input type="text" class="form-control" id="ContactFirstName"   name="contactFirstName" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Contact Last Name</label>
                    <div class="col-sm-10">          
                        <input type="text" class="form-control" id="ContactLastName"  name="contactLastName" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Phone</label>
                    <div class="col-sm-10">          
                        <input type="text" class="form-control" id="phone"  name="phone" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Email</label>
                    <div class="col-sm-10">          
                        <input type="email"  class="form-control" id="email"  name="email" required>
                    </div>
                </div>

                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Submit</button>
                    </div>
                </div>
            </form>
        </div>


    </body>
</html>
