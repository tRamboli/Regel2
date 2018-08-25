<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterCus.aspx.cs" Inherits="RegisterCus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>&#1512;&#1497;&#1513;&#1493;&#1501; &#1502;&#1513;&#1514;&#1502;&#1513; &#1495;&#1491;&#1513;
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
        .style5
        {
            width: 118px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: medium;
        }
        .style10
        {
            font-family: Arial;
            font-size: x-small;
            color: #FFFFFF;
        }
        .style11
        {
            font-weight: bold;
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
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
                        <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="Medium" DataSourceID="SqlDataSource3"
                            DataTextField="typeproname" DataValueField="typeprocode">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
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
            <li><a href="#" title="&#1492;&#1512;&#1513;&#1502;&#1492;" class="current">&#1492;&#1512;&#1513;&#1502;&#1492;</a></li>
            <li><a href="../users/UserLogin.aspx" title="&#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514;">
                &#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514;</a></li>
            <li><a href="../Catalog/CatHome.aspx" title="&#1502;&#1493;&#1510;&#1512;&#1497;&#1501;">
                &#1502;&#1493;&#1510;&#1512;&#1497;&#1501;</a></li>
            <li><a href="../admin/AdminPanel.aspx" title="&#1502;&#1504;&#1492;&#1500;">&#1502;&#1504;&#1492;&#1500;</a></li>
            <li><a href="#" title="&#1488;&#1493;&#1491;&#1493;&#1514;">&#1488;&#1493;&#1491;&#1493;&#1514;</a></li>
            <li><a href="mailto:tahor.ram@gmail.com" title="&#1510;&#1493;&#1512; &#1511;&#1513;&#1512;">&#1510;&#1493;&#1512;
                &#1511;&#1513;&#1512;</a></li>
        </ul>
    </div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #E9E9E9; line-height: 100%;
        color: #000000; height: 695px; text-align: center;" class="style1" dir="rtl">
        <span class="style3" style="display: block; text-align: right; padding-top: 15px;">&nbsp;&#1512;&#1497;&#1513;&#1493;&#1501;
            &#1502;&#1513;&#1514;&#1502;&#1513; &#1495;&#1491;&#1513;</span>
        <hr />
        <br />
        <br />
        <asp:Label ID="err" runat="server" ForeColor="Red"></asp:Label>
        <table style="margin: 0 auto; background-color: White; border: solid 6.5px #CCCCCC;">
            <tr>
                <td style="background-color: Black; text-align: right; height: 35px;">
                    <asp:Label ID="Label1" runat="server" Text="&#1496;&#1493;&#1508;&#1505; &#1492;&#1512;&#1513;&#1502;&#1492;"
                        ForeColor="White" Font-Bold="True" Font-Size="17pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table dir="rtl" style="margin: 0 auto 5px; background-color: White;">
                        <tr>
                            <td class="style5">
                                &#1513;&#1501; &#1502;&#1513;&#1514;&#1502;&#1513;
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="User" runat="server" Font-Size="12pt" Height="25px" Width="159px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &#1513;&#1501; &#1502;&#1500;&#1488;
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="Name" runat="server" Font-Size="12pt" Height="25px" Width="159px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &#1505;&#1497;&#1505;&#1502;&#1492;
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="Pass" runat="server" TextMode="Password" Font-Size="12pt" Height="25px"
                                    Width="159px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &#1488;&#1497;&#1502;&#1493;&#1514; &#1505;&#1497;&#1505;&#1502;&#1492;
                            </td>
                            <td class="style12">
                                <asp:TextBox ID="RePass" runat="server" TextMode="Password" Font-Size="12pt" Height="25px"
                                    Width="159px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &#1502;&#1505;&#1508;&#1512; &#1496;&#1500;&#1508;&#1493;&#1503;
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="Phone" runat="server" Font-Size="12pt" Height="25px" MaxLength="10"
                                    Width="159px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                &#1502;&#1497;&#1503;
                            </td>
                            <td class="style9">
                                <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="12pt" Height="25px"
                                    Width="159px">
                                    <asp:ListItem>&#1494;&#1499;&#1512;</asp:ListItem>
                                    <asp:ListItem>&#1504;&#1511;&#1489;&#1492;</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                    ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                    SelectCommand="SELECT * FROM [TblCities]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &#1490;&#1497;&#1500;
                            </td>
                            <td>
                                <asp:TextBox ID="Age" runat="server" Font-Size="12pt" Height="25px" Width="159px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &#1506;&#1497;&#1512;
                            </td>
                            <td class="style7">
                                <span class="style6"><span class="style7">
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                                        DataTextField="CityName" DataValueField="CityID" Style="margin-right: 0px" Font-Size="12pt"
                                        Height="25px" Width="159px" AppendDataBoundItems="True">
                                        <asp:ListItem>&#1489;&#1495;&#1512;</asp:ListItem>
                                    </asp:DropDownList>
                                </span></span>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                    ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                    SelectCommand="SELECT [CityID], [CityName] FROM [TblCities]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &#1499;&#1514;&#1493;&#1489;&#1514;
                            </td>
                            <td class="style7">
                                <asp:TextBox ID="Adress" runat="server" Font-Size="12pt" Height="25px" Width="159px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    <asp:Button ID="reg" runat="server" Text="&#1512;&#1497;&#1513;&#1493;&#1501;" BackColor="#6CC417"
                        BorderStyle="Solid" Font-Size="Medium" Style="right: 247px; top: 561px; height: 32px;
                        width: 87px; margin-top: 0px; margin-bottom: 5px; margin-left: 1px;" OnClick="reg_Click"
                        Height="35px" Width="132px" />
                    <asp:Button ID="cln" runat="server" Text="&#1504;&#1511;&#1492;" BackColor="#6CC417"
                        BorderStyle="Solid" Font-Size="Medium" Style="right: 344px; top: 560px; height: 32px;
                        width: 87px; margin-top: 0px; margin-bottom: 5px; margin-right: 5px;" OnClick="cln_Click"
                        Width="169px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <img src="../regimg.PNG" align="left" alt="" /></div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #6CC417; text-align: center;
        padding: 5px 0; height: 25px;" class="style2">
    </div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #000000; text-align: center;
        padding: 5px 0; height: 6px;" class="style10">
        &#1499;&#1500; &#1492;&#1494;&#1499;&#1493;&#1497;&#1493;&#1514; &#1513;&#1502;&#1493;&#1512;&#1493;&#1514;&nbsp;
       © Regel2 <%=System .DateTime .Now .Year .ToString () %>
    </div>
    </form>
</body>
</html>
