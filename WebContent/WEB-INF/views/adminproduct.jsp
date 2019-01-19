<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>EMI Shop | Home</title>
 <!-- Font awesome -->
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="${pageContext.request.contextPath}/resources/css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    
</head>
 <body> 
      <!-- wpf loader Two -->
       <div id="wpf-loader-two">          
         <div class="wpf-loader-two-inner">
           <span>Loading</span>
         </div>
       </div> 
       <!-- / wpf loader Two -->       
     <!-- SCROLL TOP BUTTON -->
       <a class="scrollToTop" href=""><i class="fa fa-chevron-up"></i></a>
     <!-- END SCROLL TOP BUTTON -->
   
     <!-- Start header section -->
     <header id="aa-header">
       <!-- start header bottom  -->
       <div class="aa-header-bottom">
         <div class="container">
           <div class="row">
             <div class="col-md-12">
               <div class="aa-header-bottom-area">
                 <!-- logo  -->
                 <div class="aa-logo">
                   <!-- Text based logo -->
                   <a>
                     <span class="fa fa-shopping-cart"></span>
                     <p>EMI<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                   </a>
                 </div>                                  
               </div>
             </div>
           </div>
         </div>
       </div>
       <!-- / header bottom  -->
     </header>
<!-- / header section -->

<!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table aa-wishlist-table">
             <form action="">
               <div class="table-responsive">                  
                  <table class="table" id="dataTable">                     
                    <thead>                      
                      <tr>  
                     <th>Screen-Shot</th>
					<th>Product Id</th>
					<th>Category</th>
					<th>Product Name</th>
					<th>Products Price</th>
					<th>Stock Unit</th>
					<th>Description</th>
					<th>EDIT</th>
					<th>DELETE</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${products}" var="prod">
					<tr>
						<td style="width: 171px">
						<img src="img/man/polo-shirt-1.png" alt="img"><%-- <img
							src="<c:url value="D:/EMI Repos/EMICardManagement1/WebContent/resources/img/products/${prod.productId}.jpg"/>"
							style="width: 100px; height: 90px;" ${prod.productName}"  /> --%> 
							</td>
						<td>${prod.productId}</td>
						<td>${prod.productCategory}</td>
						<td>${prod.productName}</td>
						<td>${prod.productPrice}</td>
						<td>${prod.unitStock}</td>
						<td style="width: 180px">${prod.productDescription}</td>
						<td><a href="admin/product/editProduct/${prod.productId}" class="aa-add-to-cart-btn">Edit</a></td>
						<td><a href="admin/product/delete/${prod.productId}" class="aa-add-to-cart-btn">Delete</a></td>
					</tr>
				</c:forEach>
                    
                      <tr>
                         
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="img/man/polo-shirt-1.png" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">Polo T-Shirt</a></td>
                        <td>$250</td>
                        <td>In Stock</td>
                        <td><a href="#" class="aa-add-to-cart-btn">EDIT</a></td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="img/man/polo-shirt-2.png" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">Polo T-Shirt</a></td>
                        <td>$150</td>
                        <td>In Stock</td>
                        <td><a href="#" class="aa-add-to-cart-btn">EDIT</a></td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="img/man/polo-shirt-3.png" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">Polo T-Shirt</a></td>
                        <td>$50</td>
                        <td>In Stock</td>
                        <td><a href="#" class="aa-add-to-cart-btn">EDIT</a></td>
                      </tr>                     
                      </tbody>
                    </tr>
                  </table>
                 <div class="row">
                      <INPUT type="button" style="text-align: center" class="aa-browse-btn"value="Add Row" a href="AddProduct" value="Add Product" />
                      
                     
                  </div>
                </div>
             </form>             
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->

   <!-- footer -->  
  <footer id="aa-footer">
      <!-- footer bottom -->
      <div class="aa-footer-top">
       <div class="container">
          <div class="row">
          <div class="col-md-12">
            <div class="aa-footer-top-area">
              <div class="row">
                  <div class="col-md-3 col-sm-6">
                      <div class="aa-footer-widget">
                        <div class="aa-footer-widget">  
                          <ul class="aa-footer-nav">
                            <li><a href="Info">Eligibility</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                <div class="col-md-3 col-sm-6">
                  <div class="aa-footer-widget">       
                    <ul class="aa-footer-nav">
                      <li><a href="Info">Charges</a></li> 
                    </ul>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="aa-footer-widget">
                    <div class="aa-footer-widget">  
                      <ul class="aa-footer-nav">
                        <li><a href="CardDetails">EMI Card Details</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="aa-footer-widget">
                    <div class="aa-footer-widget">     
                      <ul class="aa-footer-nav">
                        <li><a href="Info">Terms and conditions apply</a></li>    
                      </ul>
                    </div>
                  </div>
                </div>  
              </div>
            </div>
          </div>
        </div>
       </div>
      </div>
   </footer>   
 
   <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="${pageContext.request.contextPath}/resources/js/sequence.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>   
</body>
</html>
 