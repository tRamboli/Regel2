<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sal.aspx.cs" Inherits="Catalog_Sal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>&#1512;&#1490;&#1500; 2 - &#1505;&#1500; &#1492;&#1511;&#1504;&#1497;&#1493;&#1514;
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
        .style12
        {
            height: 22px;
        }
        .style13
        {
            height: 223px;
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
            <li><a href="" title="&#1488;&#1493;&#1491;&#1493;&#1514;">&#1488;&#1493;&#1491;&#1493;&#1514;</a></li>
            <li><a href="" title="&#1510;&#1493;&#1512; &#1511;&#1513;&#1512;">&#1510;&#1493;&#1512;
                &#1511;&#1513;&#1512;</a></li>
        </ul>
    </div>
    <div style="width: 70.1%; margin: 0 auto; background-color: #E9E9E9; line-height: 100%;
        color: #000000; height: 1491px; text-align: center;" class="style1" 
        dir="rtl">
        <br />
          <asp:Panel ID="Panel1" runat="server" 
            Style="text-align: right; margin: 0 auto;" BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="1px"
            Height="25px" Width="693px" BackImageUrl="~/pic/saldiv.png">
            <table>
                <tr>
                    <td style="width: 100%;">
                        <asp:Label ID="hellolbl" runat="server" Text="&#1513;&#1500;&#1493;&#1501; &#1502;&#1504;&#1492;&#1500;. &#1502;&#1493;&#1510;&#1512;&#1497;&#1501; &#1489;&#1505;&#1500;: 4  "></asp:Label>
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
        <span class="style3" style="display: block; text-align: right; padding-top: 15px;">&#1505;&#1500;
            &#1492;&#1511;&#1504;&#1497;&#1493;&#1514;</span>
        <hr />
        <br />
        <br />
        <asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="#6CC417"></asp:Label>
        <br />
        <br />

  <asp:GridView ID="subortbl" runat="server" Style="margin: 0 auto; width: 60%;" BackColor="White"
                                BorderStyle="Solid" BorderWidth="7px" BorderColor="Silver" 
                                Font-Size="12pt" 
            onrowcommand="subortbl_RowCommand" EnableViewState="False">
                                
                                <Columns>
                                    <asp:ButtonField ButtonType="Image" ImageUrl="~/Delete.png" Text="Delete" />
                                </Columns>
                                
                                <HeaderStyle BackColor="Black" ForeColor="White" />
                            </asp:GridView>
        <center>
            <br />
            <asp:Label ID="sumtxt" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Button ID="endorder" runat="server" Text="&#1505;&#1497;&#1497;&#1501; &#1492;&#1494;&#1502;&#1504;&#1492;"
                BackColor="Black" BorderWidth="0px" Font-Size="12pt" ForeColor="White" Height="34px"
                Width="93px" Font-Names="Tahoma" OnClick="endorder_Click" />
            <asp:Button ID="clearsuborder" runat="server" Text="&#1512;&#1493;&#1511;&#1503; &#1505;&#1500; &#1511;&#1504;&#1497;&#1493;&#1514;"
                BackColor="Black" BorderWidth="0px" Font-Size="12pt" ForeColor="White" Height="34px"
                Width="115px" Font-Names="Tahoma" OnClick="clearsuborder_Click" 
                style="margin-right: 5px" />
            <br />
            <br />
            <asp:Panel ID="passpnl" runat="server" Style="margin: 0 auto;" Visible="False">
                <asp:Label ID="Label1" runat="server" Text="&#1500;&#1492;&#1513;&#1500;&#1502;&#1514; &#1492;&#1494;&#1502;&#1504;&#1492;, &#1492;&#1511;&#1500;&#1491; &#1505;&#1497;&#1505;&#1502;&#1492; &#1500;&#1488;&#1497;&#1502;&#1493;&#1514;:"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="pass2" runat="server" TextMode="Password" BorderStyle="Solid" 
                    BorderWidth="1px" style="margin-bottom: 7px"></asp:TextBox>
                <br />
                <asp:Label ID="err" runat="server" ForeColor="#6CC417"></asp:Label>
                <br />
                <asp:Button ID="endor" runat="server" OnClick="endor_Click" Text="&#1492;&#1502;&#1513;&#1498;"
                    BackColor="Black" BorderWidth="0px" Font-Size="12pt" ForeColor="White" Height="34px"
                    Width="93px" Font-Names="Tahoma" style="margin-top: 5px" />
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="creditpanel" runat="server" Height="245px" Width="236px" BackColor="White"
                BorderStyle="Solid" BorderWidth="1px" Visible="False" 
                Style="text-align: center; margin-bottom: 15px;">
                <asp:Label ID="Label2" runat="server" Text="&#1492;&#1499;&#1504;&#1505; &#1508;&#1512;&#1496;&#1497; &#1499;&#1512;&#1496;&#1497;&#1505; &#1488;&#1513;&#1512;&#1488;&#1497;:"
                    Font-Bold="True" Font-Italic="False"></asp:Label>
                <hr style="border-style: solid; color: #6CC417" />
                <asp:Label ID="Label3" runat="server" Text="&#1514;&#1506;&#1493;&#1491;&#1514; &#1494;&#1492;&#1493;&#1514;:"></asp:Label>
                <br />
                <asp:TextBox ID="cusid" runat="server" BackColor="Black" BorderWidth="0px" Width="176px"
                    Height="22px" ForeColor="White"></asp:TextBox><br />
                <asp:Label ID="Label4" runat="server" Text="&#1502;&#1505;&#1508;&#1512; &#1499;&#1512;&#1496;&#1497;&#1505; &#1488;&#1513;&#1512;&#1488;&#1497;:"></asp:Label>
                <br />
                <asp:TextBox ID="creditnum" runat="server" BackColor="Black" BorderWidth="0px" Width="176px"
                    Height="22px" ForeColor="White"></asp:TextBox><br />
                <asp:Label ID="Label5" runat="server" Text="&#1514;&#1493;&#1511;&#1507;:"></asp:Label>
                <br />
                <asp:TextBox ID="creditdate" runat="server" BackColor="Black" BorderWidth="0px" Width="176px"
                    Height="22px" ForeColor="White"></asp:TextBox><br />
                <br />
                <br />
                <asp:Button ID="endallorder" runat="server" Text="&#1513;&#1500;&#1495; &#1492;&#1494;&#1502;&#1504;&#1492;"
                    BackColor="Black" BorderWidth="0px" Font-Size="12pt" ForeColor="White" Height="28px"
                    Width="99px" Font-Names="Tahoma" OnClick="endallorder_Click" />
                <br />
                <asp:Label ID="err2" runat="server" ForeColor="#6CC417"></asp:Label>
            </asp:Panel>


        </center>
        <br />
        <br />
        <br />

<br />

        <div style="width: 900px; margin: 0 auto; background-color: #6CC417; text-align: right;
            padding: 5px 0; height: 15px;" class="style2">
            <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="13pt"
                Text="&#1492;&#1497;&#1505;&#1496;&#1493;&#1512;&#1497;&#1514; &#1492;&#1492;&#1494;&#1502;&#1504;&#1493;&#1514; &#1513;&#1500;&#1498;" ForeColor="White" style="margin-right :10px;"></asp:Label>
        </div>
        <div style="width: 85%; margin: 0 auto; text-align: center; padding: 5px 0; height: 412px;"
            class="style2">
            <center>
                <table style="height: 319px; width: 719px;">
                    <tr>
                        <td style="background-color: Black; color: #FFFFFF;" class="style12" >
                            <strong style="font-size: medium">&#1510;&#1508;&#1492; &#1489;&#1492;&#1494;&#1502;&#1504;&#1493;&#1514; &#1492;&#1511;&#1493;&#1491;&#1502;&#1493;&#1514; &#1513;&#1500;&#1498;</strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: White; " class="style13">
                       <center >
                       
                      
                         <asp:GridView ID="ordhis" runat="server" 
                                Style="margin: 10px auto 0 auto; width :90%; " BackColor="White"
                                BorderStyle="Solid" BorderWidth="7px" BorderColor="Silver" 
                                Font-Size="12pt" EnableModelValidation="True" 
                                onrowcommand="ordhis_RowCommand" Width="568px">
                                
                                <Columns>
                                    
                                     
                               <asp:ButtonField ButtonType="Image" ImageUrl="~/Delete.png" Text="Delete"  CommandName ="delete"
                                        HeaderText="&#1502;&#1495;&#1497;&#1511;&#1514; &#1492;&#1494;&#1502;&#1504;&#1492;" />
                                    <asp:ButtonField ButtonType="Button" CommandName ="deta" Text="&#1508;&#1512;&#1496;&#1497; &#1492;&#1494;&#1502;&#1504;&#1492;" />
                                </Columns>
                                
                                <HeaderStyle BackColor="Black" ForeColor="White" />
                            </asp:GridView>
                            <br />
                            <asp:Label ID="errord" runat="server" Text="Label" Font-Size="11pt" 
                                ForeColor="Gray"></asp:Label>
                               <br />

                               <asp:GridView ID="orddeta" runat="server" 
                                Style="margin: 12px auto 17px auto; width: 85%;" BackColor="White"
                                BorderStyle="Solid" BorderWidth="7px" BorderColor="Silver" 
                                Font-Size="12pt" EnableModelValidation="True" Visible="False" onrowcommand="orddeta_RowCommand" 
                               >
                                
                         
                                
                                   <Columns>
                                       <asp:ButtonField ButtonType="Image" ImageUrl="~/Delete.png" Text="delete">
                                       <ControlStyle Height="15px" Width="15px" />
                                       </asp:ButtonField>
                                   </Columns>
                                
                         
                                
                                <HeaderStyle BackColor="Black" ForeColor="White" />
                            </asp:GridView>
                                 </center>
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
