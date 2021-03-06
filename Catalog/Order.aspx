<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Catalog_Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>&#1512;&#1490;&#1500; 2 - &#1492;&#1494;&#1502;&#1504;&#1514; &#1502;&#1493;&#1510;&#1512;
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <style type="text/css">
        #demo-container
        {
            height: 30px;
            padding: 3px 5px 0 25px;
            background: #67A897;
        }
        ul#simple-menu
        {
            list-style-type: none;
            width: 100%;
            position: relative;
            font-family: "Tahoma" ,Arial,sans-serif;
            font-size: 13px;
            font-weight: bold;
            margin: 0;
            padding: 0;
        }
        ul#simple-menu li
        {
            display: inline;
            float: right;
            margin: 2px 1px 2px 2px;
        }
        ul#simple-menu li.left
        {
            margin: 0;
        }
        ul#simple-menu li a
        {
            display: block;
            float: left;
            color: #000000;
            background: #6CC417;
            text-decoration: none;
            padding: 5px 17px 4px 18px;
        }
        ul#simple-menu li a.right
        {
            padding-right: 19px;
        }
        ul#simple-menu li a:hover
        {
            background: #fff;
        }
        ul#simple-menu li a.current
        {
            color: #000000;
            background: #fff;
        }
        ul#simple-menu li a.current:hover
        {
            color: #000000;
            background: #fff;
        }
        -- ></style>
    <style type="text/css">
        .style1
        {
            font-family: Arial;
        }
        .style2
        {
            font-family: Arial;
            font-size: x-small;
        }
        .style3
        {
            font-family: Tahoma;
            font-weight: bold;
            color: #999999;
            font-size: xx-large;
        }
        .style10
        {
            font-family: Arial;
            font-size: x-small;
            color: #FFFFFF;
        }
        </style>
