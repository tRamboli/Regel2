using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Configuration;

public partial class Catalog_Sal : System.Web.UI.Page
{
    Order O1 = new Order();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["userid"] != null)
        {
            nowdate.Text = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();
            hellolbl.Text = "שלום " + Session["user"].ToString() + ". מוצרים בסל: " + Session["itemnum"].ToString();
            Showtbl();
            ShowHis();
            CalculateSum();
        }
        else
        {
            Response .Redirect ("../users/UserLogin.aspx");
        }

    }

    public void ShowHis()
    {
        //היסטוריית הזמנות

        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon1 = new OleDbConnection(connectionStr1);
        string sqlStr1 = "SELECT TblOrders.orderid as מספר הזמנה, TblOrders.date1 as תאריך , TblOrders.cusid as קוד לקוח, Sum(TblsubOrders.total) AS סכום הזמנה FROM TblOrders INNER JOIN TblsubOrders ON TblOrders.orderid = TblsubOrders.orderid GROUP BY TblOrders.orderid, TblOrders.date1, TblOrders.cusid HAVING (((TblOrders.cusid)=" + Session["userid"].ToString() + ")) ORDER BY TblOrders.date1 DESC;";

        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);
        if (dsObj1.Tables[0].Rows.Count == 0)
        {
            ordhis.Visible = false;
            errord.Text = "אין לך הזמנות קודמות";
        }
        else
        {

            this.ordhis.DataSource = dsObj1.Tables[0];
            this.ordhis.DataBind();
            errord.Text = "מספר הזמנות: " + dsObj1.Tables[0].Rows.Count;

        }
    }
    public void CalculateSum()
    {
        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon1 = new OleDbConnection(connectionStr1);
        string sqlStr1 = "SELECT TblsubOrdersHelp.orderid, TblsubOrdersHelp.proid, TblsubOrdersHelp.quantity, TblsubOrdersHelp.total FROM TblsubOrdersHelp;";


        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        int sum = 0;
        for (int i = 0; i < dsObj1.Tables[0].Rows.Count; i++)
        {
            sum += int.Parse(dsObj1.Tables[0].Rows[i][3].ToString());
        }

        sumtxt.Text = "סך הכל לתשלום: " + sum.ToString() + " ₪";

    }

    //הצגת סל הקניות
    public void Showtbl()
    {

        if (Session["itemnum"].ToString() == "0")
        {
            msg.Text = "סל הקניות שלך ריק";
            subortbl.Visible = false;
            endorder.Visible = false;
            clearsuborder.Visible = false;
            sumtxt.Visible = false;
        }
        else
        {
            subortbl.Visible = true;
            endorder.Visible = true;
            clearsuborder.Visible = true;
            sumtxt.Visible = true;

            string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
            OleDbConnection myCon1 = new OleDbConnection(connectionStr1);
            string sqlStr1 = "SELECT TblsubOrdersHelp.orderid as מספר הזמנה , TblsubOrdersHelp.proid as קוד מוצר, TblsubOrdersHelp.quantity as כמות מוזמנת, TblsubOrdersHelp.total as מחיר כולל FROM TblsubOrdersHelp;";


            OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
            //יצירת טבלה בזיכרון
            DataSet dsObj1 = new DataSet();
            daObj1.Fill(dsObj1);

            this.subortbl.DataSource = dsObj1.Tables[0];
            this.subortbl.DataBind();
         
        }
    }
    protected void endorder_Click(object sender, EventArgs e)
    {
        passpnl.Visible = true;

    }

    protected void srcbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (search.Text.Length > 0)
        {
          
            Response.Redirect("../Catalog/SearchPro.aspx?SearchSt=" + search.Text.ToString() + "&SearchCat=" + DropDownList1.SelectedItem.Text.ToString());
        }
    }
    protected void clearsuborder_Click(object sender, EventArgs e)
    {
        //ניקוי סל הקניות
       
        subortbl.Visible = false;
        endorder.Visible = false;
        clearsuborder.Visible = false;
        sumtxt.Visible = false;

        //מחיקת תוכן טבלת העזר
          FillProamuback();
        O1.AddtoOrder("delete * from TblsubOrdersHelp");
        Session["itemnum"] = 0;
        subortbl.Visible = false;
        msg.Text = "סל הקניות שלך ריק";
        endorder.Visible = false;
        clearsuborder.Visible = false;
        sumtxt.Visible = false;
        hellolbl.Text = "שלום " + Session["user"].ToString() + ". מוצרים בסל: " + Session["itemnum"].ToString();
        creditpanel.Visible = false;
      
    }

    public void FillProamuback()
    {
        //עדכון כמות מוצר במלאי, החזרת הכמות לאחר ריקון סל

        DataSet ds1 = new DataSet();
        ds1 = O1.ReturnData("select * from TblsubOrdersHelp");

        for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
        {
            Updateproamu(int.Parse(ds1.Tables[0].Rows[i][1].ToString()), int.Parse(ds1.Tables[0].Rows[i][2].ToString()));

        }
    }

    public void Updateproamu(int proid, int value)
    {
        //עדכון כמות מוצר במלאי, החזרת הכמות לאחר ריקון סל
        int newv = value + Getproamu(proid);
        O1.AddtoOrder("UPDATE Tblproducts SET Tblproducts.Productamount='" + newv.ToString() + "' WHERE (((Tblproducts.ProductID)= " + proid.ToString() + "))");


    }

    public int Getproamu(int proid)
    {
       
        return int.Parse (O1.ReturnData("SELECT Tblproducts.ProductID, Tblproducts.Productamount FROM Tblproducts WHERE (((Tblproducts.ProductID)="+proid .ToString ()+"));").Tables [0].Rows[0][1].ToString ());
        
    }

    public bool Ispasstrue()
    {
        if (pass2.Text.Length == 0 || pass2.Text != Session["userpass"].ToString())
        {
            return false;
        }
        else
            return true;
    }

    protected void endor_Click(object sender, EventArgs e)
    {



        if (!Ispasstrue())
        {
            err.Text = "סיסמה שגויה!";
        }
        else
        {
            passpnl.Visible = false;
            creditpanel.Visible = true;
        }
    }

    protected void EndOrder()
    {
        //הכנסה לטבלת הזמנות 

        O1.AddtoOrder("INSERT INTO TblOrders (date1,cusid) VALUES (#" + Convert.ToDateTime(DateTime.Now.ToString()) + "#," + int.Parse(Session["userid"].ToString()) + ")");

        //יצירת טבלה בזיכרון שהיא העתק של טבלת תת הזמנות עזר
        DataSet ds = new DataSet();
        ds = O1.ReturnData("select * from TblsubOrdersHelp");

        // העתקה לטבלת תת הזמנה
        foreach (DataRow r in ds.Tables[0].Rows)
        {

            string orid = r["orderid"].ToString();
            string proid = r["proid"].ToString();
            string quantity = r["quantity"].ToString();
            string total = r["total"].ToString();
            O1.AddtoOrder("insert into TblsubOrders(orderid,proid,quantity,total) values (" + int.Parse(orid) + "," + int.Parse(proid) + "," + int.Parse(quantity) + "," + int.Parse(total) + ")");

        }

        subortbl.Visible = false;
        endorder.Visible = false;
        clearsuborder.Visible = false;
        sumtxt.Visible = false;

        //מחיקת תוכן טבלת העזר
        FillProamuback();
        O1.AddtoOrder("delete * from TblsubOrdersHelp");
        Session["itemnum"] = 0;
        subortbl.Visible = false;
        msg.Text = "ההזמנה נשלחה!";
        endorder.Visible = false;
        clearsuborder.Visible = false;
        sumtxt.Visible = false;
        hellolbl.Text = "שלום " + Session["user"].ToString() + ". מוצרים בסל: " + Session["itemnum"].ToString();
        creditpanel.Visible = false;

     
    }


    protected void endallorder_Click(object sender, EventArgs e)
    {
         
        Service.Service aa = new Service.Service();

        if (aa.CheckCredit(cusid.Text, creditnum.Text, creditdate.Text))
        {

            int sumor = int.Parse(O1.ReturnData("SELECT Sum(TblsubOrdersHelp.total) AS Sumמתוךtotal FROM TblsubOrdersHelp;").Tables[0].Rows[0][0].ToString());


            if (aa.CheckBal(cusid.Text, creditnum.Text, creditdate.Text, sumor))
            {

                EndOrder();
                aa.Updtbalance(cusid.Text, creditnum.Text, creditdate.Text, sumor);
               
            }
            else
            {
                err2.Text = "יתרת הכרטיס נמוכה מסכום ההזמנה ב: " + aa.Howmuchlower(cusid.Text, creditnum.Text, creditdate.Text, sumor) +" ₪";

            }
    
            
        }
        else
        {
            err2.Text = "פרטי כרטיס אשרי שגויים";
        }
    }


    protected void logout_Click(object sender, EventArgs e)
    {
        //התנתקות
        Session["user"] = null;
        Session["userpass"] = null;
        Session["userid"] = null;

        //מחיקת תוכן טבלת העזר
       
        O1.AddtoOrder("delete * from TblsubOrdersHelp");

        Response.Redirect("../HomePage.aspx");
    }
    protected void subortbl_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow selectedRow = ((GridView)e.CommandSource).Rows[index];

        O1.AddtoOrder("delete from TblsubOrdersHelp where TblsubOrdersHelp.orderid='" + selectedRow.Cells[1].Text + "' AND TblsubOrdersHelp.proid='" + selectedRow.Cells[2].Text + "' ");
        Response.Redirect("../Catalog/Sal.aspx");

    }

    protected void ordhis_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument); 
        GridViewRow selectedRow = ((GridView)e.CommandSource).Rows[index];
      
        if (e.CommandName == "delete")
        {
            O1.AddtoOrder("delete from TblOrders where TblOrders.orderid=" + selectedRow.Cells[2].Text + "");
            Response.Redirect("../Catalog/Sal.aspx");
            orddeta.Visible = false ;
        }
        else
        {
            string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
            OleDbConnection myCon1 = new OleDbConnection(connectionStr1);
            string sqlStr1 = "SELECT TblsubOrders.orderid as קוד הזמנה , TblOrders.date1 as תאריך הזמנה , TblDetailType.typeproname as סוג מוצר , Tblproducts.Productid as קוד מוצר , Tblproducts.Productname as שם מוצר , TblsubOrders.quantity as כמות מוזמנת , Tblproducts.price as מחיר מוצר, TblsubOrders.total as סך הכל FROM TblDetailType INNER JOIN (Tblproducts INNER JOIN (TblOrders INNER JOIN TblsubOrders ON TblOrders.orderid = TblsubOrders.orderid) ON Tblproducts.ProductID = TblsubOrders.proid) ON TblDetailType.typeprocode = Tblproducts.Producttype WHERE (((TblsubOrders.orderid)=" + selectedRow.Cells[2].Text + "));";


            OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
            //יצירת טבלה בזיכרון
            DataSet dsObj1 = new DataSet();
            daObj1.Fill(dsObj1);

            orddeta.DataSource = dsObj1.Tables[0];
            orddeta.DataBind();
            orddeta.Visible = true;

        }
    }
    protected void orddeta_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow selectedRow = ((GridView)e.CommandSource).Rows[index];

        if (orddeta.Rows.Count == 1)
        {
            O1.AddtoOrder("delete from TblOrders where TblOrders.orderid=" + selectedRow.Cells[1].Text + "");
            Response.Redirect("../Catalog/Sal.aspx");
            
        }
        else
        {
            O1.AddtoOrder("delete from TblsubOrders where TblsubOrders.orderid=" + selectedRow.Cells[1].Text + " AND TblsubOrders.proid=" + selectedRow.Cells[4].Text + " AND TblsubOrders.total=" + selectedRow.Cells[8].Text + " ");
            Response.Redirect("../Catalog/Sal.aspx");
        }
      
    }
}

