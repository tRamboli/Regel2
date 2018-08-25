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

public partial class users_UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
            Response.Redirect("../HomePage.aspx");

    }

    protected void Login()
    {
        if (Check())
        {
            Encryption E1 = new Encryption(Pass.Text);
            Login l1 = new Login(Name.Text, E1.md5());
            if (l1.LoginCus().Tables[0].Rows.Count > 0)
            {
                //ההתחברות הצליחה
                err.Text = "התחברת לאתר";
                Session["user"] = Name.Text.ToString();
                Session["userpass"] = Pass.Text.ToString();
                Session["itemnum"] = 0;
                Session["userid"] = l1.LoginCus().Tables[0].Rows[0][0].ToString();

                //מחיקת תוכן טבלת העזר
                Order O1 = new Order();
                O1.AddtoOrder("delete * from TblsubOrdersHelp");

                if (Session["wassordeir"] == "true")
                {
                    Response.Redirect("../Catalog/Order.aspx?prodID=" + Session["prodid"]);
                }

                Response.Redirect("../HomePage.aspx");
            }
            else
            {
                Encryption E2 = new Encryption(Pass.Text);

                AdminLogin l2 = new AdminLogin(Name.Text, E1.md5());
                if (l2.LoginAd().Tables[0].Rows.Count > 0)
                {
                    //ההתחברות מנהל הצליחה
                    err.Text = "שלום מנהל, התחברת לאתר בהצלחה";
                    Session["isadmin"] = true;
                    Session["user"] = Name.Text.ToString();
                    Session["adminid"] = l2.LoginAd().Tables[0].Rows[0][0].ToString();
                    Response.Redirect("../admin/AdminPanel.aspx");
                }
                else
                {
                    err.Text = "שם מתשמש או סיסמה לא נכונים";
                }
            }

        }
    }
    protected void login_Click(object sender, EventArgs e)
    {

        Login();
        
       
    }

    public bool Check()
    {
        if (Name.Text.Length == 0 && Pass.Text.Length == 0)
        {
            err.Text = "יש להכניס שם משתמש וסיסמה על מנת להתחבר לאתר";
            return false;
        }
        else
        {
            if (Name.Text.Length == 0)
            {
                err.Text = "יש להכניס שם מתשמש";
                return false;
            }
            else
            {
                if (Pass.Text.Length == 0)
                {
                    err.Text = "יש להכניס סיסמה";
                    return false;
                }
                else
                    //הכל תקין
                    return true;
            }
        }
       
    }
    protected void srcbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (search .Text.Length > 0)
        {
            Response.Redirect("../Catalog/SearchPro.aspx?SearchSt=" + search.Text.ToString() + "&SearchCat=" + DropDownList1.SelectedItem.Text.ToString());
        }
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void Pass_TextChanged(object sender, EventArgs e)
    {
        Login();
    }
    protected void Name_TextChanged(object sender, EventArgs e)
    {
    
    }
}

