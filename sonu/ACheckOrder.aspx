<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ACheckOrder.aspx.cs" Inherits="ACheckOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WCSST 37</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/MyriadPro.font.js"></script>
<script type="text/javascript" src="js/ArialBold.font.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
<!--[if IE 6]><link rel="stylesheet" href="css/ie.css" type="text/css" media="all" /><![endif]-->
</head>
<body>
<!-- START PAGE SOURCE -->
<div id="header">
  <div class="shell">
    <h1 id="logo">Food Fantacy<br /></h1>
    <div id="navigation">
      <ul>
        <li><a href="#" class="active">HOME<br /></a></li>
        <li><a href="AItemMaster.aspx">ITEM MASTER</a></li>
        <li><a href="ANewOffer.aspx">NEW OFFER</a></li>
        <li><a href="ACheckOrder.aspx">ORDERED LIST</a></li>
        <li><a href="ACancelOrder.aspx">CANCLED ORDER</a></li>
        <li><a href="HomePage.aspx">LOGOUT</a></li>
        <li></li>
      </ul>
    </div>
  </div>
</div>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-style: italic;
            font-weight: bold;
            color: #000066;
            text-decoration: underline;
        }
        .style2
        {
            color: #FFCCFF;
            font-size: x-large;
            text-decoration: underline;
            height: 16px;
        }
        .style3
        {
            font-size: large;
            text-align: right;
            color: #FFFFFF;
            width: 291px;
            height: 47px;
        }
        .style5
        {
            text-align: left;
            top: 137px;
            left: 584px;
            position: absolute;
            height: 404px;
            width: 555px;
        }
        .style12
        {
            text-align: left;
            width: 246px;
            height: 47px;
        }
        .style13
        {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; top: 75px; left: 0px; position: absolute; height: 946px; width: 1285px;">
    
        <br />
        <span class="style1" style="color: #FFCCFF">The ordered list of the cuestomers<br />
        <br />
        </span><br />
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
            ForeColor="Black" GridLines="None" Height="165px" Width="358px" >
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <table class="style5">
            <tr>
                <td class="style2" colspan="2">
                    <em>Seach a Items Orders For the Ordered Number</em></td>
            </tr>
            <tr>
                <td class="style3">
                    Ordered Number is:</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="enter only number" 
                        ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style13">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                        Width="161px" Height="46px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView2" runat="server"
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" CellSpacing="2" Height="182px" Width="552px">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
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
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
