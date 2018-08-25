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
/// Summary description for AdminLogin
/// </summary>
public class AdminLogin
{
	protected string user, pass;

    public AdminLogin(string user, string pass)
	{

        this.user = user;
        this.pass = pass;

        
	}
    //פעולה להתחברות מנהל
    public DataSet  LoginAd()
    {
       
        //מחרוזת התחברות לDATABASE
        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon1 = new OleDbConnection(connectionStr1);
        string sqlStr1 = "SELECT TblAdmin.AdminId, TblAdmin.AdminName, TblAdmin.AdminPass FROM TblAdmin WHERE (((TblAdmin.AdminName)='" + this.user + "') AND ((TblAdmin.AdminPass)='" + this.pass  + "'));";
        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);
        return (dsObj1);
    }
}
