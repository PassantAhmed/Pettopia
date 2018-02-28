<%-- 
    Document   : registration_page
    Created on : Feb 28, 2018, 10:20:04 AM
    Author     : Passant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!--<script type="text/javascript" src="chatScript.js"></script>-->
        <!--<link href="style.css" rel="stylesheet" type="text/css" media="all"/>-->
    </head>
    <body>
        <div class="register">
            <div class="register-top">
                <form action="SignUpServlet" method="POST">
                    <table>
                        <tr>
                            <td>First Name:</td>
                            <td><input type="text" name="firstName" /></td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td><input type="text" name="lastName" /></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input type="email" name="email" /></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password" /></td>
                        </tr>
                        <tr>
                            <td>Re-password:</td>
                            <td><input type="password" name="rePassword" /></td>
                        </tr>
                        <tr>
                            <td>Birth-date:</td>
                            <td><input type="date" name="birthdate" /></td>
                        </tr>
                        <tr>
                            <td>Job:</td>
                            <td><input type="text" name="job" /></td>
                        </tr>
                        <tr>
                            <td>Address:</td>
                            <td><input type="text" name="address" /></td>
                        </tr>
                        <tr>
                            <td>Credit Number:</td>
                            <td><input type="text" name="creditNo1" size="2" maxlength="4" />&nbsp; - &nbsp;
                                <input type="text" name="creditNo2" size="2" maxlength="4" />&nbsp; - &nbsp;
                                <input type="text" name="creditNo3" size="2" maxlength="4" />&nbsp; - &nbsp;
                                <input type="text" name="creditNo4" size="2" maxlength="4" />
                            </td>
                        </tr>
                        <tr>
                            <td>Credit-Limit:</td>
                            <td><input type="number" name="creditLimit" /></td>
                        </tr>
                    </table>
                    <button class="btnSearch">Register</button> 
                </form>
            </div>
            <div class="register-bottom">
                <h3>Already has an account? &nbsp;<a href="#">Login</a>&nbsp; Here</h3>
            </div>
        </div>	
    </body>
</html>
