<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

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
                    <a class="navbar-brand" href="Homepage.aspx"><img src="images/food fantacy.png" 
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
        .style4
        {
            text-align: right;
            width: 281px;
        }
        .style5
        {
            text-align: left;
            width: 305px;
        }
        .style6
        {
            width: 305px;
        }
        .style7
        {
            width: 281px;
        }
        .style8
        {
            font-size: medium;
            font-weight: bold;
        }
        .style9
        {
            width: 879px;
            margin-left: 14px;
        }
        .style11
        {
            font-size: large;
            font-weight: bold;
        }
        .style12
        {
            width: 1378px;
        }
        .style13
        {
            text-align: left;
        }
        .style14
        {
            width: 859px;
            height: 86px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('food imges/gallery-img3.jpg')" 
        class="style12">
    
     
        <br />
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <br />
    
    
        <table class="style9" align="center" border="10" frame="box">
            <tr>
                <td colspan="2" class="style13">
                    <img alt="" class="style14" src="Images2/login2.jpg" /><br />
                </td>
            </tr>
            <tr>
                <td class="style4" style="color: #C0C0C0">
                    <span class="style11">
                    <br />
                    Admin username<span lang="en-us">&nbsp; :<br />
                    </span></span>
                </td>
                <td class="style5">
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: right; color: #C0C0C0;" class="style7">
                    <span class="style8">Admin password<span lang="en-us">&nbsp; :</span></span></td>
                <td class="style6">
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                        lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>&nbsp;<span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Click here..." Height="51px" 
                        Width="120px" Font-Bold="True" Font-Size="Large" BorderColor="Black" 
                        BorderStyle="Double" onclick="Button1_Click" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    
        <br />
        <br />
        <br />
    
    
    </div>
    </form>
</body>
</html>
