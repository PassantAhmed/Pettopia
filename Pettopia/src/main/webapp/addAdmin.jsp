<%-- 
    Document   : addAdmin
    Created on : Mar 2, 2018, 5:32:59 AM
    Author     : Hesham Kadry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles/style.css">
        <title>ADD ADMIN</title>
    </head>
            <body style="background-image:url(images/rabbit.jpg)">
        	<div class="login">
			<h2>ADD NEW ADMIN</h2>
			<div class="login-top">
                            
				<h1>REGISTER ADMIN FORM</h1>
                                <form action="AddAdminServlet" method="POST">
                                    <input placeholder="Admin email" type="text" name="adminEmail">
                                    <input placeholder="Admin password" type="password" name="adminPassword">

                                    <div class="forgot">
                                        <button onclick="#" class="btnSearch">Register</button> 
                                    </div>
			   	</form>
			</div>
			<div class="login-bottom">
				
			</div>
		</div>	
            </body>
</html>
