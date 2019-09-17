<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AItemMaster.aspx.cs" Inherits="AItemMaster" %>

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
            color: #000000;
        }
        .style3
        {
            text-align: center;
            font-weight: 700;
            font-size: medium;
        }
        .style4
        {
        }
        .style5
        {
            width: 337px;
        }
        .style6
        {
            width: 99%;
            margin-left: 7px;
        }
        .style9
        {
            text-align: right;
            width: 594px;
            height: 26px;
            color: #FFFF99;
            font-weight: bold;
            font-size: large;
        }
        .style10
        {
            height: 26px;
            text-align: left;
        }
        .style13
        {
            text-align: right;
            width: 594px;
            color: #FFFF99;
            font-size: large;
            font-weight: bold;
        }
        .style14
        {
            width: 369px;
            text-align: left;
        }
        .style17
        {
            text-align: right;
            width: 594px;
            font-weight: 700;
            font-size: large;
            color: #FFFF99;
        }
        .style18
        {
            text-align: right;
            width: 594px;
            color: #FFFF99;
            font-size: large;
            font-weight: bold;
            height: 49px;
        }
        .style19
        {
            height: 49px;
            text-align: left;
        }
        .style20
        {
            text-align: right;
            width: 594px;
            color: #FFFF99;
            font-size: large;
            font-weight: bold;
            height: 44px;
        }
        .style21
        {
            height: 44px;
            text-align: left;
        }
        .style22
        {
        }
        .style23
        {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
     <table class="style6" style="border-style: outset; border-color: #000000">
        <tr>
            <td class="style2" colspan="4" 
                
                style="text-align: center; font-size: x-large; font-weight: 700; background-color: #CCCCCC">
                ITEM MASTER<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style18">
                Item Id:<br />
                 </td>
            <td colspan="3" class="style19">
                <asp:TextBox ID="txtid" runat="server" Height="28px" 
                    Width="167px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtid" ErrorMessage="compalsary field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style13">
                Item Type:<br />
                 </td>
            <td colspan="3" class="style23">
                <asp:DropDownList ID="DDL" runat="server" Width="166px" Height="23px">
                    <asp:ListItem>roti</asp:ListItem>
                    <asp:ListItem>bhaji</asp:ListItem>
                    <asp:ListItem>rice</asp:ListItem>
                    <asp:ListItem>soops</asp:ListItem>
                    <asp:ListItem>cool_drinks</asp:ListItem>
                    <asp:ListItem>breakfasts</asp:ListItem>
                    <asp:ListItem>food_thalies</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style20">
                Item Name:<br />
                 </td>
            <td colspan="3" class="style21">
                <asp:TextBox ID="txtitemname" runat="server" Width="166px" required="true" 
                    Height="26px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtitemname" ErrorMessage="only alphabets" 
                    ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Images :</td>
            <td class="style14">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="23px" Width="165px" />
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                <br />
                Price :<br />
                <br />
                 </td>
            <td colspan="3" class="style10">
                <asp:TextBox ID="txtprice" runat="server" required="true" Height="21px" 
                    Width="159px"></asp:TextBox>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtprice" ErrorMessage="enter only number" 
                    ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
               
                <br />
               
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="4">
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="Button2" runat="server" Text="Save" Width="84px" 
                    onclick="Button2_Click" Height="23px" />
                
                &nbsp;&nbsp;
               
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22" colspan="4">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                        BorderColor="#CCCCFF" BorderWidth="15px" CellPadding="20" CellSpacing="50" 
                        Font-Bold="True" Font-Size="Large" 
                        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                        RepeatDirection="Horizontal" Width="850px" Height="135px" 
                    Font-Underline="True">
                        <asp:ListItem>roti</asp:ListItem>
                        <asp:ListItem>bhaji</asp:ListItem>
                        <asp:ListItem>rice</asp:ListItem>
                        <asp:ListItem>soops</asp:ListItem>
                        <asp:ListItem>cool_drinks</asp:ListItem>
                        <asp:ListItem>breakfasts</asp:ListItem>
                        <asp:ListItem>food_thalies</asp:ListItem>
                    </asp:RadioButtonList>
                &nbsp;</td>

        </tr>
        <tr>
            <td class="style4" colspan="4">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [ItemMaster] WHERE [itemName] = @itemName" 
                    InsertCommand="INSERT INTO [ItemMaster] ([iid], [itemName], [itemType], [itemImage], [price]) VALUES (@iid, @itemName, @itemType, @itemImage, @price)" 
                    SelectCommand="SELECT [iid], [itemName], [itemType], [itemImage], [price] FROM [ItemMaster]" 
                    
                    UpdateCommand="UPDATE [ItemMaster] SET [iid] = @iid, [itemType] = @itemType, [itemImage] = @itemImage, [price] = @price WHERE [itemName] = @itemName">
                    <DeleteParameters>
                        <asp:Parameter Name="itemName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="iid" Type="Decimal" />
                        <asp:Parameter Name="itemName" Type="String" />
                        <asp:Parameter Name="itemType" Type="String" />
                        <asp:Parameter Name="itemImage" Type="String" />
                        <asp:Parameter Name="price" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="iid" Type="Decimal" />
                        <asp:Parameter Name="itemType" Type="String" />
                        <asp:Parameter Name="itemImage" Type="String" />
                        <asp:Parameter Name="price" Type="Int32" />
                        <asp:Parameter Name="itemName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" DataKeyNames="iid,itemName" 
                    DataSourceID="SqlDataSource1" ForeColor="Black" Height="320px" Width="985px">
                    <Columns>
                        <asp:TemplateField HeaderText="iid" SortExpression="iid">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("iid") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("iid") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="itemName" SortExpression="itemName">
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("itemName") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("itemName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="itemType" SortExpression="itemType">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("itemType") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("itemType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="itemImage" SortExpression="itemImage">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("itemImage") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("itemImage") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="price" SortExpression="price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ImageField DataImageUrlField="itemImage">
                        </asp:ImageField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    
    <div>
    
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
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
        <span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        <br />
    
    </div>
    
    </form>
        
</body>
</html>












