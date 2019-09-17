<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="RegistrationPage" %>

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
        .style4
        {
            width: 933px;
            margin-left: 0px;
        }
        .style5
        {
            width: 979px;
            text-align: right;
        }
        .style6
        {
            width: 979px;
        }
        .style15
        {
            width: 979px;
            text-align: right;
            height: 55px;
        }
        .style16
        {
            width: 379px;
            height: 55px;
        }
        .style17
        {
            font-size: large;
        }
        .style18
        {
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('bgimages/mac_os_x_fluid_colors-wide - Copy.jpg'); height: 748px;">
    <div> <marquee style="color: #FFFFFF; font-weight: 700"> <asp:Image ID="Image2" runat="server" Height="145px" 
            ImageUrl="~/images2/reg2.jpg" Width="1391px" /></marquee>
   
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
         <table class="alert" align="left">

            <tr>
                <td class="style15">
                    <b>
                    <br />
                    <span class="style17">User Name</span></b><span class="style17">&nbsp; :<br />
                    </span>
                    <br />
                </td>
                <td class="style16">
                    
                    
                    <asp:TextBox ID="txtrname" runat="server" BorderStyle="Ridge" Height="34px"></asp:TextBox>
                    
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtrname" ErrorMessage="enter only charecters" 
                        ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                    
                    
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <b>
                    
                    <br />
                    <span class="style17">User Login Name</span></b><span class="style17"> :<br />
                    </span>&nbsp;<br />
                </td>
                <td class="style16">
                    
                    <asp:TextBox ID="txtulname" runat="server" BorderStyle="Ridge" Height="32px"></asp:TextBox>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtulname" ErrorMessage="enter the charecter without space" 
                        ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <b>
                    
                    <br />
                    <span class="style17">Password</span></b><span class="style17"> :<br />
                    </span>&nbsp;
                </td>
                <td class="style16">
                    
                    <asp:TextBox ID="txtpass" runat="server" BorderStyle="Ridge" 
                        TextMode="Password" Height="29px"></asp:TextBox>
                    
                   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="txtpass" 
                        ErrorMessage="enter the charecter and special number" 
                        ValidationExpression="^[0-9a-zA-Z\.@_-]+$"></asp:RegularExpressionValidator>
                    
                   
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <span class="style18">Email Id</span><span class="style17">&nbsp; :</span></td>
                <td class="style16">
                    
                    <asp:TextBox ID="txtemail" runat="server" BorderStyle="Ridge" Height="27px"></asp:TextBox>
                    
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="enter correct email adress" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    
                    
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <span class="style18">Mobile Number</span><span class="style17"> :
                    
                    
                </span>
                    
                    
                </td>
                <td class="style16">
                    
                    <asp:TextBox ID="txtmobno" runat="server" BorderStyle="Ridge" Height="29px" 
                        MaxLength="10"></asp:TextBox>
                    
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                        ControlToValidate="txtmobno" ErrorMessage="enter 10 numbers " 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    
                    
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <span class="style18">Location</span><span class="style17"> :
                    
                    
                </span>
                    
                    
                </td>
                <td class="style16">
                    <asp:TextBox ID="txtloca" runat="server" BorderStyle="Ridge" 
                        TextMode="MultiLine" Width="155px"></asp:TextBox>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtloca" ErrorMessage="enetr the charecter" 
                        ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" BorderStyle="Outset" Text="Save.." 
                        onclick="Button1_Click" Width="114px" />
                </td>
                <td class="style4">
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" BorderStyle="Outset" Text="Reset" 
                        Width="107px" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            </table> 
            
            
               
            
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
