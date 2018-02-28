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
                    </table>
              
                    Last Name: <input type="text" name="lastName" /><br/>
                    Email: <input type="email" name="email" /><br/>
                    Password: <input type="password" name="password" /><br/>
                    Re-password: <input type="password" name="rePassword" /><br/>
                    Birth-date: <input type="date" name="birthdate" /><br/>
                    Job: <input type="text" name="job" /><br/>
                    Address: <input type="text" name="address" /><br/>
                    Credit Number: <input type="text" name="creditNo1" size="2" maxlength="4" />&nbsp; - &nbsp;
                    <input type="text" name="creditNo2" size="2" maxlength="4" />&nbsp; - &nbsp;
                    <input type="text" name="creditNo3" size="2" maxlength="4" />&nbsp; - &nbsp;
                    <input type="text" name="creditNo4" size="2" maxlength="4" /><br/>
                    Credit-Limit: <input type="number" name="creditLimit" /><br/>
                    <button class="btnSearch">Register</button> 
                </form>
            </div>
            <div class="register-bottom">
                <h3>Already has an account? &nbsp;<a href="#">Login</a>&nbsp; Here</h3>
            </div>
        </div>	
    </body>
</html>
