<%-- 
    Document   : index
    Created on : Mar 2, 2018, 7:49:38 AM
    Author     : ahmedelgawesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <form action="../AdminLoginServlet" method="POST">
            <input type="text" name="usr" placeholder="Enter Your Password" />
            <input type="password" name="pass" placeholder="Enter Your Password"/>
            <input type="submit" value="Login"/>

        </form>


    </body>
</html>
