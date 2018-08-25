using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;


/// <summary>
/// Summary description for Order
/// </summary>
public class Order
{
	public Order()
	{
	  
	}

    //פעולה המבצעת שאילתה
    public void AddtoOrder(string sqlhlp)
    {
        string contstr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection con = new OleDbConnection(contstr1);

        OleDbCommand build = new OleDbCommand(sqlhlp, con);
        con.Open();
        build.ExecuteNonQuery();
        con.Close();
    }

    //פעולה המחזירה טבלה לפי שאילתה
    public DataSet ReturnData(string sqlhlp)
    {
        
        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;

        OleDbConnection myCon1 = new OleDbConnection(connectionStr1);

        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlhlp , connectionStr1);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        return dsObj1;
    }

}
