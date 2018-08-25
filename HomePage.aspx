<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>&#1512;&#1490;&#1500; 2 - &#1491;&#1507; &#1512;&#1488;&#1513;&#1497;</title>
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
        .style10
        {
            font-family: Arial;
            font-size: x-small;
            color: #FFFFFF;
        }
    </style>
</head>
<body background="pic/bak.jpg" style="background-attachment: fixed; background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div style="width: 70.1%; margin: 0 auto; background-color: #FFF; line-height: 120px;
        height: 95px; opacity: 0.92; -moz-opacity: 0.92; filter: alpha(opacity=92);"
        class="style1" dir="rtl">
        <img src="logo.PNG" alt="&#1500;&#1493;&#1493;&#1490;" />
        <center>
            <table dir="rtl" 
                style="margin-top: -31px; border-top: 5px solid #E9E9E9;border-left: 5px solid #E9E9E9;border-right: 5px solid #E9E9E9; background-color: #E9E9E9; width:400px; border-top-color: #F3F3F3; border-right-color: #F3F3F3; border-left-color: #F3F3F3;">
                <tr>
                    <td>
                        <asp:TextBox ID="search" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"
                            Font-Size="X-Large" Height="30px" Width="280px" ForeColor="#000000" 
                            BackColor="#FFFFF9"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"
                            DataTextField="typeproname" DataValueField="typeprocode" 
                            Font-Size="Large" Height="33px" 
                            style="text-align :center ; vertical-align :baseline ; " Width="141px" 
                            BackColor="#FFFFF9" Font-Names="Tahoma">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>"
                            SelectCommand="SELECT * FROM [TblDetailType]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:ImageButton ID="srcbtn" runat="server" BackColor="Black" Height="31px" ImageUrl="~/srcimg.png"
                            Width="31px" OnClick="srcbtn_Click" />
                    </td>
                </tr>
            </table>
        </center>
    </div>
    <div id="demo-container" style="width: 70.1%; padding: 0; margin: 0 auto; background-color: #000000;"
        class="style1">
        <ul id="simple-menu" dir="rtl">
            <li><a href="#" title="&#1491;&#1507; &#1489;&#1497;&#1514;" class="current">&#1491;&#1507;
                &#1489;&#1497;&#1514;</a></li>
            <li><a href="users/RegisterCus.aspx" title="&#1492;&#1512;&#1513;&#1502;&#1492;">&#1492;&#1512;&#1513;&#1502;&#1492;</a></li>
            <li><a href="users/UserLogin.aspx" title="&#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514;">
                &#1492;&#1514;&#1495;&#1489;&#1512;&#1493;&#1514;</a></li>
            <li><a href="Catalog/CatHome.aspx" title="&#1502;&#1493;&#1510;&#1512;&#1497;&#1501;">
                &#1502;&#1493;&#1510;&#1512;&#1497;&#1501;</a></li>
            <li><a href="admin/AdminPanel.aspx" title="&#1502;&#1504;&#1492;&#1500;">&#1502;&#1504;&#1492;&#1500;</a></li>
            <li><a href="#" title="&#1488;&#1493;&#1491;&#1493;&#1514;">&#1488;&#1493;&#1491;&#1493;&#1514;</a></li>
            <li><a href="mailto:tahor.ram@gmail.com" title="&#1510;&#1493;&#1512; &#1511;&#1513;&#1512;">&#1510;&#1493;&#1512;
                &#1511;&#1513;&#1512;</a></li>
        </ul>
    </div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #F5F5F5; line-height: 100%;
        color: #000000; height: 664px; text-align: center;" class="style1" dir="rtl">
     
           <asp:Panel ID="Panel1" runat="server" Style="text-align: right; margin: 0 auto;" Height="25px" Width="693px" BackColor="#EAEAEA">
            <table>
                <tr>
                    <td style="width: 100%;">
                        <asp:Label ID="hellolbl" runat="server" Text="&#1513;&#1500;&#1493;&#1501; &#1502;&#1504;&#1492;&#1500;. &#1502;&#1493;&#1510;&#1512;&#1497;&#1501; &#1489;&#1505;&#1500;: 4  "></asp:Label>
                        <asp:Button ID="gotosal" runat="server" Text="&#1506;&#1489;&#1493;&#1512; &#1488;&#1500; &#1505;&#1500; &#1492;&#1511;&#1504;&#1497;&#1493;&#1514; &#1513;&#1500;&#1498;"
                            BorderStyle="Solid" Font-Size="9pt" Height="18px" Width="127px" BorderWidth="1px"
                            OnClick="gotosal_Click" BorderColor="Black" style="margin-right: 18px" />
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
        <br />
        <asp:Label ID="Label1" runat="server" Text="&#1489;&#1512;&#1493;&#1499;&#1497;&#1501; &#1492;&#1489;&#1488;&#1497;&#1501; &#1500;&#1488;&#1514;&#1512; &#1502;&#1493;&#1510;&#1512;&#1497; &#1497;&#1491; &#1513;&#1504;&#1497;&#1492; &#1492;&#1490;&#1491;&#1493;&#1500; &#1493;&#1492;&#1504;&#1493;&#1495; &#1489;&#1497;&#1513;&#1512;&#1488;&#1500;!"
            Font-Bold="True" Font-Names="Arial" Font-Size="18pt" ForeColor="#666666"></asp:Label>
        <br />
        <br />
        <br />
        <center>
            <table>
                <tr>
                    <td style="width: 500px;">
                        <div style="width: 100%; text-align: right;">
                            <asp:Label ID="Label2" runat="server" Text="&#1502;&#1492; &#1495;&#1491;&#1513;?"
                                Font-Bold="True" Font-Names="Tahoma" Font-Size="20pt" ForeColor="#6CC417"></asp:Label>
                        </div>
                        <div style="width: 100%; text-align: right; height: 10px; background-color: #6CC417;
                            margin-top: 12px;">
                        </div>
                        <div style="width: 100%; border-bottom : 4px solid lightgray; text-align: right; height: 210px; background-color: #EFEFEF;
                            margin-bottom: 15px; border-top-style: solid; border-top-width: 4px; border-top-color: green;">
                            <center>
                            <table cellpadding="5" >
                            <tr>
                            <td>
                            <br />
                                <asp:Label ID="newproname" runat="server" Text="Label" Font-Bold="True" Font-Size="14pt"></asp:Label>
                                <br />
                                <asp:ImageButton ID="newpropic" runat="server" Width="180px" Height="130px" Style="margin-top: 4px; margin-bottom: 9px"
                                    OnClick="newpropic_Click" 
                                    
                                    ToolTip="&#1500;&#1495;&#1509; &#1500;&#1508;&#1512;&#1496;&#1497;&#1501; &#1504;&#1493;&#1505;&#1508;&#1497;&#1501; &#1493;&#1500;&#1492;&#1494;&#1502;&#1504;&#1492;" 
                                    BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                                <br />
                                <asp:Label ID="seller" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                            <br />
                                <asp:Label ID="newproname2" runat="server" Text="Label" Font-Bold="True" Font-Size="14pt"></asp:Label>
                                <br />
                                <asp:ImageButton ID="newpropic2" runat="server" Width="180px" Height="130px" Style="margin-top: 4px; margin-bottom: 9px"
                                    OnClick="newpropic2_Click" 
                                    
                                    ToolTip="&#1500;&#1495;&#1509; &#1500;&#1508;&#1512;&#1496;&#1497;&#1501; &#1504;&#1493;&#1505;&#1508;&#1497;&#1501; &#1493;&#1500;&#1492;&#1494;&#1502;&#1504;&#1492;" 
                                    BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                                <br />
                                <asp:Label ID="seller2" runat="server" Text="Label"></asp:Label>
                            </td>
                            </tr>
                            </table>
                                
                            </center>
                        </div>
                    </td>
                    <td style="width: 50px;">
                    </td>
                    <td style="width: 500px;">
                        <div style="width: 100%; text-align: right;">
                            <asp:Label ID="Label3" runat="server" Text="&#1514;&#1490;&#1493;&#1489;&#1493;&#1514; &#1488;&#1495;&#1512;&#1493;&#1504;&#1493;&#1514;"
                                Font-Bold="True" Font-Names="Tahoma" Font-Size="20pt" ForeColor="#6CC417"></asp:Label>
                        </div>
                        <div style="width: 100%; text-align: right; height: 10px; background-color: #6CC417;
                            margin-top: 12px;">
                        </div>
                        <div style="width: 100%;  border-bottom : 4px solid lightgray; text-align: right; height: 210px; background-color: #EFEFEF;
                            margin-bottom: 14px; border-top-style: solid; border-top-width: 4px; border-top-color: green;
                            overflow: auto;">
                            <center>
                                <br />
                                <asp:GridView ID="rply" runat="server" Style="margin: 0 auto; width: 90%;" BackColor="White"
                                    BorderStyle="Solid" BorderWidth="3px" BorderColor="#666666" Font-Size="12pt"
                                    GridLines="Horizontal" EnableModelValidation="True" OnRowCommand="rply_RowCommand">
                                    <Columns>
                                        <asp:ButtonField ButtonType="Image" ImageUrl="~/arrw.PNG" Text="&#1491;&#1507; &#1502;&#1493;&#1510;&#1512;" />
                                    </Columns>
                                    <EditRowStyle BorderColor="#000000" />
                                    <HeaderStyle BackColor="#F0F0F0" />
                                    <PagerStyle BackColor="Green" ForeColor="White" />
                                </asp:GridView>
                                <br />
                                <asp:GridView ID="admincom" runat="server" Style="margin: 0 auto; width: 90%;" BackColor="White"
                                    BorderStyle="Solid" BorderWidth="3px" BorderColor="#666666" Font-Size="12pt"
                                    GridLines="Horizontal" EnableModelValidation="True" OnRowCommand="admincom_RowCommand">
                                    <Columns>
                                        <asp:ButtonField ButtonType="Image" CommandName="delcom" ImageUrl="~/Delete.png"
                                            Text="&#1502;&#1495;&#1511; &#1514;&#1490;&#1493;&#1489;&#1492; &#1494;&#1493;">
                                            <ControlStyle Height="20px" Width="20px" />
                                        </asp:ButtonField>
                                        <asp:ButtonField ButtonType="Image" CommandName="moveto" ImageUrl="~/arrw.PNG" Text="&#1491;&#1507; &#1502;&#1493;&#1510;&#1512;" />
                                    </Columns>
                                    <EditRowStyle BorderColor="#000000" />
                                    <HeaderStyle BackColor="#F0F0F0" />
                                    <PagerStyle BackColor="Green" ForeColor="White" />
                                </asp:GridView>
                                <br />
                            </center>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="width: 500px;">
                        <div style="width: 100%; text-align: right;">
                            <asp:Label ID="Label4" runat="server" Text="&#1489;&#1502;&#1495;&#1497;&#1512; &#1502;&#1510;&#1497;&#1488;&#1492;"
                                Font-Bold="True" Font-Names="Tahoma" Font-Size="20pt" ForeColor="#6CC417"></asp:Label>
                        </div>
                        <div style="width: 100%; text-align: right; height: 10px; background-color: #6CC417;
                            margin-top: 12px;">
                        </div>
                        <div style="width: 100%; border-bottom : 4px solid lightgray; text-align: right; height: 210px; background-color: #EFEFEF;
                            border-top-style: solid; border-top-width: 4px; border-top-color: green;">
                            <center>
                                <br />
                                <asp:Label ID="zolname" runat="server" Text="Label" Font-Bold="True" Font-Size="14pt"></asp:Label>
                                <br />
                                <asp:ImageButton ID="zolpic" runat="server" Width="180px" Height="130px" Style="margin-top: 4px; margin-bottom: 4px"
                                    OnClick="zolpic_Click" 
                                    
                                    ToolTip="&#1500;&#1495;&#1509; &#1500;&#1508;&#1512;&#1496;&#1497;&#1501; &#1504;&#1493;&#1505;&#1508;&#1497;&#1501; &#1493;&#1500;&#1492;&#1494;&#1502;&#1504;&#1492;" 
                                    BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
                                <br />
                                <asp:Label ID="zolprice" runat="server" Text="0 &#1513;&quot;&#1495;" Font-Size="10pt"></asp:Label>
                                <br />
                                <asp:Label ID="zolseller" runat="server" Text="Label"></asp:Label>
                            </center>
                        </div>
                    </td>
                    <td style="width: 50px;">
                    </td>
                    <td style="width: 500px;">
                        <div style="width: 100%; text-align: right;">
                            <asp:Label ID="Label5" runat="server" Text="&#1499;&#1512;&#1490;&#1506; &#1489;&#1488;&#1514;&#1512;"
                                Font-Bold="True" Font-Names="Tahoma" Font-Size="20pt" ForeColor="#6CC417"></asp:Label>
                        </div>
                        <div style="width: 100%; text-align: right; height: 10px; background-color: #6CC417;
                            margin-top: 12px;">
                        </div>
                        <div style="width: 100%; border-bottom : 4px solid lightgray; text-align: right; height: 210px; background-color: #EFEFEF;
                            text-align: right; border-top-style: solid; border-top-width: 4px; border-top-color: green;">
                            <br />
                            <asp:Label ID="numprod" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="25pt"
                                ForeColor="#999999" Text="0 &#1502;&#1493;&#1510;&#1512;&#1497;&#1501; &#1500;&#1502;&#1499;&#1497;&#1512;&#1492;"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="numuser" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="25pt"
                                ForeColor="#999999" Text="0 &#1502;&#1513;&#1514;&#1502;&#1513;&#1497;&#1501; &#1512;&#1513;&#1493;&#1502;&#1497;&#1501;"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="numrep" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="25pt"
                                ForeColor="#999999" Text="0 &#1502;&#1513;&#1514;&#1502;&#1513;&#1497;&#1501; &#1512;&#1513;&#1493;&#1502;&#1497;&#1501;"></asp:Label>
                        </div>
                    </td>
                </tr>
            </table>
        </center>
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