</head>
<body background="../pic/bak.jpg" style="background-attachment: fixed; background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div style="width: 70.1%; margin: 0 auto; background-color: #FFF; line-height: 120px;
        height: 95px; opacity: 0.92; -moz-opacity: 0.92; filter: alpha(opacity=92);"
        class="style1" dir="rtl">
   <a href ="../homepage.aspx">  <img src="../logo.PNG" alt="&#1500;&#1493;&#1493;&#1490;" style ="border-width :0;" /></a>
        <center>
            <table dir="rtl" style="margin-top: -15px; background-color: #E9E9E9">
                <tr>
                    <td>
                        <asp:TextBox ID="search" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"
                            Font-Size="Medium" Height="21px" Width="195px" ForeColor="#000000"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="typeproname" DataValueField="typeprocode" Font-Size="Medium">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                            SelectCommand="SELECT * FROM [TblDetailType]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:ImageButton ID="srcbtn" runat="server" BackColor="Black" Height="25px" ImageUrl="~/srcimg.png"
                            Width="25px" OnClick="srcbtn_Click" />
                    </td>
                </tr>
            </table>
        </center>
    </div>

    <div id="demo-container" style="width: 70.1%; padding: 0; margin: 0 auto; background-color: #000000;"
        class="style1">
        <ul id="simple-menu" dir="rtl">
            <li><a href="../HomePage.aspx" title="&#1491;&#1507; &#1489;&#1497;&#1514;">&#1491;&#1507;
                &#1489;&#1497;&#1514;</a></li>
            <li><a href="../users/RegisterCus.aspx" title="&#1492;&#1512;&#1513;&#1502;&#1492;">
                &#1492;&#1512;&#1513;&#1502;&#1492;</a></li>
            <li><a href="../users/UserLogin.aspx" title="&#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514;">
                &#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514;</a></li>
            <li><a href="../Catalog/CatHome.aspx" title="&#1502;&#1493;&#1510;&#1512;&#1497;&#1501;"
                class="current">&#1502;&#1493;&#1510;&#1512;&#1497;&#1501;</a></li>
            <li><a href="../admin/AdminPanel.aspx" title="&#1502;&#1504;&#1492;&#1500;">&#1502;&#1504;&#1492;&#1500;</a></li>
            <li><a href="#" title="&#1488;&#1493;&#1491;&#1493;&#1514;">&#1488;&#1493;&#1491;&#1493;&#1514;</a></li>
            <li><a href="mailto:tahor.ram@gmail.com" title="&#1510;&#1493;&#1512; &#1511;&#1513;&#1512;">&#1510;&#1493;&#1512;
                &#1511;&#1513;&#1512;</a></li>
        </ul>
    </div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #E9E9E9; line-height: 100%;
        color: #000000; height: 100%; text-align: center;" class="style1" dir="rtl">
        <br />

        <asp:Panel ID="Panel1" runat="server" 
            Style="text-align: right; margin: 0 auto;" BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="1px"
            Height="25px" Width="693px" BackImageUrl="~/pic/saldiv.png">
            <table>
                <tr>
                    <td style="width: 100%;">
                        <asp:Label ID="hellolbl" runat="server" Text="&#1513;&#1500;&#1493;&#1501; &#1502;&#1504;&#1492;&#1500;. &#1502;&#1493;&#1510;&#1512;&#1497;&#1501; &#1489;&#1505;&#1500;: 4  "></asp:Label>
                        <asp:Button ID="gotosal" runat="server" Text="&#1506;&#1489;&#1493;&#1512; &#1488;&#1500; &#1505;&#1500; &#1492;&#1511;&#1504;&#1497;&#1493;&#1514; &#1513;&#1500;&#1498;"
                            BorderStyle="Solid" Font-Size="9pt" Height="18px" Width="127px" BorderWidth="1px"
                            OnClick="gotosal_Click" BorderColor="Black" />
                        <asp:Button ID="logout" runat="server" Text="&#1492;&#1514;&#1504;&#1514;&#1511;"
                            BorderStyle="Solid" Font-Size="9pt" Height="18px" Width="72px" BorderWidth="1px"
                            OnClick="logout_Click" BorderColor="Black" style="margin-right: 6px" />
                    </td>
                    <td style="width: 100%;">
                        <asp:Label ID="nowdate" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>

        <span class="style3" style="display: block; text-align: right; padding-top: 15px;">&#1492;&#1494;&#1502;&#1504;&#1514;
            &#1502;&#1493;&#1510;&#1512;</span>
        <hr />
        <br />
        <br />
        <table dir="rtl" style="margin: 0 auto; border-width: 0px;">
            <tr>
                <td style="background-image: url('../pic/divord.PNG'); text-align: right; height: 35px;">
                    <asp:Label ID="name1" runat="server" Text="&#1502;&#1495;&#1513;&#1489; &#1504;&#1497;&#1497;&#1491; &#1505;&#1493;&#1505; "
                        Font-Bold="True" ForeColor="White" Style="font-size: 18pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: white;">
                    <table dir="rtl" style="margin: 0 auto; text-align: center; border-width: 0px;">
                        <tr>
                            <td style="background-color: #fff; font-family: Tahoma; height: 400px; width: 328px;
                                text-align: right;">
                                <asp:Label ID="des" runat="server" 
                                    Text="dasffsd fhsdg sdghsd ghsdgsd guihsdfugi sdfhigdf guidfh uigdf"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="price1" runat="server" Text="&#1502;&#1505;&#1508;&#1512; &#1492;&#1494;&#1502;&#1504;&#1492;:"
                                    Style="font-size: small"></asp:Label><br />
                                <asp:TextBox ID="ordernum" runat="server" BackColor="White" BorderColor="#BCF187"
                                    ReadOnly="True" Height="25px" Width="169px" BorderStyle="Solid" 
                                    BorderWidth="0px" Font-Size="13pt" Font-Underline="True"></asp:TextBox><br />
                                <asp:Label ID="Label1" runat="server" Text="&#1514;&#1488;&#1512;&#1497;&#1498; &#1492;&#1494;&#1502;&#1504;&#1492;:"
                                    Style="font-size: small"></asp:Label><br />
                                <asp:TextBox ID="orderdate" runat="server" BackColor="White" BorderColor="#BCF187"
                                    ReadOnly="True" OnTextChanged="orderdate_TextChanged" Height="25px" Width="169px"
                                    BorderStyle="Solid" BorderWidth="0px" Font-Size="13pt" 
                                    Font-Underline="True"></asp:TextBox><br />
                                <asp:Label ID="Label6" runat="server" Text="&#1502;&#1493;&#1499;&#1512;:"
                                    Style="font-size: small"></asp:Label><br />
                                <asp:TextBox ID="cusid" runat="server" BackColor="White" BorderColor="#BCF187" ReadOnly="True"
                                    OnTextChanged="orderdate_TextChanged" Height="25px" Width="169px" BorderStyle="Solid"
                                    BorderWidth="0px" Font-Size="13pt" Font-Underline="True"></asp:TextBox><br />
                                <asp:Label ID="Label7" runat="server" Text="&#1511;&#1493;&#1491; &#1502;&#1493;&#1510;&#1512;:"
                                    Style="font-size: small"></asp:Label><br />
                                <asp:TextBox ID="proid" runat="server" BackColor="White" BorderColor="#BCF187" ReadOnly="True"
                                    OnTextChanged="orderdate_TextChanged" Height="25px" Width="169px" BorderStyle="Solid"
                                    BorderWidth="0px" Font-Size="13pt" Font-Underline="True"></asp:TextBox><br />
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="&#1502;&#1495;&#1497;&#1512; (&#1513;&quot;&#1495;):" 
                                    Style="font-size: small"></asp:Label><br />
                                <asp:TextBox ID="proprice" runat="server" BackColor="White" BorderColor="#BCF187"
                                    ReadOnly="True" Height="25px" Width="80px" BorderStyle="Solid" BorderWidth="0px"
                                    Font-Bold="True" Font-Size="13pt" Font-Underline="True"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="&#1499;&#1502;&#1493;&#1514; &#1489;&#1502;&#1500;&#1488;&#1497;:"
                                    Style="font-size: small"></asp:Label><br />
                                <asp:TextBox ID="proamount" runat="server" BackColor="White" BorderColor="#BCF187"
                                    ReadOnly="True" Height="25px" Width="169px" BorderStyle="Solid" 
                                    BorderWidth="0px" ontextchanged="proamount_TextChanged" Font-Size="13pt" 
                                    Font-Underline="True"></asp:TextBox><br />
                                <asp:Label ID="Label4" runat="server" Text="&#1499;&#1502;&#1493;&#1514; &#1502;&#1493;&#1494;&#1502;&#1504;&#1514;:"
                                    Style="font-size: small"></asp:Label><br />
                                <asp:TextBox ID="proordernum" runat="server" BackColor="White" BorderColor="#BCF187"
                                    Height="25px" Width="80px" OnTextChanged="proordernum_TextChanged" AutoPostBack="True"
                                    MaxLength="3" BorderStyle="Solid" BorderWidth="2px" Font-Size="14pt"></asp:TextBox><br />
                                <asp:Label ID="Label5" runat="server" Text="&#1505;&#1498; &#1492;&#1499;&#1500; &#1500;&#1514;&#1513;&#1500;&#1493;&#1501; (&#1513;&quot;&#1495;):"
                                    Style="font-size: small"></asp:Label><br />
                                <asp:TextBox ID="finalprice" runat="server" BackColor="White" BorderColor="#BCF187"
                                    ReadOnly="True" Height="25px" Width="80px" BorderStyle="Solid" 
                                    BorderWidth="0px" Font-Bold="True" Font-Size="13pt" ForeColor="#CC3300"></asp:TextBox>
                                    <br />
                                <br />
                                <center>
                                    <asp:Button ID="addorder" runat="server" style="background-image: url('../pic/divord.PNG');" 
                                        Text="&#1492;&#1493;&#1505;&#1507; &#1500;&#1505;&#1500;" BorderWidth="0px" 
                                        Font-Size="12pt" ForeColor="White" Height="34px"
                                        Width="93px" Font-Names="Tahoma" OnClick="addorder_Click" />
                                    <asp:Button ID="Button1" runat="server" style="background-image: url('../pic/divord.PNG');" 
                                        Text="&#1502;&#1493;&#1510;&#1512;&#1497;&#1501; &#1504;&#1493;&#1505;&#1508;&#1497;&#1501;" 
                                        BorderWidth="0px" Font-Size="12pt" ForeColor="White" Height="34px"
                                        Width="119px" Font-Names="Tahoma" OnClick="Button1_Click" />
                                    <asp:Button ID="endorder" runat="server" style="background-image: url('../pic/divord.PNG'); margin-right: 0px;" 
                                        Text="&#1505;&#1500; &#1492;&#1511;&#1504;&#1497;&#1493;&#1514;" 
                                        BorderWidth="0px" Font-Size="12pt" ForeColor="White" Height="34px"
                                        Width="93px" Font-Names="Tahoma" OnClick="endorder_Click" />
                                </center>
                            </td>
                            <td style="background-color: white; font-family: Tahoma; font-size: larger; height: 400px;
                                width: 250px; text-align: center;">
                                <asp:Image ID="Image1" runat="server" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial"
            ForeColor="Red"></asp:Label>
        <br />
        <br />
        <br />
        <table style="margin: 0 auto; background-color: White; text-align: right; width: 50%;">
            <tr>
                <td style="background-image: url('../pic/divord.PNG'); height: 25px; text-align: right;">
                    <asp:Label ID="Label8" runat="server" Text="&#1514;&#1490;&#1493;&#1489;&#1493;&#1514;"
                        Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    <asp:Label ID="repnum" runat="server" Font-Size="10pt" Text="&#1488;&#1497;&#1503; &#1514;&#1490;&#1493;&#1489;&#1493;&#1514; &#1500;&#1502;&#1493;&#1510;&#1512; &#1494;&#1492;"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="rplygrid" runat="server" Width="435px" Style="width: 95%; margin: 0 auto;
                        text-align: right;" Font-Size="11pt" GridLines="Horizontal" BorderColor="#A2DD47"
                        BorderStyle="Solid" BorderWidth="2px" CellPadding="1">
                        <FooterStyle BackColor="Black" />
                        <HeaderStyle BackColor="#A2DD47" Wrap="True" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="errply" runat="server" Font-Size="11pt" ForeColor="Red"></asp:Label><br />
                    <asp:TextBox ID="rplytxt" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="89px"
                        MaxLength="250" TextMode="MultiLine" Width="286px"></asp:TextBox>
                    <br />
                    <asp:Button ID="submitrply" runat="server" Text="&#1513;&#1500;&#1495; &#1514;&#1490;&#1493;&#1489;&#1492;"
                        Font-Bold="True" OnClick="submitrply_Click" style="width: 94px" />
                    <br />
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #6CC417; text-align: center;
        padding: 5px 0; height: 25px;" class="style2">
    </div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #000000; text-align: center;
        padding: 5px 0; height: 6px;" class="style10">
        &#1499;&#1500; &#1492;&#1494;&#1499;&#1493;&#1497;&#1493;&#1514; &#1513;&#1502;&#1493;&#1512;&#1493;&#1514;&nbsp;
       � Regel2 <%=System .DateTime .Now .Year .ToString () %>
        </div>
        </form>
   </body>
   
</html>
