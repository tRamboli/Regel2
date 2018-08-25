<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="admin_AdminPanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>&#1500;&#1493;&#1495; &#1489;&#1511;&#1512;&#1492; &#1513;&#1500; &#1502;&#1504;&#1492;&#1500;
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
            top: 0px;
            right: 0px;
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
        .style11
        {
            font-size: small;
        }
        .style12
        {
            width: 43px;
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
            <li><a href="../Catalog/CatHome.aspx" title="&#1502;&#1493;&#1510;&#1512;&#1497;&#1501;">
                &#1502;&#1493;&#1510;&#1512;&#1497;&#1501;</a></li>
            <li><a href="../admin/AdminPanel.aspx" title="&#1502;&#1504;&#1492;&#1500;" class="current">
                &#1502;&#1504;&#1492;&#1500;</a></li>
            <li><a href="#" title="&#1488;&#1493;&#1491;&#1493;&#1514;">&#1488;&#1493;&#1491;&#1493;&#1514;</a></li>
            <li><a href="mailto:tahor.ram@gmail.com" title="&#1510;&#1493;&#1512; &#1511;&#1513;&#1512;">&#1510;&#1493;&#1512;
                &#1511;&#1513;&#1512;</a></li>
        </ul>
    </div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #E9E9E9; line-height: 100%;
        color: #000000; height: 3500px; text-align: right;" class="style1" dir="rtl">
        <span class="style3" style="display: block; text-align: right; padding-top: 15px;">&nbsp;&#1500;&#1493;&#1495;
            &#1489;&#1511;&#1512;&#1492; &#1513;&#1500; &#1502;&#1504;&#1492;&#1500;</span>
        <hr />
        <div style="text-align :left ; width :100%;">
            <asp:Button ID="adlogout" runat="server" Text="&#1492;&#1514;&#1504;&#1514;&#1511;" BackColor="#CC3300" 
                BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" 
                onclick="adlogout_Click" Width="100px" />

        </div>
        <!--        Start             -->
        <br />
        <br />
        <div style="width: 900px; margin: 0 auto; background-color: #6CC417; text-align: right;
            padding: 5px 0; height: 15px;" class="style2">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="13pt"
                Text="  &#1505;&#1496;&#1496;&#1497;&#1505;&#1496;&#1497;&#1511;&#1493;&#1514;" ForeColor="White" style="margin-right :10px;"></asp:Label>
        </div>
        <div style="width: 85%; margin: 0 auto; text-align: center; padding: 5px 0; height: 215px;"
            class="style2">
            <table style="margin: 0 auto; height: 94px;">
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="background-color: Black; width: 200px; height: 30px; color: #FFFFFF;">
                                    <strong style="font-size: medium">&#1502;&#1513;&#1514;&#1502;&#1513;&#1497;&#1501;</strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: White; height: 150px; text-align: right;">
                                    <asp:Label ID="allusers" runat="server" Text="&#1502;&#1505;&#1508;&#1512; &#1502;&#1513;&#1514;&#1502;&#1513;&#1497;&#1501;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="ageavg" runat="server" Text="&#1502;&#1502;&#1493;&#1510;&#1506; &#1490;&#1497;&#1500;&#1488;&#1497;&#1501;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="newuser" runat="server" Text="&#1492;&#1502;&#1513;&#1514;&#1502;&#1513; &#1492;&#1495;&#1491;&#1513; &#1489;&#1497;&#1493;&#1514;&#1512;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="olduser" runat="server" Text="&#1492;&#1502;&#1513;&#1514;&#1502;&#1513; &#1492;&#1493;&#1493;&#1514;&#1497;&#1511; &#1489;&#1497;&#1493;&#1514;&#1512;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="lastorderuser" runat="server" Text="&#1502;&#1513;&#1514;&#1502;&#1513; &#1488;&#1495;&#1512;&#1493;&#1503; &#1513;&#1489;&#1497;&#1510;&#1506; &#1492;&#1494;&#1502;&#1504;&#1492;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td style="background-color: Black; width: 200px; height: 30px; color: #FFFFFF;">
                                    <strong style="font-size: medium">&#1502;&#1493;&#1510;&#1512;&#1497;&#1501;</strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: White; height: 150px; text-align: right;">
                                    <asp:Label ID="procnt" runat="server" Text="&#1502;&#1505;&#1508;&#1512; &#1502;&#1493;&#1510;&#1512;&#1497;&#1501;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="exspro" runat="server" Text="&#1492;&#1502;&#1493;&#1510;&#1512; &#1492;&#1497;&#1511;&#1512; &#1489;&#1497;&#1493;&#1514;&#1512;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="cheapro" runat="server" Text="&#1492;&#1502;&#1493;&#1510;&#1512; &#1492;&#1494;&#1493;&#1500; &#1489;&#1497;&#1493;&#1514;&#1512;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="lastpro" runat="server" Text="&#1502;&#1493;&#1510;&#1512; &#1488;&#1495;&#1512;&#1493;&#1503; &#1513;&#1508;&#1493;&#1512;&#1505;&#1501;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="nonavpro" runat="server" Text="&#1502;&#1493;&#1510;&#1512;&#1497;&#1501; &#1513;&#1488;&#1494;&#1500;&#1493; &#1489;&#1502;&#1500;&#1488;&#1497;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td style="background-color: Black; width: 200px; height: 30px; color: #FFFFFF;">
                                    <strong style="font-size: medium">&#1492;&#1494;&#1502;&#1504;&#1493;&#1514;</strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: White; height: 150px; text-align: right;">
                                    <asp:Label ID="ornum" runat="server" Text="&#1502;&#1505;&#1508;&#1512; &#1502;&#1493;&#1510;&#1512;&#1497;&#1501;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="orlastdate" runat="server" Text="&#1492;&#1502;&#1493;&#1510;&#1512; &#1492;&#1497;&#1511;&#1512; &#1489;&#1497;&#1493;&#1514;&#1512;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="todayorder" runat="server" Text="&#1492;&#1502;&#1493;&#1510;&#1512; &#1492;&#1494;&#1493;&#1500; &#1489;&#1497;&#1493;&#1514;&#1512;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="sumprcord" runat="server" Text="&#1502;&#1493;&#1510;&#1512;&#1497;&#1501; &#1513;&#1488;&#1494;&#1500;&#1493; &#1489;&#1502;&#1500;&#1488;&#1497;: 0"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td style="background-color: Black; width: 200px; height: 30px; color: #FFFFFF;">
                                    <strong style="font-size: medium">&#1514;&#1490;&#1493;&#1489;&#1493;&#1514;</strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: White; height: 150px; text-align: right;">
                                    <asp:Label ID="rypnum" runat="server" Text="&#1502;&#1505;&#1508;&#1512; &#1514;&#1490;&#1493;&#1489;&#1493;&#1514;"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <asp:Label ID="maxrepusr" runat="server" Text="&#1492;&#1490;&#1497;&#1489; &#1492;&#1499;&#1497; &#1492;&#1512;&#1489;&#1492;:"
                                        Font-Bold="True" Font-Names="Arial" Font-Size="11pt"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                  
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <!--       End             -->
        <br />
        <br />
        <div style="width: 900px; margin: 0 auto; background-color: #6CC417; text-align: right;
            padding: 5px 0; height: 15px;" class="style2">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="13pt"
                
                Text="&#1508;&#1506;&#1493;&#1500;&#1493;&#1514; &#1502;&#1504;&#1492;&#1500; &#1506;&#1500; &#1502;&#1493;&#1510;&#1512;&#1497;&#1501;" 
                ForeColor="White" style="margin-right :10px;"></asp:Label>
        </div>
        <div style="width: 85%; margin: 0 auto; text-align: center; padding: 5px 0; height: 690px;"
            class="style2">
            <table style="margin: 0 auto; height: 94px;">
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="background-color: Black; width: 500px; height: 30px; color: #FFFFFF;">
                                    <strong style="font-size: medium">&#1492;&#1493;&#1505;&#1508;&#1514; &#1502;&#1493;&#1510;&#1512;
                                        &#1495;&#1491;&#1513;</strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: White; height: 260px; text-align: right;">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="&#1513;&#1501; &#1502;&#1493;&#1510;&#1512;: "
                                                    Font-Bold="False" Font-Names="Arial" Font-Size="12pt"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="prodname" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text="&#1502;&#1493;&#1499;&#1512;: " Font-Bold="False"
                                                    Font-Names="Arial" Font-Size="12pt"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="Sellername" runat="server" Width="150px" DataSourceID="SqlDataSource3"
                                                    DataTextField="User1" DataValueField="CusID">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                                    ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                                    SelectCommand="SELECT [CusID], [User1] FROM [TblCustomers]"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="&#1502;&#1495;&#1497;&#1512;: " Font-Bold="False"
                                                    Font-Names="Arial" Font-Size="12pt"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="prodprice" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label19" runat="server" Text="&#1514;&#1502;&#1493;&#1504;&#1492;: "
                                                    Font-Bold="False" Font-Names="Arial" Font-Size="12pt"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="prodpic" runat="server" Width="150px" AutoPostBack="True" OnTextChanged="prodpic_TextChanged"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="&#1499;&#1502;&#1493;&#1514;: " Font-Bold="False"
                                                    Font-Names="Arial" Font-Size="12pt"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="prodamu" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                            </td>
                                            <td style="text-align: center;">
                                                <asp:Button ID="Send" runat="server" Text="&#1492;&#1493;&#1505;&#1507;" Font-Bold="True"
                                                    Style="margin-right: 0px" Width="103px" OnClick="Send_Click" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style12">
                                                <asp:Label ID="Label6" runat="server" Text="&#1505;&#1493;&#1490;:" Font-Bold="False"
                                                    Font-Names="Arial" Font-Size="12pt"></asp:Label>
                                            </td>
                                            <td class="style12">
                                                <asp:DropDownList ID="protypelist" runat="server" DataSourceID="SqlDataSource2" DataTextField="typeproname"
                                                    DataValueField="typeprocode" Width="200px">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                                    ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                                    SelectCommand="SELECT * FROM [TblDetailType]"></asp:SqlDataSource>
                                            </td>
                                            <td class="style12">
                                            </td>
                                            <td class="style12" style="text-align: center;">
                                                <asp:Label ID="err1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="10pt"
                                                    ForeColor="Red"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label12" runat="server" Text="&#1514;&#1497;&#1488;&#1493;&#1512;:"
                                                    Font-Bold="False" Font-Names="Arial" Font-Size="12pt"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="proddes" runat="server" Height="120px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                            </td>
                                            <td style="text-align: center;">
                                                <asp:Image ID="propic" runat="server" BorderColor="#6CC417" BorderStyle="Solid" BorderWidth="4px"
                                                    Height="120px" Width="140px" ImageUrl="~/pic/noimg.png" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td style="background-color: Black; width: 320px; height: 30px; color: #FFFFFF;"
                                    class="style11">
                                    <strong style="font-size: medium">&#1492;&#1493;&#1505;&#1508;&#1514; &#1511;&#1496;&#1490;&#1493;&#1512;&#1497;&#1492;
                                        &#1495;&#1491;&#1513;&#1492; </strong>
                                </td>
                                <tr>
                                    <td style="background-color: White; height: 111px; text-align: center;">
                                        <center>
                                            <table>
                                                <tr>
                                                    <td style="text-align: center;">
                                                        <asp:Label ID="catnamelbl" runat="server" Text="&#1513;&#1501; &#1492;&#1511;&#1496;&#1490;&#1493;&#1512;&#1497;&#1492;:"
                                                            Font-Names="Arial" Font-Size="12pt"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="Catname" runat="server" Width="200px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center;">
                                                        <asp:Button ID="sendcatname" runat="server" Font-Bold="True" Text="&#1492;&#1493;&#1505;&#1507;"
                                                            Width="103px" OnClick="sendcatname_Click" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="erradd" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="10pt"
                                                            ForeColor="Red"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </center>
                                    </td>
                                </tr>
                        </table>
                        <!-- start -->
                        <table>
                            <tr>
                                <td style="background-color: Black; width: 320px; height: 30px; color: #FFFFFF;"
                                    class="style11">
                                    <strong style="font-size: medium">&#1492;&#1505;&#1512;&#1514; &#1511;&#1496;&#1490;&#1493;&#1512;&#1497;&#1492;
                                        &#1511;&#1497;&#1497;&#1502;&#1514;</strong>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: White; height: 111px; text-align: center;">
                                    <center>
                                        <table>
                                            <tr>
                                                <td style="text-align: center;">
                                                    <asp:Label ID="Label13" runat="server" Text="&#1489;&#1495;&#1512; &#1511;&#1496;&#1490;&#1493;&#1512;&#1497;&#1492;:"
                                                        Font-Names="Arial" Font-Size="12pt"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4"
                                                        DataTextField="typeproname" DataValueField="typeprocode" Width="200px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                                        ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                                        SelectCommand="SELECT * FROM [TblDetailType]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: center;">
                                                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="&#1492;&#1505;&#1512;"
                                                        Width="103px" OnClick="Button1_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="errremove" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="10pt"
                                                        ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                </td>
                            </tr>
                        </table>
                        <!-- end -->
                    </td>
                </tr>
            </table>
            <br />
            <center>
                <table>
                    <tr>
                        <td style="background-color: Black; width: 835px; height: 30px; color: #FFFFFF;">
                            <strong style="font-size: medium">&#1506;&#1512;&#1497;&#1499;&#1514; &#1502;&#1493;&#1510;&#1512;&#1497;&#1501;</strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: White; height: 260px; text-align: right;">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label24" runat="server" Text="&#1489;&#1495;&#1512; &#1502;&#1493;&#1510;&#1512; &#1500;&#1506;&#1512;&#1497;&#1499;&#1492;:"
                                            Font-Size="12pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="proedselect" runat="server" DataSourceID="SqlDataSource7" DataTextField="Productname"
                                            DataValueField="ProductID" Width="285px" AppendDataBoundItems="True">
                                            <asp:ListItem>&#1489;&#1495;&#1512;...</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                            ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                            SelectCommand="SELECT [ProductID], [Productname] FROM [Tblproducts]"></asp:SqlDataSource>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="&#1488;&#1493; &#1492;&#1494;&#1503; &#1511;&#1493;&#1491; &#1502;&#1493;&#1510;&#1512;:"
                                            Font-Size="12pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="proidins" runat="server"></asp:TextBox>
                                        <asp:Button ID="senpro" runat="server" Text="&#1513;&#1500;&#1495;" OnClick="senpro_Click" />
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="errpro" runat="server" Text="Label" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="10pt" ForeColor="Red" Visible="False"></asp:Label>
                            <br />
                            <hr />
                            <br />
                            <table style="border-width: 0;">
                                <tr>
                                    <td style="background-color: #EBEBEB;">
                                        <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="tahoma"
                                            Font-Size="12pt" Text="&#1508;&#1512;&#1496;&#1497; &#1502;&#1493;&#1510;&#1512;:"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: #F2F2F2;">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label31" runat="server" Text="&#1513;&#1501; &#1502;&#1493;&#1510;&#1512;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="edproname" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label26" runat="server" Text="&#1499;&#1502;&#1493;&#1514; &#1489;&#1502;&#1500;&#1488;&#1497;"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="edproamu" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label28" runat="server" Text="&#1511;&#1493;&#1491; &#1502;&#1493;&#1510;&#1512;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="edproid" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label29" runat="server" Text="&#1502;&#1493;&#1499;&#1512;:" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="edproseller" runat="server" DataSourceID="SqlDataSource5" DataTextField="User1"
                                                        DataValueField="CusID" Width="200px">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label30" runat="server" Text="&#1502;&#1495;&#1497;&#1512;:" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="edproprice" runat="server" Width="200px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label38" runat="server" Text="&#1514;&#1502;&#1493;&#1504;&#1492;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="edpropict" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label32" runat="server" Text="&#1505;&#1493;&#1490; &#1502;&#1493;&#1510;&#1512;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="edprotype" runat="server" DataSourceID="SqlDataSource8" DataTextField="typeproname"
                                                        DataValueField="typeprocode" Width="200px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                                        ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                                        SelectCommand="SELECT * FROM [TblDetailType]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label34" runat="server" Text="&#1514;&#1497;&#1488;&#1493;&#1512;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="edprodes" runat="server" Width="200px" Height="113px" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <asp:Image ID="edpropic" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="4px"
                                                        Height="120px" Width="140px" ImageUrl="~/pic/noimg.png" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="background-color: #EBEBEB;">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="clrpro" runat="server" Text="&#1504;&#1511;&#1492; &#1513;&#1491;&#1493;&#1514;"
                                                        Height="30px" Width="150px" OnClick="clrpro_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="delpro" runat="server" Text="&#1502;&#1495;&#1511; &#1502;&#1493;&#1510;&#1512; &#1494;&#1492;"
                                                        Height="30px" Width="150px" OnClick="delpro_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="savepro" runat="server" Text="&#1513;&#1502;&#1493;&#1512; &#1513;&#1497;&#1504;&#1493;&#1497;&#1497;&#1501;"
                                                        Height="30px" Width="150px" OnClick="savepro_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="errpro2" runat="server" Text="Label" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="10pt" ForeColor="Red" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <!--**************************&#1502;&#1513;&#1514;&#1502;&#1513;&#1497;&#1501;*******************************-->
        <div style="width: 900px; margin: 0 auto; background-color: #6CC417; text-align: right;
            padding: 5px 0; height: 15px;" class="style2">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="13pt"
                
                Text="&#1508;&#1506;&#1493;&#1500;&#1493;&#1514; &#1502;&#1504;&#1492;&#1500; &#1506;&#1500; &#1502;&#1513;&#1514;&#1502;&#1513;&#1497;&#1501;" 
                ForeColor="White" style="margin-right :10px;"></asp:Label>
        </div>
        <div style="width: 85%; margin: 0 auto; text-align: center; padding: 5px 0; height: 367px;"
            class="style2">
            <center>
                <table>
                    <tr>
                        <td style="background-color: Black; width: 835px; height: 30px; color: #FFFFFF;">
                            <strong style="font-size: medium">&#1506;&#1512;&#1497;&#1499;&#1514; &#1502;&#1513;&#1514;&#1502;&#1513;&#1497;&#1501;</strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: White; height: 260px; text-align: right;">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="&#1489;&#1495;&#1512; &#1502;&#1513;&#1514;&#1502;&#1513; &#1500;&#1506;&#1512;&#1497;&#1499;&#1492;:"
                                            Font-Size="12pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource5"
                                            DataTextField="User1" DataValueField="CusID" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"
                                            Width="177px">
                                            <asp:ListItem>&#1489;&#1495;&#1512;...</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                            ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                            SelectCommand="SELECT [CusID], [User1] FROM [TblCustomers]"></asp:SqlDataSource>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="&#1488;&#1493; &#1492;&#1494;&#1503; &#1511;&#1493;&#1491; &#1502;&#1513;&#1514;&#1502;&#1513;:"
                                            Font-Size="12pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="useridtxt" runat="server"></asp:TextBox>
                                        <asp:Button ID="senduser" runat="server" Text="&#1513;&#1500;&#1495;" OnClick="senduser_Click" />
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="errusr" runat="server" Text="Label" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="10pt" ForeColor="Red" Visible="False"></asp:Label>
                            <br />
                            <hr />
                            <br />
                            <table style="border-width: 0;">
                                <tr>
                                    <td style="background-color: #EBEBEB;">
                                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="tahoma"
                                            Font-Size="12pt" Text="&#1508;&#1512;&#1496;&#1497; &#1502;&#1513;&#1514;&#1502;&#1513;:"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: #F2F2F2;">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label10" runat="server" Text="&#1511;&#1493;&#1491; &#1500;&#1511;&#1493;&#1495;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="useridtext" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label21" runat="server" Text="&#1506;&#1497;&#1512;:" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="usercity" runat="server" DataSourceID="SqlDataSource6" DataTextField="CityName"
                                                        DataValueField="CityID" Width="200px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                                        ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                                        SelectCommand="SELECT * FROM [TblCities]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label11" runat="server" Text="&#1513;&#1501; &#1502;&#1513;&#1514;&#1502;&#1513;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="usernametext" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label22" runat="server" Text="&#1490;&#1497;&#1500;:" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="agetext" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label14" runat="server" Text="&#1513;&#1501; &#1508;&#1512;&#1496;&#1497;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="nametext" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label20" runat="server" Text="&#1502;&#1497;&#1503;:" Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="usersex" runat="server" Width="200px">
                                                        <asp:ListItem>&#1494;&#1499;&#1512;</asp:ListItem>
                                                        <asp:ListItem>&#1504;&#1511;&#1489;&#1492;</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label15" runat="server" Text="&#1502;&#1505;&#1508;&#1512; &#1496;&#1500;&#1508;&#1493;&#1503;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="phonetext" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label17" runat="server" Text="&#1499;&#1514;&#1493;&#1489;&#1514;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="addtext" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label16" runat="server" Text="&#1505;&#1497;&#1505;&#1502;&#1492;:"
                                                        Font-Size="12pt"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="passtext" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="background-color: #EBEBEB;">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="clrf" runat="server" Text="&#1504;&#1511;&#1492; &#1513;&#1491;&#1493;&#1514;"
                                                        Height="30px" Width="150px" OnClick="clrf_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="deluser" runat="server" Text="&#1502;&#1495;&#1511; &#1502;&#1513;&#1514;&#1502;&#1513; &#1494;&#1492;"
                                                        Height="30px" Width="150px" OnClick="deluser_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="saveuser" runat="server" Text="&#1513;&#1502;&#1493;&#1512; &#1513;&#1497;&#1504;&#1493;&#1497;&#1497;&#1501;"
                                                        Height="30px" Width="150px" OnClick="saveuser_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="errusr2" runat="server" Text="Label" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="10pt" ForeColor="Red" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
        <!--**************\\\\\\\****************-->
        <br />
        <div style="width: 900px; margin: 0 auto; background-color: #6CC417; text-align: right;
            padding: 5px 0; height: 15px;" class="style2">
            <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="13pt"
                Text="&#1492;&#1494;&#1502;&#1504;&#1493;&#1514;" ForeColor="White" style="margin-right :10px;"></asp:Label>
        </div>
        <div style="width: 85%; margin: 0 auto; text-align: center; padding: 5px 0; height: 450px;"
            class="style2">
            <center>
                <table style="height: 316px">
                    <tr>
                        <td style="background-color: Black; width: 835px; height: 30px; color: #FFFFFF;">
                            <strong style="font-size: medium">&#1492;&#1510;&#1490;&#1514; &#1492;&#1494;&#1502;&#1504;&#1493;&#1514;</strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: White; height: 260px; text-align: right;">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label35" runat="server" Text="&#1489;&#1495;&#1512; &#1502;&#1513;&#1514;&#1502;&#1513;:"
                                            Font-Size="12pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource5"
                                            DataTextField="User1" DataValueField="CusID" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"
                                            Width="177px">
                                            <asp:ListItem>&#1489;&#1495;&#1512;...</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                                            ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                                            SelectCommand="SELECT [CusID], [User1] FROM [TblCustomers]"></asp:SqlDataSource>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label36" runat="server" Text="&#1488;&#1493; &#1492;&#1494;&#1503; &#1511;&#1493;&#1491; &#1502;&#1513;&#1514;&#1502;&#1513;:"
                                            Font-Size="12pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button2" runat="server" Text="&#1492;&#1510;&#1490; &#1492;&#1494;&#1502;&#1504;&#1493;&#1514;"
                                            OnClick="Button2_Click" />
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="errord" runat="server" Text="Label" Font-Bold="True" Font-Names="Tahoma"
                                Font-Size="10pt" ForeColor="Red" Visible="False"></asp:Label>
                            <br />
                            <hr />
                            <br />
                            <center >
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label39" runat="server" Text="&#1489;&#1495;&#1512; &#1511;&#1493;&#1491; &#1492;&#1494;&#1502;&#1504;&#1492;: "
                                            Font-Size="12pt"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="allorders" runat="server" Width="177px" AutoPostBack="True"
                                            OnSelectedIndexChanged="allorders_SelectedIndexChanged" AppendDataBoundItems="True">
                                            <asp:ListItem>&#1489;&#1495;&#1512;...</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            
                                <asp:Button ID="removeord" runat="server" Text="&#1492;&#1505;&#1512; &#1492;&#1494;&#1502;&#1504;&#1492;"
                                BackColor="#FF3300" BorderColor="#CC3300" BorderStyle="Solid" ForeColor="White"
                                Height="23px" OnClick="removeord_Click" Width="107px" />
                            </center>
                        <br />
                            <br />
                            <asp:Label ID="Label40" runat="server" Text="&#1508;&#1512;&#1496;&#1497; &#1492;&#1494;&#1502;&#1504;&#1492;:"
                                Font-Size="12pt" Font-Bold="True"></asp:Label>
                            <hr />
                            <asp:Label ID="orddatelbl" runat="server" Text="&#1514;&#1488;&#1512;&#1497;&#1498; &#1492;&#1494;&#1502;&#1504;&#1492;: "
                                Font-Size="12pt"></asp:Label>
                            <br />
                            <asp:Label ID="sumord" runat="server" Text="&#1505;&#1499;&#1493;&#1501; &#1492;&#1494;&#1502;&#1504;&#1492; &#1499;&#1493;&#1500;&#1500;: "
                                Font-Size="12pt" ForeColor="Red"></asp:Label>
                            <br />
                            <br />
                            <asp:GridView ID="orddet" runat="server" Style="margin: 0 auto; width: 60%;" BackColor="White"
                                BorderStyle="Solid" BorderWidth="7px" BorderColor="Silver" 
                                Font-Size="12pt" EnableModelValidation="True">
                                
                                <HeaderStyle BackColor="Black" ForeColor="White" />
                            </asp:GridView>

                            <br />
                            <center >
                           
                            </center>
                            <br />

                        </td>
                    </tr>
                </table>
            </center>
        </div>

        <!--**************\\\\\\\****************-->
        <br />
        <div style="width: 900px; margin: 0 auto; background-color: #6CC417; text-align: right;
            padding: 5px 0; height: 15px;" class="style2">
            <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="13pt"
                Text="&#1514;&#1490;&#1493;&#1489;&#1493;&#1514;" ForeColor="White" style="margin-right :10px;"></asp:Label>
        </div>
        <div style="width: 85%; margin: 0 auto; text-align: center; padding: 5px 0; height: 406px;"
            class="style2">
            <center>
                <table style="height: 319px">
                    <tr>
                        <td style="background-color: Black; width: 835px; height: 30px; color: #FFFFFF;">
                            <strong style="font-size: medium">&#1506;&#1512;&#1497;&#1499;&#1514; &#1514;&#1490;&#1493;&#1489;&#1493;&#1514;</strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: White; height: 260px; text-align: right;">
                       
                    <asp:GridView ID="repgrd" runat="server" Style="margin: 21px auto 16px auto;" BackColor="White"
                                BorderStyle="Solid" BorderWidth="7px" BorderColor="Silver" 
                                Font-Size="12pt" AutoGenerateColumns="False" DataKeyNames="rypid" 
                                DataSourceID="SqlDataSource10" EnableModelValidation="True" 
                                onrowcommand="repgrd_RowCommand" Width="645px">
                                <Columns>
                                       <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                   <asp:CheckBox ID="chkSelect" runat="server" />
                                </ItemTemplate>
                                <HeaderTemplate>
                                </HeaderTemplate>
                               </asp:TemplateField>  
                               <asp:BoundField DataField="rypid" HeaderText="&#1511;&#1493;&#1491; &#1514;&#1490;&#1493;&#1489;&#1492;" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="rypid" />
                                    <asp:BoundField DataField="CusID" HeaderText="&#1511;&#1493;&#1491; &#1500;&#1511;&#1493;&#1495;" 
                                        SortExpression="CusID" />
                                    <asp:BoundField DataField="comment" HeaderText="&#1514;&#1490;&#1493;&#1489;&#1492;" 
                                        SortExpression="comment" />
                                    <asp:BoundField DataField="datetime1" HeaderText="&#1514;&#1488;&#1512;&#1497;&#1498;" 
                                        SortExpression="datetime1" />
                                    <asp:BoundField DataField="proid" HeaderText="&#1511;&#1493;&#1491; &#1502;&#1493;&#1510;&#1512;" 
                                        SortExpression="proid" />
                                    <asp:ButtonField ButtonType="Button" Text="&#1502;&#1495;&#1511;" />
                               


                                </Columns>
                                <HeaderStyle BackColor="Black" ForeColor="White" />
                            </asp:GridView>
                            


                            <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblRply]">
                            </asp:SqlDataSource>
                            <center>
                              <asp:Button ID="delrep" runat="server" Text="&#1502;&#1495;&#1511; &#1514;&#1490;&#1493;&#1489;&#1493;&#1514; &#1502;&#1505;&#1493;&#1502;&#1504;&#1493;&#1514;" Font-Bold="True" 
                                    Font-Names="Arial" onclick="delrep_Click" Width="145px" />

                            </center>
                          
                            <br />
                            <br />


                            <br />
                        </td>
                    </tr>
                </table>
            </center>
        </div>

    </div>
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
