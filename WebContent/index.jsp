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
            <button type="button" class="navbar-toggle" data-toggle="collapse" 
              data-target=".navbar-collapse">
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
             <li style="float:right"><a href="RegisterSpring" >Register</a></li>     
             <li style="float:right"><a href="Login">Login</a></li>             
             <li class="hidden-xs" style="float:right"><a href="Login">Products</a></li>
            </ul>
          </div>
        </div>
      </div>       
    </div>
  </section>
  <!-- / menu -->

  <!-- Start slider -->
  <section id="aa-slider">
    <div class="aa-slider-area">
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
                <a href="Login" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
              </div>
            </li>

            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${pageContext.request.contextPath}/resources/img/slider/watch.jpg" alt="Wristwatch slide img" />
              </div>
              <div class="seq-title">             
                <h2 data-seq>Wristwatch Collection</h2>                
                <a href="Login" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
              </div>
            </li>

            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${pageContext.request.contextPath}/resources/img/slider/bed.jpg" alt="Beds img" />
              </div>
              <div class="seq-title">                              
                <h2 data-seq>Furniture Collection</h2>                               
                <a href="Login" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
              </div>
            </li>

            <!-- single slide item -->           
            <li>
              <div class="seq-model">
                <img data-seq src="${pageContext.request.contextPath}/resources/img/slider/laptop.jpg" alt="TV img" />
              </div>
              <div class="seq-title">               
                <h2 data-seq>Electronics</h2>                
                <a href="Login" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
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

  <!-- Products section -->
  <section id="aa-product">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-product-area">
              <div class="aa-product-inner">

                <!-- start prduct navigation -->
                 <ul class="nav nav-tabs aa-products-tab">
                    <li class="active"><a href="#Furniture" data-toggle="tab">Furniture</a></li>
                    <li><a href="#wristwatch" data-toggle="tab">Wrist-watches</a></li>                   
                    <li><a href="#electronics" data-toggle="tab">Electronics</a></li>
                  </ul>

                  <!-- Tab panes -->
                  <div class="tab-content">

                    <!-- Start Furniture product category -->
                    <div class="tab-pane fade in active" id="Furniture">
                      <ul class="aa-product-catg">

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn1.jpg" alt="frenchrococo img"></a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="Login"> Antique Commode</a></h4>
                              <span class="aa-product-price">Rs.10000/-</span>
                            </figcaption>
                          </figure>                                           
                        </li> 

                        <!-- start single product item -->
                        <li>
                          <figure>
                           <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn2.jpg" alt="bunkbeds img"></a>                      
                            <figcaption>
                             <h4 class="aa-product-title"><a href="Login">BunkBed</a></h4>
                             <span class="aa-product-price">Rs.9000/-</span>
                            </figcaption>
                          </figure>                                                      
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn3.jpg" alt="babycrib img"></a>                           
                             <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Baby's Crib</a></h4>
                              <span class="aa-product-price">Rs.7000/-</span>
                            </figcaption>
                          </figure>                                 
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn4.jpg" alt="FrenchBed img"></a>                            
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">French Bed</a></h4>
                              <span class="aa-product-price">Rs.25000</span>
                            </figcaption>
                          </figure>                                                         
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn5.jpg" alt="dogbed img"></a>                           
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Dog PuffyBed</a></h4>
                              <span class="aa-product-price">Rs.5550/-</span>
                            </figcaption>
                          </figure>                                 
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn6.jpg" alt="Retrochair img"></a>                          
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">RetroChair</a></h4>
                              <span class="aa-product-price">Rs.5000/-</span>
                            </figcaption>
                          </figure>                                 
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn7.jpg" alt="Coffeetable img"></a>                           
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Low CoffeeTable</a></h4>
                              <span class="aa-product-price">Rs.7000/-</span>
                            </figcaption>
                          </figure>                                                           
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn8.jpg" alt="bubblechair img"></a>                            
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">BubbleChair</a></h4>
                              <span class="aa-product-price">Rs.8500/-</span>
                            </figcaption>
                          </figure>                                                   
                        </li>                        
                      </ul>   
                    </div>
                    <!-- / furniture product category -->

                     <!-- start wristwatch product category -->
                     <div class="tab-pane fade" id="wristwatch">
                        <ul class="aa-product-catg">

                          <!-- start single product item -->
                          <li>
                            <figure>
                              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc1.jpg" alt="watch"></a>          
                              <figcaption>
                                <h4 class="aa-product-title"><a href="Login">Slim Full Black Magnet Strap</a></h4>
                                <span class="aa-product-price">Rs.7000/-</span>
                              </figcaption>
                            </figure>                         
                         </li>

                          <!-- start single product item -->
                          <li>
                              <figure>
                                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc2.jpg" alt="watch"></a>          
                                <figcaption>
                                    <h4 class="aa-product-title"><a href="Login">Slim Full Black Magnet Strap</a></h4>
                                    <span class="aa-product-price">Rs.8000/-</span>
                                </figcaption>
                              </figure>                         
                           </li>

                          <!-- start single product item -->
                          <li>
                              <figure>
                                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc3.jpg" alt="watch"></a>          
                                <figcaption>
                                  <h4 class="aa-product-title"><a href="Login">Women's watch by casio</a></h4>
                                  <span class="aa-product-price">Rs.8500/-</span>
                                </figcaption>
                              </figure>                         
                           </li>

                          <!-- start single product item -->
                          <li>
                              <figure>
                                <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/watches/wtc4.jpg" alt="watch"></a>          
                                <figcaption>
                                  <h4 class="aa-product-title"><a href="Login">Brown Leather Strap Wrist Watch</a></h4>
                                  <span class="aa-product-price">Rs.10000/-</span>
                                </figcaption>
                              </figure>                         
                           </li>

                          <!-- start single product item -->
                          <li>
                              <figure>
                                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc5.jpg" alt="watch"></a>          
                                <figcaption>
                                  <h4 class="aa-product-title"><a href="Login">Diouz Women's watch</a></h4>
                                  <span class="aa-product-price">Rs.8000/-</span>
                                </figcaption>
                              </figure>                         
                           </li>

                           <!-- start single product item -->
                           <li>
                              <figure>
                                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc6.jpg" alt="watch"></a>          
                                <figcaption>
                                  <h4 class="aa-product-title"><a href="Login">Crystal Quartz Women's watch</a></h4>
                                  <span class="aa-product-price">Rs.12000/-</span>
                                </figcaption>
                              </figure>                         
                           </li>

                          <!-- start single product item -->
                          <li>
                              <figure>
                                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc7.jpg" alt="watch"></a>          
                                <figcaption>
                                  <h4 class="aa-product-title"><a href="Login">Bracelate watch</a></h4>
                                  <span class="aa-product-price">Rs.9000/-</span>
                                </figcaption>
                              </figure>                         
                           </li>

                          <!-- start single product item -->
                          <li>
                              <figure>
                                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc8.jpg" alt="watch"></a>          
                                <figcaption>
                                  <h4 class="aa-product-title"><a href="Login">Rolex</a></h4>
                                  <span class="aa-product-price">Rs.25000/-</span>
                                </figcaption>
                              </figure>                         
                           </li> 
                           </ul>   
                     </div>                          
                      <!-- / watches product category -->      
                   
                    <!-- start electronic product category -->
                    <div class="tab-pane fade" id="electronics">
                       <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <li>
                          <figure>
                            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect1.jpg" alt="Electronics"></a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Iphone X</a></h4>
                              <span class="aa-product-price">Rs.60000/-</span>
                            </figcaption>
                          </figure>   
                          </li>     

                        <!-- start single product item -->
                        <li>
                          <figure>
                              <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/electronics/ect2.jpg" alt="Electronics"></a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Godrej Front Load Automatic Washing Machine</a></h4>
                              <span class="aa-product-price">Rs.15000/-</span>
                            </figcaption>
                          </figure>                                    
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect3.jpg" alt="Electronics"></a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Prestige Juicer Mixer Grinder</a></h4>
                              <span class="aa-product-price">Ra.13000/-</span>
                            </figcaption>
                          </figure>                                                   
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                              <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/electronics/ect4.jpg" alt="Electronics"></a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Whirlpool French Door Refrigerator</a></h4>
                              <span class="aa-product-price">Rs.20000/-</span>
                            </figcaption>
                          </figure>                          
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect5.jpg" alt="Electronics"></a>
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">espresso machine</a></h4>
                              <span class="aa-product-price">Rs.12000/-</span>
                            </figcaption>
                          </figure>                           
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                              <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/electronics/ect6.jpg" alt="Electronics"></a>  
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Microwave Oven</a></h4>
                              <span class="aa-product-price">Rs.15000/-</span>
                            </figcaption>
                          </figure>                                  
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect7.jpg" alt="electronics"></a>    
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Xiaomi Redmi Note 4x</a></h4>
                              <span class="aa-product-price">Rs.12000/-</span>
                            </figcaption>
                          </figure>                            
                        </li>

                        <!-- start single product item -->
                        <li>
                          <figure>
                              <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/electronics/ect8.jpg" alt="polo shirt img"></a>      
                            <figcaption>
                              <h4 class="aa-product-title"><a href="Login">Whirlpool 305 IMFresh</a></h4>
                              <span class="aa-product-price">Rs.12000/-</span>
                            </figcaption>
                          </figure>                           
                        </li>                        
                      </ul>      
                    </div>
                    <!-- / electronic product category -->    
                  </div>  
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><br>
  <!-- / Products section -->
 
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