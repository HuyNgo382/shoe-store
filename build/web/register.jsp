<%-- Document : home Created on : Apr 8, 2023, 10:28:02 AM Author : DELL --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Login</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="./public/css/style.css">
    </head>
    <body>
        <section class="vh-100">
            <div class="container py-5 h-100">
                <div class="row d-flex align-items-center justify-content-center h-100">
                    <div class="col-md-8 col-lg-7 col-xl-6">
                       <img src="./public/images/Nike Zoom KD 12.png"
                             class="img-fluid img-animation" alt="Phone image">
                    </div>
                    <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                        <form action="RegisterServlet" method="POST" class="form" id="form-1">
                            <img src="./public/images/icons8-register-50.png" alt="alt"/>
                            <div class="spacer"></div>

                            <div class="form-group">
                                <label for="email" class="form-label">Email</label>
                                <input id="email" name="email" type="text" placeholder="VD: huybap@domain.com" class="form-control">
                                <span class="form-message"></span>
                            </div>

                            <div class="form-group">
                                <label for="password" class="form-label">Password</label>
                                <input id="password" name="password" type="password" placeholder="Enter password" class="form-control">
                                <span class="form-message"></span>
                            </div>

                            <div class="form-group">
                                <label for="password_confirmation" class="form-label">Role</label>
                                <input id="password_confirmation" name="role" placeholder="Enter Role" type="text" class="form-control">
                                <span class="form-message"></span>
                            </div>

                            <button class="form-submit">Register</button>
                             <div class="form-back">  <span>You are have account?<span/><a href="LoginServlet">Login</a></div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>


