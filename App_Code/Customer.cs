using System;
using System.Data.OleDb;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    //שדות המחלקה
    protected string User1, Name1, Phone, Pass1, Adress, Gender, Age, CityID;

    public Customer(string User1, string Name1, string Phone, string Pass1, string Adress, string Gender, string Age, string CityID)
    {
        this.User1 = User1;
        this.Name1 = Name1;
        this.Phone = Phone;
        this.Pass1 = Pass1;
        this.Adress = Adress;
        this.Gender = Gender;
        this.Age = Age;
        this.CityID = CityID;


    }
    //מתודה לרישום משתמש
    public void RegCus(string constr)
    {
        OleDbConnection con = new OleDbConnection(constr);
        string ins = "insert into TblCustomers (User1, Name1, Phone, Pass1, Adress, Gender, Age, CityID) values ('" + User1 + "' , '" + Name1 + "' ,'" + Phone + "', '" + Pass1 + "', '" + Adress + "' , '" + Gender + "' , '" + Age + "' , '" + CityID + "' )";
        OleDbCommand build = new OleDbCommand(ins, con);
        con.Open();
        build.ExecuteNonQuery();
        con.Close();


    }
}
