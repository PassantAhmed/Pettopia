<!DOCTYPE html>
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
  
  
  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,700'>

      <link rel="stylesheet" href="..\styles\adminHome.css">
      <link rel="stylesheet" href="..\styles\addProduct.css">

  
</head>

<body>
  <div class="container"> 
<section id="fancyTabWidget" class="tabs t-tabs">
    <a href="../AdminLogout">Logout</a>
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
        <div id="myTabContent" class="tab-content fancyTabContent" aria-live="polite">
                    <div class="tab-pane  fade active in" id="tabBody0" role="tabpanel" aria-labelledby="tab0" aria-hidden="false" tabindex="0">
                        <div>
                        	<div class="row">
                            	
                                <div class="col-md-12">
                        			<h2>Add product</h2>
                                     
                                                <form action="../AdminAddProduct" method="post" enctype="multipart/form-data">
                                                    <label >product name : </label><input type="text" name="productname" required="true"/><br>
                                                    <label>product price :</label><input type="text" name="productprice" required="true"><br>
                                                    <label>product desc :</label><input type="text" name="productdesc" required="true"><br>
                                                    <label>Select picture for your product :</label><input type="file" name="fileName" accept="image/*" required="true" >
                                                    <input type="submit" id="submitadd">
                                                </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane  fade" id="tabBody1" role="tabpanel" aria-labelledby="tab1" aria-hidden="true" tabindex="0">
                        <div class="row">
                            	
                                <div class="col-md-12">
                        			<h2>edit product</h2>
                                       
                                                <form>
                                                    <label >enter product id : </label><input type="text" name="productid" ><br>
                                                    <input type="submit" id="submiteedit" name="search">
                                                </form>
                                </div>
                            </div>
                    </div>
                    <div class="tab-pane  fade" id="tabBody2" role="tabpanel" aria-labelledby="tab2" aria-hidden="true" tabindex="0">
                        <div class="row">
                                <div class="col-md-12">
                        			<h2>remove product :</h2>
                                                <form>
                                                    <label >enter product id : </label><input type="text" name="productid" ><br>
                                                    <input type="submit" id="submiteedit" name="remove">
                                                </form>
                                </div>
                            </div>
                    </div>
                    <div class="tab-pane  fade" id="tabBody3" role="tabpanel" aria-labelledby="tab3" aria-hidden="true" tabindex="0">
                    <div class="row">
                        <div class="col-md-12">
                        			<h2>This is the content of tab four.</h2>
                                    <p>This field is a rich HTML field with a content editor like others used in Sitefinity. It accepts images, video, tables, text, etc. Street art polaroid microdosing la croix taxidermy. Jean shorts kinfolk distillery lumbersexual pinterest XOXO semiotics. Tilde meggings asymmetrical literally pork belly, heirloom food truck YOLO. Meh echo park lyft typewriter. </p>
                                  
                                </div>
                            </div>
                    </div>
                    <div class="tab-pane  fade" id="tabBody4" role="tabpanel" aria-labelledby="tab4" aria-hidden="true" tabindex="0">
                    <div class="row">
                        <div class="col-md-12">
                        			<h2>This is the content of tab five.</h2>
                                    <p>This field is a rich HTML field with a content editor like others used in Sitefinity. It accepts images, video, tables, text, etc. Street art polaroid microdosing la croix taxidermy. Jean shorts kinfolk distillery lumbersexual pinterest XOXO semiotics. Tilde meggings asymmetrical literally pork belly, heirloom food truck YOLO. Meh echo park lyft typewriter. </p>
                                  
                                </div>
                            </div>
                    </div>
                    
        </div>

    </section>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

    <script src="..\js\index.js"></script>

</body>
</c:if>
</html>
