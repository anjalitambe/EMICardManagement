<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                   <a >
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

  <!-- menu -->
  <section id="menu">
      <div class="container">
        <div class="menu-area">
          <!-- Navbar -->
          <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>          
            </div>
           <div class="navbar-collapse collapse">                           
              <!-- Left nav -->
             <div class="aa-header-top-center">
              <ul class="nav navbar-nav">
                   <li style="float:right"><a href="Logout">Logout</a></li>             
                <li style="float:right"><a href="Contact">Contact Us</a></li>
                <li  style="float:right"><a href="Product">Products</a></li>  
                <li  style="float:left">Welcome  <%=session.getAttribute("firstName") %>  <%=session.getAttribute("lastName")%></li>                                       
              </ul>
            </div>
          </div>
        </div>       
      </div>
    </section>
  <!-- / menu -->  
  <!-- Start slider -->
  <section id="aa-slider">
      <div class="aa-slider-area" style="margin-bottom: 50px">
        <div id="sequence" class="seq">
          <div class="seq-screen">
            <ul class="seq-canvas">
              <!-- single slide item -->
              <li>
                <div class="seq-model">
                  <img data-seq src="${pageContext.request.contextPath}/resources/img/slider/phone.jpg" alt="Phone img" />
                </div>
                <div class="seq-title">          
                  <h2 data-seq>Buy your favourite products with us</h2>                
                  <a href="Product" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                </div>
              </li>
              <!-- single slide item -->
              <li>
                <div class="seq-model">
                  <img data-seq src="${pageContext.request.contextPath}/resources/img/slider/watch.jpg" alt="Wristwatch slide img" />
                </div>
                <div class="seq-title">             
                  <h2 data-seq>Wristwatch Collection</h2>                
                  <a href="Product" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                </div>
              </li>
              <!-- single slide item -->
              <li>
                <div class="seq-model">
                  <img data-seq src="${pageContext.request.contextPath}/resources/img/slider/bed.jpg" alt="Beds img" />
                </div>
                <div class="seq-title">                             
                  <h2 data-seq>Furniture Collection</h2>                                   
                  <a href="Product" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                </div>
              </li>
              <!-- single slide item -->           
              <li>
                <div class="seq-model">
                  <img data-seq src="${pageContext.request.contextPath}/resources/img/slider/laptop.jpg" alt="TV img" />
                </div>
                <div class="seq-title">                                 
                  <h2 data-seq>Electronics</h2>                                  
                  <a href="Product" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                </div>
              </li>           
            </ul>
          </div>
          <!-- slider navigation btn -->
          <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
            <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
            <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
          </fieldset>
        </div>
      </div>
    </section>
    <!-- / slider -->
 
 <!-- emi card section -->
  <section id="aa-emicard">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
          <div class="wrapper">
              <div class="outer">
                <div class="content animated fadeInLeft">                
                  <h3>Card Number: <%=session.getAttribute("cardID") %>             <br/> 
                       Name:  <%=session.getAttribute("firstName") %>  <%=session.getAttribute("lastName") %>    <br/> 
                       Validity Date:  <%=session.getAttribute("validDate") %>            <br/> 
                       Card Type: <%=session.getAttribute("cardType") %>                  </h3>
                  <h2 >ACTIVATED: <%=session.getAttribute("activated") %>  </h2>
                  </div>
              </div>            
            </div>
      </div>
     </div>
   </div>
  </section>
  <!-- / emi card section -->

 <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">          
           <div class="cart-view-table">
             <form action="">
                <div class="credits-view-total">
                    <h4>CREDITS</h4>
                    <table class="aa-totals-table">
                      <tbody>
                        <tr>
                          <th>Total Credits</th>
                          <td>Rs.<%=session.getAttribute("credits") %></td>
                        </tr>
                        <tr>
                          <th>Used Credits</th>
                          <td>insert later</td>
                        </tr>
                        <tr>
                           <th>Remaining Credits</th>
                           <td>Rs.<%=session.getAttribute("remaingCredits") %></td>
                         </tr>
                      </tbody>
                    </table><br><br>
                    <h4>Amount Due Rs.xxxx On date : dd/mm/yyyy </h4>                      
                    <table class="aa-totals-table">
                        <tbody>
                          <tr>
                            <th>Name of Product</th>
                            <td>xxxxxxx</td>
                          </tr>
                          <tr>
                            <th>Cost of Product</th>
                            <td>xxxxx</td>
                          </tr>
                          <tr>
                             <th>Amount Paid</th>
                             <td>xxxxx</td>
                           </tr>
                           <tr>
                              <th>Balance</th>
                              <td>xxxxx</td>
                            </tr>
                        </tbody>
                      </table><br><br>

                  </div><br><br>
               <div class="table-responsive">
                  <table class="table">
                    <h2>RECENT TRANSACTIONS</h2>
                    <thead>
                      <tr>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Date of Purchase</th>
                        <th>Amount</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><a class="aa-cart-title" href="#">Polo T-Shirt</a></td>
                        <td>$250</td>
                        <td><input class="aa-cart-quantity" type="number" value="1"></td>
                        <td><input  type="date"></td>
                        <td>$250</td>
                      </tr>
                      <tr>
                        <td><a class="aa-cart-title" href="#">Polo T-Shirt</a></td>
                        <td>$150</td>
                        <td><input class="aa-cart-quantity" type="number" value="1"></td>
                        <td><input  type="date"></td>
                        <td>$150</td>
                      </tr>
                      <tr>                       
                        <td><a class="aa-cart-title" href="#">Polo T-Shirt</a></td>
                        <td>$50</td>
                        <td><input class="aa-cart-quantity" type="number" value="1"></td>
                        <td><input  type="date"></td>
                        <td>$50</td>
                      </tr>                      
                      </tbody>
                  </table>
                </div>
             </form>
             <!-- Credits View -->            
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