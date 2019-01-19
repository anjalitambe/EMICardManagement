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
       <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
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
                <li  style="float:right"><a href="Dashboard">My Profile</a></li>                                       
              </ul>
          </div>
        </div>
      </div>       
    </div>
  </section>
<!-- / menu -->  

<!-- emi card section -->
  <section id="aa-emicard">
      <div class="aa-catg-head-banner-area">
        <div class="container">
         <div class="aa-catg-head-banner-content">
             <div class="wrapper">
                 <div class="outer">
                   <div class="content animated fadeInLeft">                
                     <h3>Card Number: <%=session.getAttribute("cardID") %>             <br/> 
                          Name: <%=session.getAttribute("firstName") %>  <%=session.getAttribute("lastName") %>                   <br/> 
                          Validity Date: <%=session.getAttribute("validDate") %>             <br/> 
                          Card Type:   <%=session.getAttribute("cardType") %>                </h3>
                     <h2 >ACTIVATED:  <%=session.getAttribute("activated") %></h2>
                     </div>
                 </div>            
               </div>
         </div>
        </div>
      </div>
     </section>
     <!-- / emi card section -->
     
      <!-- Cart view section -->
 <section id="checkout">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="checkout-area">
          <form action="">
            <div class="row">
              <div class="col-md-8">
                <div class="checkout-left">
                  <div class="panel-group" id="accordion">
                   
                   
                    <!-- Shipping Address -->
                    <div class="panel panel-default aa-checkout-billaddress">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                            Shippping Address
                          </a>
                        </h4>
                      </div>
                      <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                         <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="First Name*">
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="Last Name*">
                              </div>
                            </div>
                          </div> 
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <input type="number" placeholder="EMICard Number">
                              </div>                             
                            </div>                            
                          </div>  
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="email" placeholder="Email Address*">
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="tel" placeholder="Phone*">
                              </div>
                            </div>
                          </div> 
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <textarea cols="8" rows="3">Address*</textarea>
                              </div>                             
                            </div>                            
                          </div>   
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <select>
                                  <option value="0">Select Your Country</option>
                                  <option value="1">Australia</option>
                                  <option value="2">Afganistan</option>
                                  <option value="3">Bangladesh</option>
                                  <option value="4">Belgium</option>
                                  <option value="5">Brazil</option>
                                  <option value="6">Canada</option>
                                  <option value="7">China</option>
                                  <option value="8">Denmark</option>
                                  <option value="9">Egypt</option>
                                  <option value="10">India</option>
                                  <option value="11">Iran</option>
                                  <option value="12">Israel</option>
                                  <option value="13">Mexico</option>
                                  <option value="14">UAE</option>
                                  <option value="15">UK</option>
                                  <option value="16">USA</option>
                                </select>
                              </div>                             
                            </div>                            
                          </div>
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="Appartment, Suite etc.">
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="City / Town*">
                              </div>
                            </div>
                          </div>   
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="District*">
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="Postcode / ZIP*">
                              </div>
                            </div>
                          </div> 
                                
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="checkout-right">
                  <h4>Credit Details</h4>
                  <div class="aa-order-summary-area">
                    <table class="table table-responsive">
                      <thead>
                        <tr>
                          <th>Total Credits</th>
                          <th>Rs.<%=session.getAttribute("credits") %></th>
                        </tr>
                       
                           <tr>
                            <th>Remaining Credits(Available-Needed)</th>
                            <th>Rs.<%=session.getAttribute("remaingCredits") %></th>
                          </tr>
                      </thead>
                      </table>
                  </div>
                   <div class="row">
                        <a href="" data-toggle="modal" data-target="#login-modal" 
                        type="submit" class="aa-browse-btn" >PAY NOW</a>
                    </div>                                  
                  </div>
                </div>
              </div>
            </div>
          </form>
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
 
  <!-- Login Modal -->  
   <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">                      
          <div class="modal-body">
          <p style="text-align: center">Proceed to pay?</p>
          <div class="Confirm-payment">                    
            <a href="SuccessPayment" type="submit" class="aa-browse-btn" >YES</a>
            <a href="Payment" style="float: right" type="submit" class="aa-browse-btn" >NO</a>
          </div>                        
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div>
    <!-- Payment modal -->   
    
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