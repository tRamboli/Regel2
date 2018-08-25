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

public partial class admin_AdminPanel : System.Web.UI.Page
{
    Admin A1 = new Admin();
    string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["isadmin"] == null)
        {
            Response.Redirect("../users/UserLogin.aspx");
        }

        UpdateStats();

    }

    protected bool IfNum(string st)
    {
        int num;
        return int.TryParse(st, out num);



    }
    protected void Fillprodtl(string proname, string proid)
    {

        string sqlStr1 = "";
        if (proid.Length == 0)
            sqlStr1 = "SELECT Tblproducts.ProductID, Tblproducts.Productname, Tblproducts.price, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, Tblproducts.CusID, Tblproducts.proimg FROM Tblproducts WHERE (((Tblproducts.Productname)='" + proname + "'));";
        else
        {
            if (IfNum(proid))
                sqlStr1 = "SELECT Tblproducts.ProductID, Tblproducts.Productname, Tblproducts.price, Tblproducts.Productamount, Tblproducts.Producttype, Tblproducts.description, Tblproducts.CusID, Tblproducts.proimg FROM Tblproducts WHERE (((Tblproducts.ProductID)=" + int.Parse(proid) + "));";
            else
            {
                errpro.Text = "יש להזין מספרים בלבד";
                return;
            }
        
        }

        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        if (dsObj1.Tables[0].Rows.Count == 0)
        {
            errpro.Visible = true;
            errpro.Text = "לא קיים מוצר זה";

        }
        else
        {
            errpro.Visible = false;
            //מילוי פרטים בשדות

            edproid.Text = dsObj1.Tables[0].Rows[0][0].ToString();
            edproname.Text = dsObj1.Tables[0].Rows[0][1].ToString();
            edproprice.Text = dsObj1.Tables[0].Rows[0][2].ToString();
            edproamu.Text = dsObj1.Tables[0].Rows[0][3].ToString();
            edprotype.SelectedIndex = int.Parse(dsObj1.Tables[0].Rows[0][4].ToString()) - 1;
            edprodes.Text = dsObj1.Tables[0].Rows[0][5].ToString();
            edproseller.SelectedIndex = int.Parse(dsObj1.Tables[0].Rows[0][6].ToString()) - 1;
            edpropict.Text = dsObj1.Tables[0].Rows[0][7].ToString();
            edpropic.ImageUrl = edpropict.Text;
        }
    }

    protected void Fillorderdtl(string username, string userid)
    {

        string sqlStr1 = "";
        if (userid.Length == 0)
            sqlStr1 = "SELECT TblCustomers.CusID, TblCustomers.User1, TblCustomers.Name1, TblCustomers.Phone, TblCustomers.Pass1, TblCustomers.Adress, TblCustomers.Gender, TblCustomers.Age, TblCustomers.CityID FROM TblCustomers WHERE (((TblCustomers.User1)='" + username + "'));";
        else
            sqlStr1 = "SELECT TblCustomers.CusID, TblCustomers.User1, TblCustomers.Name1, TblCustomers.Phone, TblCustomers.Pass1, TblCustomers.Adress, TblCustomers.Gender, TblCustomers.Age, TblCustomers.CityID FROM TblCustomers WHERE (((TblCustomers.CusID)=" + int.Parse(userid) + "));";

        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        if (dsObj1.Tables[0].Rows.Count == 0)
        {
            errord.Visible = true;
            errord.Text = "לא קיים משתמש זה";

        }
        else
        {
            string userid2 = dsObj1.Tables[0].Rows[0][0].ToString();
            string sqlstr2 = "SELECT TblOrders.orderid, TblOrders.date1, TblOrders.cusid FROM TblOrders WHERE (((TblOrders.cusid)=" + userid2 + "));";

            OleDbDataAdapter daObj2 = new OleDbDataAdapter(sqlstr2, connectionStr1);
            //יצירת טבלה בזיכרון
            DataSet dsObj2 = new DataSet();
            daObj2.Fill(dsObj2);

            for (int i = 0; i < dsObj2.Tables[0].Rows.Count; i++)
            {
                allorders.Items.Add(dsObj2.Tables[0].Rows[i][0].ToString());

            }


        }
    }
    protected void Filluserdtl(string username, string userid)
    {

        string sqlStr1 = "";
        if (userid.Length == 0)
            sqlStr1 = "SELECT TblCustomers.CusID, TblCustomers.User1, TblCustomers.Name1, TblCustomers.Phone, TblCustomers.Pass1, TblCustomers.Adress, TblCustomers.Gender, TblCustomers.Age, TblCustomers.CityID FROM TblCustomers WHERE (((TblCustomers.User1)='" + username + "'));";
        else
            sqlStr1 = "SELECT TblCustomers.CusID, TblCustomers.User1, TblCustomers.Name1, TblCustomers.Phone, TblCustomers.Pass1, TblCustomers.Adress, TblCustomers.Gender, TblCustomers.Age, TblCustomers.CityID FROM TblCustomers WHERE (((TblCustomers.CusID)=" + int.Parse(userid) + "));";

        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        if (dsObj1.Tables[0].Rows.Count == 0)
        {
            errusr.Visible = true;
            errusr.Text = "לא קיים משתמש זה";

        }
        else
        {
            errusr.Visible = false;
            //מילוי פרטים בשדות

            useridtext.Text = dsObj1.Tables[0].Rows[0][0].ToString();
            usernametext.Text = dsObj1.Tables[0].Rows[0][1].ToString();
            nametext.Text = dsObj1.Tables[0].Rows[0][2].ToString();
            phonetext.Text = dsObj1.Tables[0].Rows[0][3].ToString();
            passtext.Text = dsObj1.Tables[0].Rows[0][4].ToString();
            addtext.Text = dsObj1.Tables[0].Rows[0][5].ToString();

            agetext.Text = dsObj1.Tables[0].Rows[0][7].ToString();

            if (dsObj1.Tables[0].Rows[0][6].ToString() == "נקבה")
            {
                usersex.SelectedIndex = 1;
            }
            else
            {
                usersex.SelectedIndex = 0;
            }

            usercity.SelectedIndex = int.Parse(dsObj1.Tables[0].Rows[0][8].ToString()) - 1;
        }
    }

    protected void UpdateStats()
    {


        //משתמשים
        allusers.Text = "מספר משתמשים: " + A1.UsersCount();
        ageavg.Text = "ממוצע גילאים: " + Math.Round(A1.Usersageavg(), 2);
        newuser.Text = "המשתמש החדש ביותר: " + A1.NewestUser();
        olduser.Text = "המשתמש הוותיק ביותר: " + A1.OldestUser();
        lastorderuser.Text = "המשתמש האחרון שביצע הזמנה: " + A1.LastOrderUser();

        //מוצרים
        procnt.Text = "מספר מוצרים: " + A1.ProCount();
        exspro.Text = "המוצר היקר ביותר: " + A1.Expensivepro();
        cheapro.Text = "המוצר הזול ביותר: " + A1.Cheapestpro();
        lastpro.Text = "מוצר אחרון שפורסם: " + A1.LastPro();
        nonavpro.Text = "מוצרים שאזלו במלאי: " + A1.Unavpro();

        //הזמנות
        ornum.Text = "מספר הזמנות: " + A1.OrderCount();
        orlastdate.Text = "מועד הזמנה אחרונה: " + A1.lastDateOrder();
        todayorder.Text = "הזמנות שבוצעו היום: " + A1.TodayOrdersCount();
        sumprcord.Text = "סכום כל ההזמנות: " + A1.Allorderssum() + " ₪";

        //תגובות
        rypnum.Text = "מספר תגובות: " + A1.Retallrplynum();
        maxrepusr.Text = "הגיב הכי הרבה: " + A1.Retmaxrepuser();

    }
    protected void srcbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (search.Text.Length > 0)
        {

            Response.Redirect("../Catalog/SearchPro.aspx?SearchSt=" + search.Text.ToString() + "&SearchCat=" + DropDownList1.SelectedItem.Text.ToString());

        }

    }
    protected void Send_Click(object sender, EventArgs e)
    {

        if (A1.Addpro(prodname.Text, prodprice.Text, prodamu.Text, protypelist.SelectedItem.Value, proddes.Text, Sellername.SelectedItem.Value, prodpic.Text))
        {
            err1.Text = "המוצר התווסף";
        }

        else
        {
            err1.Text = "יש להזין את כל הפרטים";
        }
    }
    protected void prodpic_TextChanged(object sender, EventArgs e)
    {
        propic.ImageUrl = prodpic.Text;

    }
    protected void sendcatname_Click(object sender, EventArgs e)
    {

        if (A1.Chkcat(Catname.Text) && Catname.Text.Length > 0)
        {
            if (A1.AddCat(Catname.Text))
            {
                erradd.Text = "הקטגוריה התווספה";
            }

        }
        else
        {
            erradd.Text = "קטגוריה זו כבר קיימת";
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        A1.RemoveCat(DropDownList2.SelectedItem.Value.ToString());
        errremove.Text = "הקטגוריה הוסרה";
    }
    protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {


    }

    protected void nametext_TextChanged(object sender, EventArgs e)
    {

    }

    protected void senduser_Click(object sender, EventArgs e)
    {
        Filluserdtl(DropDownList3.SelectedItem.Text, useridtxt.Text);
        errusr2.Visible = false;
    }
    protected void clrf_Click(object sender, EventArgs e)
    {
        nametext.Text = "";
        usernametext.Text = "";
        phonetext.Text = "";
        passtext.Text = "";
        usercity.SelectedIndex = 0;
        usersex.SelectedIndex = 0;
        agetext.Text = "";
        addtext.Text = "";

    }
    protected void deluser_Click(object sender, EventArgs e)
    {
        if (useridtext.Text.Length != 0)
        {

            A1.RemoveUsr(useridtext.Text);
            errusr2.Text = "המשתמש נמחק בהצלחה";
            errusr2.Visible = true;

        }
    }
    protected void saveuser_Click(object sender, EventArgs e)
    {

        if (A1.UpdateUsr(useridtext.Text, usernametext.Text, nametext.Text, phonetext.Text, passtext.Text, addtext.Text, usersex.SelectedItem.Text, agetext.Text, usercity.SelectedValue.ToString()))
        {
            errusr2.Visible = true;
            errusr2.Text = "פרטי המשתמש עודכנו";
        }
        else
        {
            errusr2.Visible = true;
            errusr2.Text = "אנא מלא את כל הפרטים";
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void senpro_Click(object sender, EventArgs e)
    {

        Fillprodtl(proedselect.SelectedItem.Text, proidins.Text);
        errpro2.Visible = false;

    }
    protected void clrpro_Click(object sender, EventArgs e)
    {
        edproname.Text = "";
        edproprice.Text = "";
        edprodes.Text = "";
        edproamu.Text = "";
        edpropic.ImageUrl = "~/pic/noimg.png";
        edpropict.Text = "";
        edproseller.SelectedIndex = 0;
        edprotype.SelectedIndex = 0;

    }
    protected void delpro_Click(object sender, EventArgs e)
    {
        if (edproid.Text.Length != 0)
        {

            A1.RemovePro(edproid.Text);
            errpro2.Text = "המוצר נמחק בהצלחה";
            errpro2.Visible = true;

        }
    }
    protected void savepro_Click(object sender, EventArgs e)
    {

        if (A1.UpdatePro(edproid.Text, edproname.Text, edproprice.Text, edproamu.Text, edprotype.SelectedValue.ToString(), edprodes.Text, edproseller.SelectedValue.ToString(), edpropict.Text))
        {
            errpro2.Visible = true;
            errpro2.Text = "פרטי המוצר עודכנו";
        }
        else
        {

            errpro2.Visible = true;
            errpro2.Text = "אנא מלא את כל הפרטים";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Fillorderdtl(DropDownList4.SelectedItem.Text, TextBox1.Text);
        errord.Visible = false;
        removeord.Text = "הסר הזמנה";

    }

    protected void allorders_SelectedIndexChanged(object sender, EventArgs e)
    {

        string sqlStr1 = "SELECT TblsubOrders.orderid as מספר הזמנה, TblsubOrders.proid as קוד מוצר, TblsubOrders.quantity as כמות מוזמנת, TblsubOrders.total as מחיר FROM TblsubOrders WHERE (((TblsubOrders.orderid)=" + allorders.SelectedItem.Text + "));";

        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        this.orddet.DataSource = dsObj1.Tables[0];
        this.orddet.DataBind();

        FillDate(allorders.SelectedItem.Text);

        int sum = 0;
        for (int i = 0; i < dsObj1.Tables[0].Rows.Count; i++)
        {
            sum += int.Parse(dsObj1.Tables[0].Rows[i][3].ToString());
        }

        sumord.Text = "סכום הזמנה כולל: " + sum.ToString() + " ₪";
        removeord.Text = "הסר הזמנה";
    }

    protected void FillDate(string dateid)
    {

        string sqlStr1 = "SELECT TblOrders.orderid, TblOrders.date1, TblOrders.cusid FROM TblOrders WHERE (((TblOrders.orderid)=" + dateid + "));";

        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);
        orddatelbl.Text = "תאריך הזמנה: " + dsObj1.Tables[0].Rows[0][1].ToString();

    }
    protected void removeord_Click(object sender, EventArgs e)
    {
        if (allorders.SelectedIndex != 0 && removeord.Text != "ההזמנה הוסרה!")
        {
            string constr = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
            OleDbConnection con = new OleDbConnection(constr);
            string ins = "delete TblOrders.orderid from TblOrders where TblOrders.orderid=" + allorders.SelectedItem.Text + "";
            OleDbCommand build = new OleDbCommand(ins, con);
            con.Open();
            build.ExecuteNonQuery();
            con.Close();
            removeord.Text = "ההזמנה הוסרה!";
        }

    }

    protected void repgrd_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow selectedRow = ((GridView)e.CommandSource).Rows[index];
        string repid = selectedRow.Cells[1].Text;

        string ins = "delete TblRply.rypid from TblRply where TblRply.rypid=" + repid + "";
        Order O1 = new Order();
        O1.AddtoOrder(ins);

        Response.Redirect("AdminPanel.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        Order O1 = new Order();
        for (int i = 0; i < orddet.Rows.Count; i++)
        {
            GridViewRow row = orddet.Rows[i];
            bool isChecked = ((CheckBox)row.FindControl("chkSelect")).Checked;

            if (isChecked)
            {
                string ins = "delete from TblRply where TblRply.rypid=" + row.Cells[1].ToString() + "";

                O1.AddtoOrder(ins);

            }
        }


    }
    protected void delrep_Click(object sender, EventArgs e)
    {
        string contstr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection con = new OleDbConnection(contstr1);


        for (int i = 0; i < repgrd.Rows.Count; i++)
        {
            GridViewRow row = repgrd.Rows[i];
            bool isChecked = ((CheckBox)row.FindControl("chkSelect")).Checked;

            if (isChecked)
            {
                string ins = "delete from TblRply where TblRply.rypid=" + row.Cells[1].Text + "";

                OleDbCommand build = new OleDbCommand(ins, con);
                con.Open();
                build.ExecuteNonQuery();
                con.Close();
            }
        }

        Response.Redirect("../Admin/AdminPanel.aspx");


    }
    protected void adlogout_Click(object sender, EventArgs e)
    {

        Session["isadmin"] = null;
        Response.Redirect("../HomePage.aspx");

    }
}
