<%-- 
    Document   : registration_page
    Created on : Feb 28, 2018, 10:20:04 AM
    Author     : Passant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!--<script type="text/javascript" src="chatScript.js"></script>-->
        <!--<link href="style.css" rel="stylesheet" type="text/css" media="all"/>-->
    </head>
    <body>
        <div class="login">
            <div class="login-top">
                <form action="LoginServlet" method="POST">
                    <table>
                        <tr>
                            <td>Email:</td>
                            <td><input type="email" name="email" /></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password" /></td>
                        </tr>
                    </table>
                    <button class="btnSearch">Login</button> 
                </form>
            </div>
            <div class="login-bottom">
                <h3>Have not an account yet? &nbsp;<a href="#">Sign Up</a>&nbsp; Here</h3>
            </div>
        </div>	
    </body>
</html>
