<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ACancelOrder.aspx.cs" Inherits="ACancelOrder" %>

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
        .style2
        {
            text-align: center;
        }
        .style3
        {
            color: #FFFF99;
            font-size: xx-large;
        }
        .style4
        {
            text-decoration: underline;
        }
        .style5
        {
            width: 50%;
            top: 188px;
            left: 562px;
            position: absolute;
            height: 256px;
        }
        .style6
        {
            text-align: left;
        }
        .style7
        {
            color: #FFFFFF;
            font-size: x-large;
            text-decoration: underline;
        }
        .style9
        {
            color: #FFFFFF;
            text-align: right;
            font-size: large;
        }
        .style10
        {
            color: #FFFFFF;
            text-align: right;
            font-size: large;
            height: 7px;
        }
        .style11
        {
            text-align: left;
            height: 7px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style2">
    
        <br />
    
        <br />
        <span class="style3" lang="en-us"><span class="style4">Cancled List of Ordered</span><br />
        </span>
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Height="228px" Width="393px" CellSpacing="2">
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
        <br />
        <table class="style5">
            <tr>
                <td class="style7" colspan="2">
                    <strong>Seach a Items Cancled Orders For the Ordered Number</strong></td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td class="style11">
                    </td>
            </tr>
            <tr>
                <td class="style9">
                    Ordered Number&nbsp; :</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="148px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="put order number" 
                        ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" 
                        Width="154px" Height="34px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Height="138px" 
                        Width="631px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="onum" HeaderText="onum" SortExpression="onum" />
                            <asp:BoundField DataField="Product_id" HeaderText="Product_id" 
                                SortExpression="Product_id" />
                            <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" 
                                SortExpression="Item_Name" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                                SortExpression="Quantity" />
                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                   
                </td>
            </tr>
        </table>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
