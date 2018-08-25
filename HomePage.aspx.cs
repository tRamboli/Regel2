using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            nowdate.Text = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();
            hellolbl.Text = "שלום " + Session["user"].ToString() + ". מוצרים בסל: " + Session["itemnum"].ToString();
        }
        else
        {
            Panel1.Visible = false;
        }
        

        Fillnewpro();
        Fillzolpro();
        Fillstates();

        FillRply();
    }
    protected void srcbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (search .Text.Length > 0)
        {
          
            Response.Redirect("Catalog/SearchPro.aspx?SearchSt=" + search.Text.ToString() + "&SearchCat=" + DropDownList1.SelectedItem.Text.ToString());

        }
    }

    protected void FillRply()
    {
        rply.Visible = true;
        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon1 = new OleDbConnection(connectionStr1);

        string sqlh = "SELECT TblRply.rypid as מספר תגובה , TblRply.comment as תגובה , Tblproducts.Productname as מוצר FROM Tblproducts INNER JOIN TblRply ON Tblproducts.ProductID = TblRply.proid ORDER BY TblRply.rypid DESC;";
        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlh, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        if (Session["isadmin"] == null)
        {
            admincom.Visible = false;
           

            this.rply.DataSource = dsObj1.Tables[0];
            this.rply.DataBind();

        }
        else
        {
            admincom.Visible = true ;
            rply.Visible = false ;

            this.admincom .DataSource = dsObj1.Tables[0];
            this.admincom.DataBind();


        }

    }
    protected void gotosal_Click(object sender, EventArgs e)
    {
        Response.Redirect("Catalog/Sal.aspx");
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["userpass"] = null;
        Session["userid"] =null;

        //מחיקת תוכן טבלת העזר
        Order O1 = new Order();
        O1.AddtoOrder("delete * from TblsubOrdersHelp");

        Response.Redirect("HomePage.aspx");
    }
    public void Fillstates ()
    {
        numprod.Text = Rettbl("SELECT Tblproducts.ProductID FROM Tblproducts;").Tables[0].Rows.Count.ToString() + " מוצרים למכירה";
        numuser.Text = Rettbl("SELECT TblCustomers.CusID FROM TblCustomers;").Tables[0].Rows.Count.ToString() + " משתמשים רשומים";
        numrep.Text = Rettbl("SELECT TblRply.rypid FROM TblRply;").Tables[0].Rows.Count.ToString() + " תגובת למוצרים";
    }
 
    public void Fillzolpro()
    {
        string sqlh2 = "SELECT Tblproducts.ProductID, Tblproducts.Productname, Min(Tblproducts.price) AS Minמתוךprice, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, TblCustomers.User1, Tblproducts.proimg FROM TblCustomers INNER JOIN Tblproducts ON TblCustomers.CusID = Tblproducts.CusID GROUP BY Tblproducts.ProductID, Tblproducts.Productname, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, TblCustomers.User1, Tblproducts.proimg ORDER BY Min(Tblproducts.price);";
        DataSet ds1 = Rettbl(sqlh2);

        int place =0;

        zolname.Text = ds1.Tables[0].Rows[place][1].ToString();
        zolpic.ImageUrl = ds1.Tables[0].Rows[place][7].ToString();
        zolseller .Text = ds1.Tables[0].Rows[place][6].ToString();
        zolpic .ToolTip = ds1.Tables[0].Rows[place][5].ToString();
        zolprice.Text = ds1.Tables[0].Rows[place][2].ToString() + " ₪";


    }
    public void Fillnewpro()
    {
        string sqlh2="SELECT Tblproducts.ProductID, Tblproducts.Productname, Tblproducts.price, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, TblCustomers.User1, Tblproducts.proimg FROM TblCustomers INNER JOIN Tblproducts ON TblCustomers.CusID = Tblproducts.CusID;";
        DataSet ds1 = Rettbl(sqlh2);

        int place =ds1 .Tables [0].Rows .Count -3;

        newproname.Text = ds1.Tables[0].Rows[place ][1].ToString();
        newpropic.ImageUrl = ds1.Tables[0].Rows[place][7].ToString();
        seller.Text = ds1.Tables[0].Rows[place][6].ToString();
        newpropic.ToolTip = ds1.Tables[0].Rows[place][5].ToString();


        newproname2.Text = ds1.Tables[0].Rows[place-1][1].ToString();
        newpropic2.ImageUrl = ds1.Tables[0].Rows[place - 1][7].ToString();
        seller2.Text = ds1.Tables[0].Rows[place - 1][6].ToString();
        newpropic2.ToolTip = ds1.Tables[0].Rows[place - 1][5].ToString();

    }

    public DataSet Rettbl (string sqlh)
    {

        string connectionStr1 =  ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon1 = new OleDbConnection(connectionStr1);


        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlh, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);
        return dsObj1;
    }
    protected void newpropic_Click(object sender, ImageClickEventArgs e)
    {
        string sqlh2="SELECT Tblproducts.ProductID, Tblproducts.Productname, Tblproducts.price, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, TblCustomers.User1, Tblproducts.proimg FROM TblCustomers INNER JOIN Tblproducts ON TblCustomers.CusID = Tblproducts.CusID;";
        DataSet ds1 = Rettbl(sqlh2);
        int place = ds1.Tables[0].Rows.Count - 3;
        string st = ds1.Tables[0].Rows[place][0].ToString();

        Response.Redirect("Catalog/Order.aspx?prodID=" + st);
    }
    protected void zolpic_Click(object sender, ImageClickEventArgs e)
    {
        string sqlh2 = "SELECT Tblproducts.ProductID, Tblproducts.Productname, Min(Tblproducts.price) AS Minמתוךprice, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, TblCustomers.User1, Tblproducts.proimg FROM TblCustomers INNER JOIN Tblproducts ON TblCustomers.CusID = Tblproducts.CusID GROUP BY Tblproducts.ProductID, Tblproducts.Productname, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, TblCustomers.User1, Tblproducts.proimg ORDER BY Min(Tblproducts.price);";   
        DataSet ds1 = Rettbl(sqlh2);
        int place = 0;

        string st = ds1.Tables[0].Rows[place][0].ToString();


        Response.Redirect("Catalog/Order.aspx?prodID=" + st);
    }

    protected void rply_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Order o1 = new Order ();

        string st = o1.ReturnData("SELECT TblRply.rypid, Tblproducts.ProductID FROM Tblproducts INNER JOIN TblRply ON Tblproducts.ProductID = TblRply.proid WHERE (((TblRply.rypid)="+((GridView)e.CommandSource).Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text +"));").Tables [0].Rows [0][1].ToString ();
        Response.Redirect("Catalog/Order.aspx?prodID=" + st);

    }
    protected void admincom_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Order o1 = new Order();
        string rpid = ((GridView)e.CommandSource).Rows[Convert.ToInt32(e.CommandArgument)].Cells[2].Text ;

        if (e.CommandName == "moveto")
        {

            string st = o1.ReturnData("SELECT TblRply.rypid, Tblproducts.ProductID FROM Tblproducts INNER JOIN TblRply ON Tblproducts.ProductID = TblRply.proid WHERE (((TblRply.rypid)=" + rpid + "));").Tables[0].Rows[0][1].ToString();
            Response.Redirect("Catalog/Order.aspx?prodID=" +st);
        }
        else
        {

            o1.AddtoOrder("delete TblRply.rypid from TblRply where TblRply.rypid=" + rpid + "");
                Response .Redirect ("HomePage.aspx");

        }
    }
    protected void newpropic2_Click(object sender, ImageClickEventArgs e)
    {

        string sqlh2 = "SELECT Tblproducts.ProductID, Tblproducts.Productname, Tblproducts.price, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, TblCustomers.User1, Tblproducts.proimg FROM TblCustomers INNER JOIN Tblproducts ON TblCustomers.CusID = Tblproducts.CusID;";
        DataSet ds1 = Rettbl(sqlh2);
        int place = ds1.Tables[0].Rows.Count - 4;
        string st = ds1.Tables[0].Rows[place][0].ToString();

        Response.Redirect("Catalog/Order.aspx?prodID=" + st);
    }
}

