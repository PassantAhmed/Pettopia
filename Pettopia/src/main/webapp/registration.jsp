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
        <link rel="icon" href="styles/imgs/pettopialogo.png" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
        <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
        <link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
        <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/login_style.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
    </head>
    <body>
        <div class="super_container">

            <!-- Header -->

            <header class="header trans_300">

                <!-- Top Navigation -->


                <!-- Main Navigation -->

                <div class="main_nav_container" >
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-right">
                                <div class="logo_container">
                                    <img src="styles/imgs/pettopialogo.png" style="width: 40px; height: 35px; margin-bottom: 10px;" />
                                    <a href="index.html">PeT<span>topia</span></a>
                                </div>
                                <nav class="navbar">
                                    <ul class="navbar_menu">
                                        <li><a href="index.html">home</a></li>
                                        <li><a href="login.jsp"><i class="fa" aria-hidden="true"></i>Sign In</a></li>
                                        <li><a href="registration.jsp"><i class="fa" aria-hidden="true"></i>Register</a></li>
                                        <li><a href="#"><i class="fa" aria-hidden="true"></i>checkout</a></li>
                                        <li><a href="products.html"><i class="fa" aria-hidden="true"></i>shop</a></li>
                                        <li><a href="contact.html">contact us</a></li>
                                    </ul>
                                    <ul class="navbar_user">
                                        <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                                        <li><a href="editprofile.jsp">><i class="fa fa-user" aria-hidden="true"></i></a></li>
                                        <li class="checkout">
                                            <a href="#">
                                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                <span id="checkout_items" class="checkout_items">2</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="hamburger_container">
                                        <i class="fa fa-bars" aria-hidden="true"></i>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

            </header>

            <div class="fs_menu_overlay"></div>
            <!-- Hamburger Menu -->

            <div class="hamburger_menu">
                <div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
                <div class="hamburger_menu_content text-right">
                    <ul class="menu_top_nav">


                        <li class="menu_item"><a href="index.html">home</a></li>
                        <li class="menu_item"><a href="login.jsp">sign in</a></li>
                        <li class="menu_item"><a href="registration.jsp">register</a></li>
                        <li class="menu_item"><a href="products.html">shop</a></li>
                        <li class="menu_item"><a href="#">checkout</a></li>
                        <li class="menu_item"><a href="contact.html">contact</a></li>
                    </ul>
                </div>
            </div>

            <!-- Slider -->

            <div class="main_slider">
                <div class="container fill_height">
                    <div class="row align-items-center fill_height">
                        <div class="col-lg-12 ">
                            <center>
                                <div class="register">
                                    <div class="register-top">
                                        <form action="SignUpServlet" method="POST">
                                            <table class="registerTable">
                                                <tr class="tableRow" >
                                                    <td class="tableCell"><h5>First Name:</h5></td>
                                                    <td class="inputs"><input type="text" name="firstName" class="reginputFields" required="true" size="34" tabindex="1"/></td>
                                                    <td class="tableCell regtableCell"><h5>Birth-date:</h5></td>
                                                    <td class="inputs"><center><input type="date" name="birthdate" class="reginputFields" required="true" tabindex="6" /></center></td>           
                                                </tr>
                                                <tr class="tableRow">
                                                    <td class="tableCell"><h5>Last Name:</h5></td>
                                                    <td class="inputs"><input type="text" name="lastName" class="reginputFields" required="true" size="34" tabindex="2"/></td>
                                                     <td class="tableCell regtableCell"><h5>Credit-Limit:</h5></td>
                                                     <td class="inputs"><center><input type="number" name="creditLimit" class="reginputFields" required="true" tabindex="7" /></center></td>
                                                </tr>
                                                <tr class="tableRow">
                                                    <td class="tableCell"><h5>Email:</h5></td>
                                                    <td class="inputs"><input type="email" name="email" class="reginputFields" required="true" size="34" tabindex="3" /></td>
                                                    <td class="tableCell regtableCell"><h5>Credit Number:</h5></td>
                                                    <td class="inputs"><input type="text" name="creditNo1" size="2" maxlength="4" class="reginputFields" required="true" tabindex="8" /> &nbsp;-&nbsp;
                                                        <input type="text" name="creditNo2" size="2" maxlength="4" class="reginputFields" required="true" tabindex="9" /> &nbsp;-&nbsp;
                                                        <input type="text" name="creditNo3" size="2" maxlength="4" class="reginputFields" required="true" tabindex="10" /> &nbsp;-&nbsp;
                                                        <input type="text" name="creditNo4" size="2" maxlength="4" class="reginputFields" required="true" tabindex="11" />
                                                    </td>
                                                </tr>
                                                <tr class="tableRow">
                                                    <td class="tableCell"><h5>Password:</h5></td>
                                                    <td class="inputs"><input type="password" name="password" class="reginputFields" required="true" size="34" tabindex="4" /></td>
                                                    <td class="tableCell regtableCell"><h5>Address:</h5></td>
                                                    <td class="inputs"><input type="text" name="address" class="reginputFields" required="true" size="34" tabindex="12" /></td>
                                                </tr>
                                                <tr class="tableRow">
                                                    <td class="tableCell"><h5>Re-password:</h5></td>
                                                    <td class="inputs"><input type="password" name="rePassword" size="34" class="reginputFields" required="true" tabindex="5"/></td>
                                                    <td class="tableCell regtableCell"><h5>Job:</h5></td>
                                                    <td class="inputs"><input type="text" name="job" class="reginputFields" required="true" size="34" tabindex="13"/></td>
                                                </tr>
                                            </table>
                                            <div style="color: #FF0000;">${errorMessage}</div>
                                            <button class="loginBtn">Sign Up</button>
                                        </form>
                                    </div>
                                    <div class="register-bottom">
                                         <hr style="height: 4px; background-color: #fe4c50; width: 56%; margin-bottom: 25px; border-radius: 5px;"/>
                                         <h4>Already has an account?<br/>
                                             <a href="login.jsp" style="margin-top: 10px; color: #fe4c50; font-weight: bolder; font-size: large;">Login</a>
                                         </h4>
                                     </div>
                                </div>	
                            </center>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Banner -->


            <!-- Footer -->

            <br><br><br><br>
            <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="footer_nav_container">
                                <div class="cr">©2018 All Rights Reserverd. This site is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#">Colorlib</a></div>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="footer_social d-flex  footer_nav_container">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </footer>

        </div>

    </body>
</html>
