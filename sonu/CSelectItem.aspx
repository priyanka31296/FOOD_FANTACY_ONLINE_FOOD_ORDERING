<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CSelectItem.aspx.cs" Inherits="CSelectItem" %>

<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<style type="text/css">
    .style1
    {
        width: 921px;
    }
    .style2
    {
        height: 16px;
    }
    .style3
    {
        width: 23%;
        height: 323px;
        z-index: 1;
        left: 902px;
        top: 271px;
        position: absolute;
        margin-left: 0px;
        margin-right: 241px;
        margin-top: 143px;
    }
</style>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<form id="form1" runat="server">
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
                            
        
        <table>
           
            <tr>
                <td colspan="3">
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                        BorderColor="Black" BorderWidth="15px" CellPadding="20" CellSpacing="50" 
                        Font-Bold="True" Font-Size="Large" 
                        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                        RepeatDirection="Horizontal" Width="850px" Height="135px">
                        <asp:ListItem>roti</asp:ListItem>
                        <asp:ListItem>bhaji</asp:ListItem>
                        <asp:ListItem>rice</asp:ListItem>
                        <asp:ListItem>soops</asp:ListItem>
                        <asp:ListItem>cool_drinks</asp:ListItem>
                        <asp:ListItem>breakfasts</asp:ListItem>
                        <asp:ListItem>food_thalies</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <br />
                </td>
                <td>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                        CellPadding="4" CellSpacing="2" DataKeyNames="iid,itemName" 
                      
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="711px" 
                        ForeColor="Black">
                        <Columns>
                            <asp:BoundField DataField="iid" HeaderText="iid" ReadOnly="True" 
                                SortExpression="iid" />
                            <asp:BoundField DataField="itemName" HeaderText="itemName" ReadOnly="True" 
                                SortExpression="itemName" />
                            <asp:BoundField DataField="itemType" HeaderText="itemType" 
                                SortExpression="itemType" />
                            <asp:BoundField DataField="itemImage" HeaderText="itemImage" 
                                SortExpression="itemImage" Visible="False" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:ImageField DataImageUrlField="itemImage">
                            </asp:ImageField>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        
                    </asp:GridView>
            
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <table class="style3">
                        <tr>
                            <td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Information of the selected Item</strong></td>
                        </tr>
                         <tr>
                            <td class="text-right">
                                Order Num&nbsp; </td>
                            <td>
                                <asp:TextBox ID="txtordnum" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">
                                Pid&nbsp; :</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">
                                item name&nbsp; 
                                :</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">
                                item Type&nbsp; 
                                :</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">
                                price&nbsp; 
                                :</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">
                                Quantity&nbsp; 
                                :</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged" AutoPostBack="true"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="TextBox5" ErrorMessage="enter only number" 
                                    ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">
                                Total&nbsp; 
                                :</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">
                                <asp:Button ID="Button3" runat="server" Text="Add To Cart" 
                                    onclick="Button3_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="view Cart" 
                                    onclick="Button2_Click" />
                            </td>
                        </tr>
                    </table>

                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        </div>
       
    
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
 </form>
    

    