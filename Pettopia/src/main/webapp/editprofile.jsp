<%-- 
    Document   : editprofile
    Created on : Mar 5, 2018, 2:33:19 PM
    Author     : Passant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Profile</title>
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

        <script>
            $(function () {
                $('#profile-image1').on('click', function () {
                    $('#profile-image-upload').click();
                });
            });
        </script> 
        
        <style>
            input.hidden {
                position: absolute;
                left: -9999px;
            }
            #profile-image1 {
                cursor: pointer;
                width: 100px;
                height: 100px;
                border:2px solid #03b1ce ;
                margin-bottom: 1%;
                margin-top: 3%;
            }
            .tital{ font-size:16px; font-weight:500;}
            .bot-border{ border-bottom:1px #f8f8f8 solid;  margin:5px 0  5px 0}
        </style>

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
                                        <li><a href="products"><i class="fa" aria-hidden="true"></i>shop</a></li>
                                        <li><a href="contact.html">contact us</a></li>
                                    </ul>
                                    <ul class="navbar_user">
                                        <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                                        <li><a href="editprofile.jsp"><i class="fa fa-user" aria-hidden="true"></i></a></li>
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
                        <li class="menu_item"><a href="products">shop</a></li>
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
                                <div class="editprofile">
                                    <img alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" id="profile-image1" class="img-circle img-responsive" /> 
                                    <input id="profile-image-upload" class="hidden" type="file" />
                                    <div style="color:#999; margin-bottom: 5%;" >click here to change profile image</div>

                                    <div class="register-top">
                                        <form action="EditProfileServlet" method="POST">
                                            <table class="editprofileTable">
                                                <tr class="tableRow" >
                                                    <td class="tableCell"><h5>First Name:</h5></td>
                                                    <td class="inputs"><input type="text" name="firstName" class="reginputFields form-control" value="${sessionScope.firstName}" required="true" size="34" tabindex="1" /></td>
                                                    <td class="tableCell regtableCell"><h5>Birth-date:</h5></td>
                                                    <td class="inputs"><center><input type="date" name="birthdate" class="reginputFields form-control" value="${sessionScope.birthdate}" required="true" tabindex="6" /></center></td>           
                                                </tr>
                                                <tr class="tableRow">
                                                    <td class="tableCell"><h5>Last Name:</h5></td>
                                                    <td class="inputs"><input type="text" name="lastName" class="reginputFields form-control" value="${sessionScope.lastName}" required="true" size="34" tabindex="2"/></td>
                                                    <td class="tableCell regtableCell"><h5>Credit-Limit:</h5></td>
                                                    <td class="inputs"><center><input type="number" name="creditLimit" class="reginputFields form-control" value="${sessionScope.creditLimit}" required="true" tabindex="7" /></center></td>
                                                </tr>
                                                <tr class="tableRow">
                                                    <td class="tableCell"><h5>Email:</h5></td>
                                                    <td class="inputs"><input type="email" name="email" disabled="true" value="${sessionScope.email}" class="reginputFields form-control" required="true" size="34" tabindex="3" /></td>
                                                    <td class="tableCell regtableCell"><h5>Credit Number:</h5></td>
                                                    <td class="inputs"><input type="text" name="creditNo1" value="${sessionScope.creditNo1}" size="2" maxlength="4" class="reginputFields form-control" required="true" tabindex="8"
                                                               style="width:22%; float: left;"/> <span style="float: left; margin-top: 2%;">&nbsp;-&nbsp;</span>
                                                        <input type="text" name="creditNo2" maxlength="4" value="${sessionScope.creditNo2}" class="reginputFields form-control" size="2" required="true" tabindex="9" 
                                                               style="width:22%; float: left;"/> <span style="float: left; margin-top: 2%;">&nbsp;-&nbsp;</span>
                                                        <input type="text" name="creditNo3" size="2" maxlength="4" value="${sessionScope.creditNo3}" class="reginputFields form-control" required="true" tabindex="10"
                                                               style="width:22%; float: left;"/> <span style="float: left; margin-top: 2%;">&nbsp;-&nbsp;</span>
                                                        <input type="text" name="creditNo4" size="2" maxlength="4" value="${sessionScope.creditNo4}" class="reginputFields form-control" required="true" tabindex="11" 
                                                               style="width:22%; float: left;"/>
                                                    </td>
                                                </tr>
                                                <tr class="tableRow">
                                                    <td class="tableCell"><h5>Password:</h5></td>
                                                    <td class="inputs"><input type="password" name="password" class="reginputFields form-control" value="${sessionScope.password}" required="true" size="34" tabindex="4" /></td>
                                                    <td class="tableCell regtableCell"><h5>Address:</h5></td>
                                                    <td class="inputs"><input type="text" name="address" class="reginputFields form-control" value="${sessionScope.address}" required="true" size="34" tabindex="12" /></td>
                                                </tr>
                                                <tr class="tableRow">
                                                    <td class="tableCell"><h5>Re-password:</h5></td>
                                                    <td class="inputs"><input type="password" name="rePassword" size="34" class="reginputFields form-control" value="${sessionScope.password}" required="true" tabindex="5"/></td>
                                                    <td class="tableCell regtableCell"><h5>Job:</h5></td>
                                                    <td class="inputs"><input type="text" name="job" class="reginputFields form-control" value="${sessionScope.job}" required="true" size="34" tabindex="13"/></td>
                                                </tr>
                                            </table>
                                            <div style="color: #FF0000;">${errorMessage}</div>
                                            <button class="loginBtn">Save Changes</button>
                                        </form>
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

