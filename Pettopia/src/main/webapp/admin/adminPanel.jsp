<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/UserReviewScript.js"></script>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/previewStyle.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/UserReviewScript.js"></script>
<link rel="stylesheet" href="css/previewStyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">







<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:if test="${sessionScope.adminLoggedin == 'false'}">
    <c:redirect url = "denyPage.jsp" />
</c:if>
<c:if test="${sessionScope.adminLoggedin == null }">
    <c:redirect url = "denyPage.jsp" />
</c:if>
<c:if test="${sessionScope.adminLoggedin == 'true'}">
    <html >
        <head>
            <meta charset="UTF-8">
            <title>Featured Tabs</title>


             <link rel='stylesheet prefetch'
              href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
        <link rel='stylesheet prefetch'
              href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
        <link rel='stylesheet prefetch'
              href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,700'>

        <link rel="stylesheet" href="..\styles\adminHome.css">
        <link rel="stylesheet" href="..\styles\addProduct.css">

        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


        </head>

        <body><br>
            <a style="float:right;margin-right:200px;font-size: 18;color: wheat;font-style: italic;font-family: sans-serif" href="../AdminLogout">Logout</a><br>

            <div class="container">      

                <section id="fancyTabWidget" class="tabs t-tabs">


                    <ul class="nav nav-tabs fancyTabs" role="tablist">

                        <li class="tab fancyTab active">
                            <div class="arrow-down"><div class="arrow-down-inner"></div></div>	
                            <a id="tab0" href="#tabBody0" role="tab" aria-controls="tabBody0" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-desktop"></span><span class="hidden-xs">Add product</span></a>
                            <div class="whiteBlock"></div>
                        </li>

                        <li class="tab fancyTab">
                            <div class="arrow-down"><div class="arrow-down-inner"></div></div>
                            <a id="tab1" href="#tabBody1" role="tab" aria-controls="tabBody1" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-firefox"></span><span class="hidden-xs">edit product</span></a>
                            <div class="whiteBlock"></div>
                        </li>

                        <li class="tab fancyTab">
                            <div class="arrow-down"><div class="arrow-down-inner"></div></div>
                            <a id="tab2" href="#tabBody2" role="tab" aria-controls="tabBody2" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-envira"></span><span class="hidden-xs">remove product</span></a>
                            <div class="whiteBlock"></div>
                        </li>

                        <li class="tab fancyTab">
                            <div class="arrow-down"><div class="arrow-down-inner"></div></div>
                            <a id="tab3" href="#tabBody3" role="tab" aria-controls="tabBody3" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-mortar-board"></span><span class="hidden-xs">review users</span></a>
                            <div class="whiteBlock"></div>
                        </li> 

                        <li class="tab fancyTab">
                            <div class="arrow-down"><div class="arrow-down-inner"></div></div>
                            <a id="tab4" href="#tabBody4" role="tab" aria-controls="tabBody4" aria-selected="true" data-toggle="tab" tabindex="0"><span class="fa fa-stack-overflow"></span><span class="hidden-xs">add admin</span></a>
                            <div class="whiteBlock"></div>
                        </li>


                    </ul>
                    <div id="myTabContent" class="tab-content fancyTabContent"
                         aria-live="polite">
                        <div class="tab-pane  fade active in" id="tabBody0" role="tabpanel"
                             aria-labelledby="tab0" aria-hidden="false" tabindex="0">
                            <div>
                                <div class="row">

                                    <div class="col-md-12">
                                        <h2>Add product</h2>

                                        <form action="../AdminAddProduct" method="post"
                                              enctype="multipart/form-data">
                                            <label>product name : </label><input type="text"
                                                                                 name="productname" required="true" /><br> <label>product
                                                price :</label><input type="number" min="0" name="productprice"
                                                                  required="true"><br> <label>product desc
                                                :</label><input type="text" name="productdesc" required="true"><br>
                                            <label>product category:</label>
                                            <input type="text" name="productcategory" required="true"><br>
                                            <label>Select picture for your product :</label><input
                                                type="file" name="fileName" accept="image/*" required="true">
                                            <input type="submit" id="submitadd">
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="tab-pane  fade" id="tabBody1" role="tabpanel"
                             aria-labelledby="tab1" aria-hidden="true" tabindex="0">
                            <div class="row">

                                <div class="col-md-12">
                                    <h2>edit product</h2>

                                    <form id="target">
                                        <label>enter product id : </label><input type="number" min="1"
                                                                                 name="productid1" id="productid1" required="true"><br>
                                        <input type="button" id="submiteedit" name="search"
                                               value="search">
                                    </form>

                                    <div id="result"></div>

                                    <script>


                                        $(document).ready(function () {

                                            $("#submiteedit").click(function ()
                                            {
                                                var jsonData = {"id": $("#productid1").val()};
                                                $.ajax({url: '../AdminEditProduct', type: 'POST', data: jsonData, success: function (data)
                                                    {
                                                        //disable first form 
                                                        $("#target :input").prop("disabled", true);
                                                        // coming back from servlet
                                                        $("#result").html("<form id='secondform'><label>product id : </label><input id='productid' value='" + data.id + "' disabled='true'/><label>product name : </label><input id='productname' value='" + data.name + "' required='true'/><label>product price : </label><input id='price' value='" + data.price + "'type='number' required='true'/><label>product desc : </label><input id='desc' value='" + data.description + "' required='true'/><label>product category : </label><input id='category' value='" + data.category + "' required='true'/><label>solded or not : </label><input id='quantity' value='" + data.quantity + "' required='true'/><input type='button' id='editbutton' value='edit' onclick='change()'></form>")
                                                    }, error: function (data)
                                                    {
                                                        $("#result").html("<h4> no data found  </h4>")
                                                    }
                                                });
                                            });


                                        });

                                        // edit button to submit changes 
                                        function change() {

                                            var jsonData2 = {"id": $("#productid").val(), "name": $("#productname").val(), "price": $("#price").val(), "desc": $("#desc").val(), "category": $("#category").val(), "quantity": $("#quantity").val()};
                                            $.ajax({url: '../AdminSubmitEdit', type: 'POST', data: jsonData2, success: function (data)
                                                {

                                                    //enable first form 
                                                    $("#target :input").prop("disabled", false);
                                                    $("#productid1").value = 0;
                                                    //hide second form
                                                    $("#result").html("<h4> data edited</h4>");
                                                }
                                            });

                                        }
                                        ;








                                    </script>

                                </div>
                            </div>
                        </div>
                        <div class="tab-pane  fade" id="tabBody2" role="tabpanel"
                             aria-labelledby="tab2" aria-hidden="true" tabindex="0">
                            <div class="row">
                                <div class="col-md-12">
                                    <h2>remove product :</h2>
                                    <form>
                                        <label>enter product id : </label><input type="text"
                                                                                 name="productid"><br> <input type="submit"
                                                                                 id="submiteedit" name="remove">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane  fade" id="tabBody3" role="tabpanel" aria-labelledby="tab3" aria-hidden="true" tabindex="0">
                            <div class="row">
                                <div class="col-md-12">





                                    <h2 style="float: left ">View user Data :</h2><br><br>

                                    <body onload="setInterval(function () {
                                                refresh();
                                            }, 2000)">

                                        <!-- start of preview user data  -->
                                    <body onload="setInterval(function () {
            refresh();
        }, 2000)">

                                        <div class="container">

                                            <div class="data">

                                                <input placeholder="User Email" id="uEmail" type="text" class="editTextff"/><br><br>
                                                <button onclick="sendEmail()" class="ButtonSend">Review</button><br>


                                                <br>  
                                            </div>  
                                            <div class="card">
                                                <img src="user_profile.jpg" alt="John" style="width:30%; height:30%">
                                                <div id="userData">
                                                    <h1>First name</h1>
                                                    <p>Last Name</p>
                                                    <p>Birth Date</p>
                                                    <p>job</p>
                                                    <p>email</p>
                                                    <p>credit lemit</p>
                                                    <p>credit number</p>
                                                </div>
                                                <div style="margin: 24px 0;">
                                                    
                                                    
                                                   
                                                   
                                                </div>
                                                <p><button class="btnedit"></a>  <i class="fa fa-facebook"></i></a>  <a href="#"><i class="fa fa-dribbble"></i></a>  <a href="#"><a href="#"><i class="fa fa-twitter"></i><a href="#"><i class="fa fa-linkedin"></i></a>  </button></p>
                                            </div>

                                        </div>
                                        <!-- end of preview user data  -->







                                </div>
                            </div>
                        </div>
                        <div class="tab-pane  fade" id="tabBody4" role="tabpanel" aria-labelledby="tab4" aria-hidden="true" tabindex="0">
                            <div class="row">
                                <div class="col-md-12">





                                    <div class="login">
                                        <h2 style="float: left ">Add New Admin :</h2><br><br><br><br>
                                        <div class="login-top">
                                            <body style="background: linear-gradient(-135deg,#0D1B2A, #d15f5f);">

                                                <form action="../AddAdminServlet" method="POST">
                                                    <input placeholder=" new Admin email" type="email" required="" name="adminEmail"><br><br>
                                                    <input placeholder="new Admin password" required="" type="password" name="adminPassword">

                                                    <div class="forgot">

                                                        <input type="submit" id="submitadd">

                                                    </div>
                                                </form>
                                        </div>

                                    </div>
                                </div>

                            </div>

                            </section>
                        </div>
                        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

                        <script src="..\js\index.js"></script>
<script
        src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script
        src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
        <script src="..\js\index.js"></script>

                        </body>
                    </c:if>
                    </html>
