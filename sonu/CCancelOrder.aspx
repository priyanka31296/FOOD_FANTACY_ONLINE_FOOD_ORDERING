<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CCancelOrder.aspx.cs" Inherits="CCancelOrder" %>

<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
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
            <ul class="social-icons pull-right hidden-xs">
                <li class="social-rss">
                    <a href="#" target="_blank" title="RSS"></a>
                </li>
                <li class="social-twitter">
                    <a href="#" target="_blank" title="Twitter"></a>
                </li>
                <li class="social-facebook">
                    <a href="#" target="_blank" title="Facebook"></a>
                </li>
                <li class="social-googleplus">
                    <a href="#" target="_blank" title="GooglePlus"></a>
                </li>
            </ul>
            <div id="pre-header" class="container" style="height: 40px">
                <!-- Spacing above header -->
            </div>
            <div id="header">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html" title="">
                                <marquee style="color: #b1a5bd; font-family: 'Brush Script MT'; font-weight: 1000" ><asp:Image ID="Image3" runat="server" Height="90px" 
            ImageUrl="~/bgimages/IMG-20170508-WA0007.jpg" Width="90px" /><asp:Image ID="Image4" runat="server" Height="90px" 
            ImageUrl="~/bgimages/happy.jpg" Width="90px" /><asp:Image ID="Image2" runat="server" Height="90px" 
            ImageUrl="~/bgimages/IMG-20170508-WA0007.jpg" Width="90px" /></marquee>
                            </a>
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
            <div id="post_header" class="container" style="height: 40px">
                <!-- Spacing below header -->
            </div>
            <div id="content-top-border" class="container">
            </div>
            <!-- === END HEADER === -->
            <!-- === BEGIN CONTENT === -->
            <div id="content">
                <div class="container background-white">
                    
                            <!-- Main Content -->
                            
                            <br>
    <style type="text/css">
        .style1
        {
            width: 400px;
        }
        .style2
        {
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table class="style1" align="center">
                <tr>
                <td colspan="2" 
                    
                    style="text-align: center; font-size: x-large; font-weight: 700; background-color: #669999" 
                    class="style2">
                    CANCEL ORDER</td>
            </tr>
            <tr>
                <td class="style3">
                   
               
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Enter Order Reference No:</td>
                <td style="color: #FF3300">
                    <asp:TextBox ID="TextBox1" runat="server" required="true"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="enter only number" 
                        ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    </td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" Text="Cancle Order" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <br />
             
        </table>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    </form>
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
