<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CCartPage.aspx.cs" Inherits="CCartPage" %>


<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<form id="form2" runat="server">
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
            
            <div id="pre-header" class="container" style="height: 40px">
                <!-- Spacing above header -->
            </div>
            <div id="header">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <div class="style1">
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
                                    <a href="CHomePage.aspx" class="fa-home">Home</a>
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
                <div class="container background-white" style="color: #000000">
                    
                            <!-- Main Content -->
                            <br />
                            <table class="style1">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="#FFCCCC" 
                                            Font-Bold="True" Font-Italic="True" ForeColor="#000066" 
                                            NavigateUrl="~/CSelectItem.aspx">To select the food items from ItemMaster Click here</asp:HyperLink>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                            </br>
                            
                            <asp:Label ID="lbl_ord_no" runat="server" Text="Order Number"></asp:Label>:&nbsp;&nbsp;&nbsp;
                            
                            <asp:TextBox ID="txt_ord_no" runat="server"></asp:TextBox>
                            
<body>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
   
    
    <br />
    <table>
    <tr>
    
    <td>
        <table>
           
            <tr>
                <td colspan="3">
                    <asp:Panel ID="Panel2" runat="server">
                        <table class="style1">
                            <tr>
                                <td class="style3" style="text-align: right">
                                    Select Restuarant:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="159px">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                     <asp:ListItem Value="1">Annapurna</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Delivary date:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtdate" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Delivary Time:</td>
                <td colspan="2">
                    <asp:TextBox ID="txttime" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Mob number</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="10"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="enter 10 number" 
                        ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Restuarant/Delivary Address:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtaddress" runat="server" Height="79px" TextMode="MultiLine" 
                        Width="348px"></asp:TextBox>
                </td>
            </tr>
           
           
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Place Order" Width="132px" 
                        onclick="Button1_Click" />
                </td>
                <td colspan="2">
                    <asp:Button ID="Button2" runat="server" Text="Cancle Order" 
                        onclick="Button2_Click" />
                    </td>
            </tr>
        </table></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <td>
            <asp:GridView ID="GridView1" runat="server" 
       onrowdeleting="GridView1_RowDeleting" ShowFooter="True" 
        onpageindexchanging="GridView1_PageIndexChanging" BackColor="White" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
     <Columns>
    
         <asp:ButtonField ButtonType="Button" Text="Remove" CommandName="delete" />
   
       </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView></td></tr></table>
    
   
    
   
    
   
</body>
                           
</html>
</form>