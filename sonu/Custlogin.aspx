<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Custlogin.aspx.cs" Inherits="Custlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Corlate</title>
	
	<!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <style type="text/css">
        .style1
        {
            width: 160px;
        }
        </style>
</head><!--/head-->

<body class="homepage">

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +9448973111</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Home.aspx"><img src="images/food fantacy.png" 
                        alt="logo" class="style1"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="HomePage.aspx">Home</a></li>
                        <li><a href="RegistrationPage.aspx">Register Here</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="Adminlogin.aspx">Admin Login</a></li>
                                <li><a href="Custlogin.aspx">Customer Login</a></li>
                            </ul>
                        </li>
                        <li><a href="viewnewoffer.aspx">New Offer</a></li> 
                        <li><a href="FeedBack.aspx">View feedback</a></li>    
                         <li><a href="Aboutus.aspx">About Us</a></li>
                        <li><a href="ContactUs.aspx">Contect us</a></li>
                                          
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
		
    </header><!--/header-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            font-style: italic;
            font-weight: bold;
            }
        .style4
        {
            width: 511px;
            text-align: left;
        }
        .style5
        {
            width: 318px;
        }
        .style6
        {
            width: 457px;
            font-style: italic;
            font-weight: bold;
        }
        .style7
        {
            width: 810px;
            height: 104px;
        }
        .style8
        {
            display: block;
            height: 27px;
            max-width: 100%;
            width: 352px;
            font-size: x-large;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="border: thick double #000000; text-align: center; background-image: url('food imges/home-bg.jpg');">
        <br />
        <br />
    <table class="style6" align="center" border="6" frame="box">
            <tr>
                <td colspan="2" style="text-align: center">
                    <img alt="" class="style7" src="Images2/login.jpg" /><br />
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style5">
                    &nbsp;<span 
                        class="style8">Login username*&nbsp; :&nbsp;</span><br />
                </td>
                <td class="style4">
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" 
                        BorderStyle="Solid" Height="35px" Width="188px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style5">
                    <span class="style8">&nbsp;Password * :&nbsp;&nbsp;</span><br />
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" 
                        BorderStyle="Solid" Height="35px" Width="187px"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <br />
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Overline="False" 
                        Font-Size="Large" Font-Strikeout="False" Height="40px" Text="click here..." 
                        Width="135px" onclick="Button1_Click" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    
    
        <br />
        <br />
        <br />
        <br />
    
    
    
    </div>
    </form>
</body>
</html>
