<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Computers.aspx.cs" Inherits="Catalog_Computers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>&#1502;&#1493;&#1510;&#1512;&#1497; &#1497;&#1491; &#1513;&#1504;&#1497;&#1492;
        - &#1502;&#1495;&#1513;&#1489;&#1497;&#1501;</title>
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
        .style11
        {
            font-size: small;
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
        <span class="style3" style="display: block; text-align: right; padding-top: 15px;">&nbsp;&#1502;&#1495;&#1513;&#1489;&#1497;&#1501;</span>
        <hr />
        <br />
        <br />
          <center >
         <asp:GridView ID="prodview" runat="server" AutoGenerateColumns="False" 
                BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="7px" CellPadding="4" 
                CellSpacing="1" DataSourceID="SqlDataSource2" EnableModelValidation="True" 
                ForeColor="#333333" GridLines="None" 
                onrowcommand="prodview_RowCommand" style="width :90%; margin-bottom :30px;" BackColor="Black">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="ProductID" HeaderText="&#1502;&#1505;&#1508;&#1512; &#1492;&#1502;&#1493;&#1510;&#1512;" 
                     SortExpression="ProductID" InsertVisible="False" />
                 <asp:BoundField DataField="Productname" HeaderText="&#1513;&#1501; &#1492;&#1502;&#1493;&#1510;&#1512;" 
                     SortExpression="Productname" />
                 <asp:BoundField DataField="Name1" HeaderText="&#1502;&#1493;&#1499;&#1512;" 
                     SortExpression="Name1" />
                 <asp:BoundField DataField="Phone" HeaderText="&#1496;&#1500;&#1508;&#1493;&#1503;" 
                     SortExpression="Phone" />
                 <asp:BoundField DataField="description" HeaderText="&#1514;&#1497;&#1488;&#1493;&#1512;" 
                     SortExpression="description" />
                 <asp:BoundField DataField="price" HeaderText="מחיר (₪)" 
                     SortExpression="price" />
                 <asp:ImageField DataImageUrlField="proimg" ControlStyle-Width="140px" ControlStyle-Height="100px">
<ControlStyle Height="100px" Width="130px"></ControlStyle>
                 </asp:ImageField>
                 <asp:ButtonField ButtonType="Button" Text="&#1492;&#1494;&#1502;&#1503;" />
             </Columns>
             <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
                 Font-Size="13pt" />
             <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
             <RowStyle BackColor="#B1EF74" ForeColor="#333333" />
             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
              ConnectionString="<%$ ConnectionStrings:yad2DBConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:yad2DBConnectionString.ProviderName %>" SelectCommand="SELECT Tblproducts.ProductID, Tblproducts.Productname, TblCustomers.Name1, TblCustomers.Phone, Tblproducts.description, Tblproducts.price, Tblproducts.proimg, TblDetailType.typeproname
FROM TblDetailType INNER JOIN ((TblCities INNER JOIN TblCustomers ON TblCities.CityID = TblCustomers.CityID) INNER JOIN Tblproducts ON TblCustomers.CusID = Tblproducts.CusID) ON TblDetailType.typeprocode = Tblproducts.Producttype
WHERE (((TblDetailType.typeproname)='&#1502;&#1495;&#1513;&#1489;&#1497;&#1501;'))
ORDER BY Tblproducts.Productname;
"></asp:SqlDataSource>
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
