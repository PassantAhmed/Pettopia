<%-- 
    Document   : edite
    Created on : Mar 2, 2018, 12:09:53 PM
    Author     : fatma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="com.pettopia.model.bean.User" %>
<!DOCTYPE html>
<html lang="en">
    <%--<%@page session="false" %>--%>

    <head>

        <meta charset="utf-8">
        <meta name="robots" content="all,follow">
        <meta name="googlebot" content="index,follow,snippet,archive">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Obaju e-commerce template">
        <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
        <meta name="keywords" content="">

        <title>
          edit profile
        </title>

        <meta name="keywords" content="">



        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <style>
            input.hidden {
                position: absolute;
                left: -9999px;
            }

            #profile-image1 {
                cursor: pointer;

                width: 100px;
                height: 100px;
                border:2px solid #03b1ce ;}
            .tital{ font-size:16px; font-weight:500;}
            .bot-border{ border-bottom:1px #f8f8f8 solid;  margin:5px 0  5px 0}
        </style>


        <script>
            $(function () {
                $('#profile-image1').on('click', function () {
                    $('#profile-image-upload').click();
                });
            });
        </script> 




    </head>


    <body>


        <form class="form-horizontal" role="form">
            <div class="col-md-9">
                <div class="box">
                    <h1>My account</h1>
                    <p class="lead">Change your personal details or your password here.</p>
                    <hr>
                    <h3>Personal details</h3>

                    <div class="row">
                        <div class="col-sm-6">
                            <div  align="center"> <img alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" id="profile-image1" class="img-circle img-responsive"> 

                                <input id="profile-image-upload" class="hidden" type="file">
                                <div style="color:#999;" >click here to change profile image</div>
                                <!--Upload Image Js And Css-->







                            </div>

                            <br>

                            <!-- /input-group -->
                        </div>
                    </div>
                    <br>


                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="firstname">First Name</label>
                                <input type="text" class="form-control" id="firstname" value="${sessionScope.User.firstName}">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="bot-border"></div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="lastname">Last Name</label>
                                <input type="text" class="form-control" id="lastname" value="${sessionScope.User.lastName}">
                            </div>
                        </div>


                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="text" class="form-control" id="password">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="bot-border"></div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="birthdate">Birth Date</label>
                                <input type="date" class="form-control" id="birthdate" value="${sessionScope.User.birthDate}">
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="address">Address</label>
                                <input type="text" class="form-control" id="address" value="${sessionScope.User.address}">
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="bot-border"></div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="job">Job</label>
                                <input type="text" class="form-control" id="job" value="${sessionScope.User.job}">
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" value="${sessionScope.User.email}" disabled>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="bot-border"></div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="limit">Credit limit</label>
                                <input type="number" class="form-control" id="limit" value="${sessionScope.User.creditLimit}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <div class="form-group">
                                <label for="creditNo">Credit Number</label>
                                <input type="number" class="form-control" id="creditNo" value="${sessionScope.User.creditNo}">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save changes
                            </button>

                        </div>
                    </div>
                </div>
            </div>

        </form>
    </body>

</html>

