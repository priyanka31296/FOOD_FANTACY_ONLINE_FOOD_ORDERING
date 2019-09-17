<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CHomePage.aspx.cs" Inherits="CHomePage" %>

<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<style type="text/css">
    .style1
    {
        text-align: center;
        font-size: xx-large;
    }
</style>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title>Lifestyle - Professional Bootstrap Template</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=PT+Sans" type="text/css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="body-bg">
            <div id="pre-header" class="container" 
                style="height:340px; font-weight: 700; font-size: xx-large;">
                <br />
                <br />
                <br />
                </div>
            <div id="header">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <div class="style1">
                            <a href="index.html" title="">
                               Annapurna FoodFantacy

                            </a>
                            <marquee style="color: #b1a5bd; font-family: 'Brush Script MT'; font-weight: 1000" ><asp:Image ID="Image1" runat="server" Height="70px" 
            ImageUrl="~/bgimages/IMG-20170508-WA0007.jpg" Width="70px" />&nbsp&nbsp&nbsp<i>Happy to Serve you</i></marquee>
                        </div>
                        <!-- End Logo -->
                    </div>
                </div>
            </div>
            <!-- Top Menu -->
            <div id="hornav" class="container no-padding">
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <div class="text-center visible-lg">
                            <ul id="hornavmenu" class="nav navbar-nav">
                                <li>
                                    <a href="" class="fa-home">Home</a>
                                </li>
                                <li>
                                    <a href="CSelectItem.aspx">Place Order</a>
                                </li>
                                <li>
                                    <a href="CNewOffer.aspx" >New Offer</a>
                                </li>
                                <li class="parent">
                                    <a href="CCancelOrder.aspx" >Cancle Order</a>
                                </li>
                                <li>
                                    <a href="CFeedBack.aspx" >Feedback</a>
                                </li>
                                <li>
                                    <a href="HomePage.aspx">Logout</a>
                                    
                                </li>
                               
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Top Menu -->
            <div id="post_header" class="container" style="height:340px">
            </div>
            
            <!-- === END HEADER === -->
            <!-- === BEGIN CONTENT === -->
            <div id="content">
                <div class="container no-padding">
                    <div class="row">
                        <!-- Carousel Slideshow -->
                        <div id="carousel-example" class="carousel slide" data-ride="carousel">
                            <!-- Carousel Indicators -->
                            
                           
                    </div>
                </div>
               
                <div class="container background-white">
                    <div class="row margin-vert-30">
                        <!-- Main Text -->
                        <div class="col-md-12">
                            <h2 class="text-center">Welcome to Hotel Annapurna</h2>
                            <p class="text-center">Our Hotel is one of the Best Hotel in the Jamakhandi..!!! We 
                                have three branches in the Jamakhandi only and another in the Galgali...!! Where 
                                as the Quality of the food is maintained..!!. the cleaniness is also 
                                maintained...!!!</p>
                            <p class="text-center">Quality of the food is rich...!! and the very important time 
                                maintainace is also done. In concern with old age people and working womens and 
                                men the online food ordering website is created soo that they can order the food 
                                by bein in home and and the Food is deliverd to the customer to the given 
                                adress..!!! The old age people who can&#39;t come to the restorent even they can 
                                also enjoy the Quality food by ordering the food..!!!</p>
                        </div>
                        <!-- End Main Text -->
                    </div>
                </div>
                <div class="container background-gray-lighter">
                    <div class="row padding-vert-20">
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-10">
                            <!-- Portfolio -->
                            <ul class="portfolio-group">
                                <!-- Portfolio Item -->
                                <li class="portfolio-item col-sm-6 col-xs-6 padding-20">
                                    <a href="#">
                                        <figure class="animate fadeInLeft">
                                            <img alt="image1" src="assets/img/IMG-20170508-WA0007.jpg">
                                            <figcaption>
                                                <h3>Logo of the Our Hotel</h3>
                                                <span></span>
                                            </figcaption>
                                        </figure>
                                    </a>
                                </li>
                                <!-- //Portfolio Item// -->
                                <!-- Portfolio Item -->
                                <li class="portfolio-item col-sm-6 col-xs-6 padding-20">
                                    <a href="#">
                                        <figure class="animate fadeInRight">
                                            <img alt="image2" src="assets/img/IMG-20170508-WA0013.jpg">
                                            <figcaption>
                                                <h3>Oner of the Annapurna Hotel</h3>
                                                <span></span>
                                            </figcaption>
                                        </figure>
                                    </a>
                                </li>
                                <!-- //Portfolio Item// -->
                                <!-- Portfolio Item -->
                                <li class="portfolio-item col-sm-6 col-xs-6 padding-20">
                                    <a href="#">
                                        <figure class="animate fadeInLeft">
                                            <img alt="image3" src="assets/img/IMG-20170508-WA0012.jpg">
                                            <figcaption>
                                                <h3>The Branches Of the Annapurna Hotel</h3>
                                                <span></span>
                                            </figcaption>
                                        </figure>
                                    </a>
                                </li>
                                <!-- //Portfolio Item// -->
                                <!-- Portfolio Item -->
                                <li class="portfolio-item col-sm-6 col-xs-6 padding-20">
                                    <a href="#">
                                        <figure class="animate fadeInRight">
                                            <img alt="image4" src="assets/img/PicsArt_05-08-08.51.53.jpg">
                                            <figcaption>
                                                <h3>Branch Near the CourtRoad Jamakhandi</h3>
                                                <span</span>
                                            </figcaption>
                                        </figure>
                                    </a>
                                </li>
                                <!-- //Portfolio Item// -->
                                <!-- Portfolio Item -->
                                <li class="portfolio-item col-sm-6 col-xs-6 padding-20">
                                    <a href="#">
                                        <figure class="animate fadeInLeft">
                                            <img alt="image5" src="assets/img/IMG-20170508-WA0006.jpg">
                                            <figcaption>
                                                <h3>BranchinGalgali</h3>
                                                <span></span>
                                            </figcaption>
                                        </figure>
                                    </a>
                                </li>
                                <!-- //Portfolio Item// -->
                                <!-- Portfolio Item -->
                                <li class="portfolio-item col-sm-6 col-xs-6 padding-20">
                                    <a href="#">
                                        <figure class="animate fadeInRight">
                                            <img alt="image6" src="assets/img/PicsArt_05-08-08.51.31.jpg">
                                            <figcaption>
                                                <h3>New Branch near Kunchanur cirle</h3>
                                                <span></span>
                                            </figcaption>
                                        </figure>
                                    </a>
                                </li>
                                <!-- //Portfolio Item// -->
                            </ul>
                            <!-- End Portfolio -->
                        </div>
                        <div class="col-md-1">
                        </div>
                    </div>
                </div>
                <div class="container background-white">
                    <div class="row padding-vert-40">
                        <div class="col-md-12">
                            <h2 class="animate fadeIn text-center">WE ARE CURRENTLY HIRING!</h2>
                            <p class="animate fadeIn text-center">If you Want to enjoy the food..!! the log on 
                                to the &quot;Annapurna FoodFantacy&quot;</p>
                            <p class="animate fadeInUp text-center">
                                &nbsp;</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- === END CONTENT === -->
            <!-- === BEGIN FOOTER === -->
            <div id="content-bottom-border" class="container">
            </div>
            <div id="base">
                <div class="container padding-vert-30 margin-top-60">
                    <div class="row">
                        <!-- Contact Details -->
                        <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Contact Details</h3>
                            <p>
                                <span class="fa-phone">Telephone:</span>(212)888-77-88
                                <br>
                                <span class="fa-envelope">Email:</span> piya312@gmail.com<br>
                                <span class="fa-link">Website:</span>
                                <a href="http://www.joomla51.com">www.</a>annapurnajkd.com</p>
                            <p>Annapurna, busstand Road,
                                <br>Jamakhandi,
                                <br>dist Bagalkot,
                                <br></p>
                        </div>
                        <!-- End Contact Details -->
                        <!-- Sample Menu -->
                        <div class="col-md-3 margin-bottom-20">
                            <h3 class="margin-bottom-10">Sample Menu</h3>
                            <ul class="menu">
                                <li>
                                    Full Meals
                                </li>
                                <li>
                                    Cool Drinks and Milk sheks
     Cool Drinks and Milk sheks
                                </li>
                                <li>
                                    NorthIndian Food
                                </li>
                                <li>
                                    Snakes
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <!-- End Sample Menu -->
                        <!-- Disclaimer -->
                        <!-- End Disclaimer -->
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- Footer Menu -->
            <div id="footer">
                <div class="container">
                    <div class="row">
                        <div id="footermenu" class="col-md-8">
                            <ul class="list-unstyled list-inline">
                                <li>
                                    <a href="#" target="_blank">Sample Link     </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                            </ul>
                        </div>
                        <div id="copyright" class="col-md-4">
                            <p class="pull-right">(c) 2014 Your Copyright Info</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Menu -->
            <!-- JS -->
            <script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/scripts.js"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="assets/js/jquery.sticky.js" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="assets/js/slimbox2.js" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
            <!-- End JS -->
    </body>
</html>
<!-- === END FOOTER === -->
