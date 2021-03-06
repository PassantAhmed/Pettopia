<%-- 
    Document   : denyPage
    Created on : Mar 9, 2018, 9:00:35 AM
    Author     : ahmedelgawesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://fonts.googleapis.com/css?family=Ropa+Sans" rel="stylesheet">
        <link rel="icon" href="..\styles\imgs\pettopialogo.png" />
</head>
<body>
	<div class="error-main">
		<h1>Oops!</h1>
		<div class="error-heading">403</div>
		<p>You do not have permission to access the document or program that you requested.</p>
	</div>
</body>
<style>
    
    body{
    font-family: 'Ropa Sans', sans-serif;
    margin-top: 30px;
    background-color: #F0CA00;
    background-color: #F3661C;
    text-align: center;
    color: #fff;
}
.error-heading{
    margin: 50px auto;
    width: 250px;
    border: 5px solid #fff;
    font-size: 126px;
    line-height: 126px;
    border-radius: 30px;
    text-shadow: 6px 6px 5px #000;
}
.error-heading img{
    width: 100%;
}
.error-main h1{
    font-size: 72px;
    margin: 0px;
    color: #F3661C;
    text-shadow: 0px 0px 5px #fff;
}

</style>
</html>
