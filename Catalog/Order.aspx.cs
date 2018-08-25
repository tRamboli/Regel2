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

public partial class Catalog_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Session["wassordeir"] = "true";
            Session["prodid"] = Request.QueryString["prodID"];
            Response.Redirect("../users/UserLogin.aspx");


        }
        else
        {
          
           
                string connectionStr2 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
                OleDbConnection myCon2 = new OleDbConnection(connectionStr2);
                string sqlStr2 = "SELECT Max(TblOrders.orderid) AS Maxמתוךorderid FROM TblOrders;";


                OleDbDataAdapter daObj2 = new OleDbDataAdapter(sqlStr2, connectionStr2);
                //יצירת טבלה בזיכרון
                DataSet dsObj2 = new DataSet();
                daObj2.Fill(dsObj2);
                string st2 = dsObj2.Tables[0].Rows[0][0].ToString();
                int orid = int.Parse(st2) + 1;
                ordernum.Text = orid.ToString();


            
            FillIn();

            nowdate.Text = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();
            hellolbl.Text = "שלום " + Session["user"].ToString() + ". מוצרים בסל: " + Session["itemnum"].ToString();

            if (proamount.Text == "0")
            {
                msg.Text = "המלאי אזל";
                addorder.Enabled = false;
            }

            //הצגת תגובות
            Reply R1=new Reply ();

            int reppronum=R1.Returnrplynum(int.Parse(proid.Text));
            if (reppronum > 0)
            {
                rplygrid.Visible = true;
                repnum.Text = reppronum.ToString() + " תגובת למוצר זה";
                this.rplygrid.DataSource = R1.ReturnRply(int.Parse(proid.Text)).Tables[0];
                this.rplygrid.DataBind();



            }
            else
            {
                repnum.Text = "אין תגובות למוצר זה";
                rplygrid.Visible = false;

            }
        }
   }

    public void FillIn()
    {
        double Num;

        bool isNum = double.TryParse(Request.QueryString["prodID"], out Num);

        if (!isNum)
            Response.Redirect("Error.aspx");

        string prodiden = Request.QueryString["prodID"];
        orderdate.Text = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();

        Order O2 = new Order();
        DataSet ds1 = O2.ReturnData("SELECT Tblproducts.ProductID, Tblproducts.Productname, Tblproducts.price, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, Tblproducts.CusID, Tblproducts.proimg, TblCustomers.Name1 FROM TblCustomers INNER JOIN Tblproducts ON TblCustomers.CusID = Tblproducts.CusID WHERE (((Tblproducts.ProductID)=" + prodiden + ")); ");
       if(ds1.Tables [0].Rows.Count ==0)
           Response.Redirect("Error.aspx");

        cusid.Text = ds1.Tables [0].Rows [0][8].ToString ();


        proid.Text = prodiden;

        name1.Text = ds1.Tables [0].Rows [0][1].ToString ();
        proprice.Text = ds1.Tables [0].Rows [0][2].ToString ();
        proamount.Text = ds1.Tables [0].Rows [0][3].ToString ();
        Image1.ImageUrl = ds1.Tables [0].Rows [0][7].ToString ();
        des.Text = ds1.Tables [0].Rows [0][5].ToString ();
    
    }

    public bool Ifordernumright()
    {

        if (int.Parse(proordernum.Text) <= int.Parse(proamount.Text))
            return true;
        else
            return false;
    }
    protected void srcbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (search.Text.Length > 0)
        {
           
            Response.Redirect("../Catalog/SearchPro.aspx?SearchSt=" + search.Text.ToString() + "&SearchCat=" + DropDownList1.SelectedItem.Text.ToString());
        }
    }
    protected void orderdate_TextChanged(object sender, EventArgs e)
    {

    }
    protected void proordernum_TextChanged(object sender, EventArgs e)
    {

        int num;

        if (int.TryParse(proordernum.Text, out num))
        {
            if (Ifordernumright())
            {
                msg.Text = "";
                int sum = int.Parse(proordernum.Text) * int.Parse(proprice.Text);
                finalprice.Text = sum.ToString();


            }
            else
            {
                proordernum.Text = "";
                finalprice.Text = "";
                msg.Text = "כמות מוזמנת גדולה מהכמות במלאי, אנא הכנס ערך קטן או שווה לכמות במלאי";

            }
        }
        else
        {

            msg.Text = "יש להזין מספרים בלבד";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CatHome.aspx");
    }

    protected void addorder_Click(object sender, EventArgs e)
    {
        if (proordernum.Text.Length > 0 && finalprice.Text.Length > 0 && Ifordernumright() && proordernum.Text != "0")
        {
            Updateproamu();
            AddtoSubOrdersHelp();
            msg.Text = "המוצר התווסף לסל";
            int num = int.Parse(Session["itemnum"].ToString());

            num++;
            Session["itemnum"] = num.ToString();
            hellolbl.Text = "שלום " + Session["user"].ToString() + ". מוצרים בסל: " + Session["itemnum"].ToString();

            addorder.Enabled = false;
        }
        else
            msg.Text = "לא ניתן להוסיף לסל, ישנה טעות בהכנסת פרמטרים";
    }
    public void AddtoOrders()
    {
        string connectionStr3 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon3 = new OleDbConnection(connectionStr3);
        string sqlstr8 = "INSERT INTO TblOrders (date1, cusid) VALUES (#" + orderdate.Text + "# , '" + Session["userid"].ToString() +"')";

        OleDbDataAdapter daObj3 = new OleDbDataAdapter(sqlstr8, connectionStr3);
        DataSet dsObj3 = new DataSet();
        daObj3.Fill(dsObj3);

    }

    public void AddtoSubOrdersHelp()
    {
        //הכנסת נתונים לטבלת עזר 
        string sqlsubor = "INSERT INTO TblsubOrdersHelp (orderid, proid, quantity, total) VALUES  (" + ordernum.Text + ", " +proid.Text + "," + proordernum.Text + " ," + finalprice.Text + ")";
        
        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon4 = new OleDbConnection(connectionStr1);
        OleDbCommand cmd2 = new OleDbCommand(sqlsubor, myCon4);
        myCon4.Open();
        cmd2.ExecuteNonQuery();
        myCon4.Close();

    }

    public void Updateproamu()
    {
        int x = int.Parse(proamount .Text);
        x = x - int.Parse(proordernum .Text);
        // x = מספר מוצרים נותרים לאחר הזמנה
        int prodid = int.Parse(Request.QueryString["prodID"]);


        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon2 = new OleDbConnection(connectionStr1);
        string sqlStr3 = "UPDATE Tblproducts SET Tblproducts.Productamount='" + x.ToString() + "' WHERE (((Tblproducts.ProductID)= " + prodid.ToString () + "))";
        OleDbCommand cmd = new OleDbCommand(sqlStr3, myCon2);
        myCon2.Open();
        cmd.ExecuteNonQuery();
        myCon2.Close();
    }
    protected void endorder_Click(object sender, EventArgs e)
    {

        Response.Redirect("Sal.aspx");

    }
    protected void gotosal_Click(object sender, EventArgs e)
    {
        Response.Redirect("Sal.aspx");
    }
    protected void submitrply_Click(object sender, EventArgs e)
    {

        Reply r2 = new Reply();
        Order o1 = new Order();

        if (rplygrid.Rows.Count > 0 && o1.ReturnData("SELECT TblRply.CusID, TblRply.datetime1, TblRply.proid FROM TblRply WHERE (((TblRply.proid)=" + Request.QueryString["prodID"] + ")) ORDER BY TblRply.datetime1 DESC;").Tables[0].Rows[0][0].ToString() == Session["userid"].ToString())
        {
            errply.Text = "לא ניתן להגיב פעמיים ברצף";
        }
        else
        {


            if (rplytxt.Text.Length > 0)
            {
                r2.Addcomment(int.Parse(Session["userid"].ToString()), rplytxt.Text, int.Parse(proid.Text));

                rplytxt.ReadOnly = true;
                submitrply.Enabled = false;
                errply.Text = "התגובה נשלחה";
            }
            else
            {
                errply.Text = "יש להזין תוכן";
            }
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
    protected void proamount_TextChanged(object sender, EventArgs e)
    {

    }
}
