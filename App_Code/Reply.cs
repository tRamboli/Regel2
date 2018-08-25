using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
/// <summary>
/// Summary description for Reply
/// </summary>
public class Reply
{

    OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString);
	public Reply()
	{
		
	}

    public void Addcomment(int cusid, string com, int proid)
    {
       
          
            string ins = "insert into TblRply (CusID, comment, datetime1, proid) values ('" + cusid + "' , '" + com + "' , #" + Convert.ToDateTime(DateTime.Now.ToString()) + "# , '" + proid + "' )";
            OleDbCommand build = new OleDbCommand(ins, con);
            con.Open();
            build.ExecuteNonQuery();
            con.Close();


    }

    public int Returnrplynum(int pronum)
    {

       
        string sqlStr1 = "SELECT TblRply.rypid, TblRply.proid FROM TblRply WHERE (((TblRply.proid)=" + pronum + "));";
        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, con);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        return dsObj1.Tables[0].Rows.Count;
     

    }
    public DataSet ReturnRply(int pronum)
    {
      
        string sqlStr1 = "SELECT TblRply.comment as תגובה, TblCustomers.Name1 as שם השולח,  TblRply.datetime1 as תאריך FROM TblCustomers INNER JOIN TblRply ON TblCustomers.CusID = TblRply.CusID WHERE (((TblRply.proid)=" + pronum + "));";

        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, con);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);

        return dsObj1;

    }
}