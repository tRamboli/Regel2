<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="users_UserLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>&#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514; &#1502;&#1513;&#1514;&#1502;&#1513;
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
            font-weight: bold;
            font-family: Tahoma;
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
                            SelectCommand="SELECT * FROM [TblDetailType]" 
                            onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
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
            <li><a href="../users/UserLogin.aspx" title="&#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514;"
                class="current">&#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514;</a></li>
            <li><a href="../Catalog/CatHome.aspx" title="&#1502;&#1493;&#1510;&#1512;&#1497;&#1501;">
                &#1502;&#1493;&#1510;&#1512;&#1497;&#1501;</a></li>
            <li><a href="../admin/AdminPanel.aspx" title="&#1502;&#1504;&#1492;&#1500;">&#1502;&#1504;&#1492;&#1500;</a></li>
            <li><a href="#" title="&#1488;&#1493;&#1491;&#1493;&#1514;">&#1488;&#1493;&#1491;&#1493;&#1514;</a></li>
            <li><a href="mailto:tahor.ram@gmail.com" title="&#1510;&#1493;&#1512; &#1511;&#1513;&#1512;">&#1510;&#1493;&#1512;
                &#1511;&#1513;&#1512;</a></li>
        </ul>
    </div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #E9E9E9; line-height: 100%;
        color: #000000; height: 392px; text-align: center;" class="style1" dir="rtl">
        <span class="style3" style="display: block; text-align: right; padding-top: 15px;">&nbsp;&#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514;
            לאתר</span>
        <hr />
        <br />
        <br />
        <asp:Label ID="err" runat="server" ForeColor="Red"></asp:Label>
        <table dir="rtl" style="margin: 0 auto 5px; background-color: White; border: solid 6.5px #CCCCCC;">
            <tr>
                <td class="style5">
                    &#1513;&#1501; &#1502;&#1513;&#1514;&#1502;&#1513;
                              
                </td>
                <td>
                    <asp:TextBox ID="Name" runat="server" Font-Size="20pt" Height="31px" 
                        Width="159px" ontextchanged="Name_TextChanged" style="margin-top: 18px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &#1505;&#1497;&#1505;&#1502;&#1492;
                </td>
                <td>
                    <asp:TextBox ID="Pass" runat="server" Font-Size="20pt" Height="31px" Width="159px"
                        TextMode="Password" ontextchanged="Pass_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="login" runat="server" Text="&#1492;&#1514;&#1495;&#1489;&#1512;"
                        BackColor="#6CC417" BorderStyle="Solid" Font-Size="X-Large" Style="right: 247px;
                        top: 561px; margin-top: 10px; margin-bottom: 13px; margin-left: 9px;" OnClick="login_Click"
                        Height="36px" Width="113px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
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
