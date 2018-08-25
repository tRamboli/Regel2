using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Catalog_Media : System.Web.UI.Page
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
    protected void gotosal_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sal.aspx");
    }
    protected void srcbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (search.Text.Length > 0)
        {
        

            Response.Redirect("../Catalog/SearchPro.aspx?SearchSt=" + search.Text.ToString() + "&SearchCat=" + DropDownList1.SelectedItem.Text.ToString());
        }

    }
    protected void prodview_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow selectedRow = ((GridView)e.CommandSource).Rows[index];
        Response.Redirect("Order.aspx?prodID=" + selectedRow.Cells[0].Text);
    }
}