using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;
using System.Drawing;

public partial class Catalog_SearchPro : System.Web.UI.Page
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
            Panel2.Visible = false;
        }

        if (Request.QueryString["SearchSt"] != null && Request.QueryString["SearchCat"]!=null )
        {
            FillGrd();
        }
           

    }


    public void FillGrd()
    {
        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        string ins = "SELECT Tblproducts.ProductID as קוד מוצר, Tblproducts.Productname as מוצר, TblCustomers.Name1 as מוכר, TblCustomers.Phone as טלפון, Tblproducts.description as תיאור, Tblproducts.price as מחיר FROM TblDetailType INNER JOIN (TblCustomers INNER JOIN Tblproducts ON TblCustomers.CusID = Tblproducts.CusID) ON TblDetailType.typeprocode = Tblproducts.Producttype WHERE (((Tblproducts.Productname) Like '%" + Request.QueryString["SearchSt"] + "%')) OR (((Tblproducts.description) Like '%" + Request.QueryString["SearchSt"] + "%') AND ((TblDetailType.typeproname)='" + Request.QueryString["SearchCat"] + "'));";


        OleDbDataAdapter daObj1 = new OleDbDataAdapter(ins, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);
        if (dsObj1.Tables[0].Rows.Count == 0)
        {
            Label1.Text = "אין תוצאות חיפוש עבור המונח '" + Request.QueryString["SearchSt"]+"'";
            
        }
        else
        {
            if (dsObj1.Tables[0].Rows.Count == 1 && Session["userid"] != null)
            {

                
                Response.Redirect("Order.aspx?prodID=" + dsObj1.Tables[0].Rows[0][0].ToString());
            }
            else
            {
                Label1.Text = "התקבלו " + dsObj1.Tables[0].Rows.Count + " תוצאות עבור המונח '" + Request.QueryString["SearchSt"] + "'";
            }

            prodview.DataSource = dsObj1.Tables[0];
            prodview.DataBind();
            
        }

    }

    protected void srcbtn_Click(object sender, ImageClickEventArgs e)
    {

        if (search .Text.Length > 0)
        {
            Response.Redirect("../Catalog/SearchPro.aspx?SearchSt=" + search.Text.ToString() + "&SearchCat=" + DropDownList1.SelectedItem.Text.ToString());
        }
    }

    protected void gotosal_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sal.aspx");
    }


 
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session["userpass"] = null;
        Session["userid"] = null;

        //מחיקת תוכן טבלת העזר
        Order O1 = new Order();
        O1.AddtoOrder("delete * from TblsubOrdersHelp");

        Response.Redirect("../HomePage.aspx");

    }
    protected void prodview_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow selectedRow = ((GridView)e.CommandSource).Rows[index];
      
        Response.Redirect("Order.aspx?prodID=" + selectedRow.Cells[1].Text);
    }
}
