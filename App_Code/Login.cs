using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.OleDb;

/// <summary>
/// Summary description for Login
/// </summary>
public class Login
{
    protected string user, pass;
	public Login(string user, string pass)
	{

        this.user = user;
        this.pass = pass;

        
	}
    //פעולה להתחברות משתמש
    public DataSet LoginCus( )
    {

        //מחרוזת התחברות לDATABASE
        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon1 = new OleDbConnection(connectionStr1);
        string sqlStr1 = "SELECT TblCustomers.CusID, TblCustomers.User1, TblCustomers.Name1, TblCustomers.Phone, TblCustomers.Pass1, TblCustomers.Adress, TblCustomers.Gender, TblCustomers.Age, TblCities.CityName FROM TblCities INNER JOIN TblCustomers ON TblCities.CityID = TblCustomers.CityID WHERE (((TblCustomers.User1)='"+this.user +"') AND ((TblCustomers.Pass1)='"+this .pass +"'));";
        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        return dsObj1;
        //הפעולה מחזירה טבלה שבה המשתמש שהתחבר לאתר

    }
}
