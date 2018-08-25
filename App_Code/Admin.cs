using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

/// <summary>
/// Summary description for Admin
/// </summary>
public class Admin
{

    OleDbConnection myCon2 = new OleDbConnection(ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString);

	public Admin()
	{
       
	}

    //עריכת מוצרים

    //עדכון פרטי מוצר
    public bool UpdatePro(string ProductID, string Productname, string price, string Productamount, string Producttype, string description, string CusID, string proimg)
    {
        if (Productname.Length > 0 && price.Length > 0 && Productamount.Length > 0 && Producttype.Length > 0 && description.Length > 0 && proimg.Length > 0)
        {
            
           
            string sqlStr3 = "UPDATE Tblproducts SET Tblproducts.Productname='" + Productname + "', Tblproducts.price=" + price + ", Tblproducts.Productamount='" + Productamount + "', Tblproducts.Producttype=" + Producttype + ", Tblproducts.description='" + description + "', Tblproducts.CusID=" + CusID + ", Tblproducts.proimg='" + proimg + "' WHERE (((Tblproducts.ProductID)= " + ProductID + "))";
            OleDbCommand cmd = new OleDbCommand(sqlStr3, myCon2);
            myCon2.Open();
            cmd.ExecuteNonQuery();
            myCon2.Close();

            return true;

        }
        else
        {
            return false;
        }
    }
    
    //הסרת מוצר
    public void RemovePro(string proid)
    {
        string ins = "delete Tblproducts.ProductID from Tblproducts where Tblproducts.ProductID=" + proid + "";
        OleDbCommand build = new OleDbCommand(ins, myCon2);
        myCon2.Open();
        build.ExecuteNonQuery();
        myCon2.Close();

    }

    //פעולות על משתמשים

    //עדכון פרטי משתמש
    public bool UpdateUsr(string userid, string User1, string Name1, string Phone, string Pass1, string Adress, string Gender, string Age, string CityID)
    {
        if (User1.Length > 0 && Name1.Length > 0 && Phone.Length > 0 && Pass1.Length > 0 && Adress.Length > 0 && Age.Length > 0)
        {
            Encryption E2 = new Encryption(Pass1);
           
            string sqlStr3 = "UPDATE TblCustomers SET TblCustomers.User1='" + User1 + "', TblCustomers.Name1='" + Name1 + "', TblCustomers.Phone='" + Phone + "', TblCustomers.Pass1='" + E2.md5() + "', TblCustomers.Adress='" + Adress + "', TblCustomers.Gender='" + Gender + "', TblCustomers.Age='" + Age + "', TblCustomers.CityID=" + CityID + " WHERE (((TblCustomers.CusID)= " + userid + "))";
            OleDbCommand cmd = new OleDbCommand(sqlStr3, myCon2);
            myCon2.Open();
            cmd.ExecuteNonQuery();
            myCon2.Close();
            return true;

        }
        else
        {
            return false;
        }
    }

    //הסרת משתמש
    public void RemoveUsr(string  casid)
    {
        
        string ins = "delete TblCustomers.CusID from TblCustomers where TblCustomers.CusID=" + casid + "";
        OleDbCommand build = new OleDbCommand(ins, myCon2);
        myCon2.Open();
        build.ExecuteNonQuery();
        myCon2.Close();

    }

    //הסרת קטגוריה
    public void RemoveCat (string catid)
    {
        
           
            string ins = "delete TblDetailType.typeprocode from TblDetailType where TblDetailType.typeprocode=" + catid + "";
            OleDbCommand build = new OleDbCommand(ins, myCon2);
            myCon2.Open();
            build.ExecuteNonQuery();
            myCon2.Close();

            
    }

    //הוספת קטגוריה
    public bool AddCat(string catname)
    {
        if (catname.Length > 0)
        {
            
            string ins = "insert into TblDetailType (typeproname) values ('" + catname + "')";
            OleDbCommand build = new OleDbCommand(ins, myCon2);
            myCon2.Open();
            build.ExecuteNonQuery();
            myCon2.Close();

            return true;
        }
        else
            return false;
    }

    //בדיקה אם קטגוריה קיימת 
    public bool Chkcat(string catname)
    {

        DataSet tblhlp = RetTable("SELECT TblDetailType.typeprocode, TblDetailType.typeproname FROM TblDetailType;");
       
       
        for (int i = 0; i < tblhlp.Tables[0].Rows.Count; i++)
        {
            if (tblhlp.Tables[0].Rows[i][1].ToString ()==catname )
            {
                return false;
            }
        }

        return true;


    }

    //הוספת מוצר
    public bool Addpro(string proname, string proprice, string proamu, string protyprID, string prodes, string cusID, string proimg)
    {
        if (proname.Length > 0 && proprice.Length > 0 && proamu.Length > 0 && prodes.Length > 0 && proimg.Length > 0)
        {
            
            string ins = "insert into Tblproducts ( Productname, price, Productamount, Producttype, description, CusID, proimg) values ( '" + proname + "' ,'" + proprice + "', '" + proamu + "', '" + protyprID + "' , '" + prodes + "' , '" + cusID + "' , '" + proimg + "' )";
            OleDbCommand build = new OleDbCommand(ins, myCon2);
            myCon2.Open();
            build.ExecuteNonQuery();
            myCon2.Close();

            return true;
        }
        else
            return false;
    }


    //סטטיסטיקות תגובות

    //פעולה המחזירה את שם המשתמש שהגיב הכי הרבה
    public string Retmaxrepuser()
    {
        DataSet Usrs = RetTable("SELECT TblCustomers.CusID FROM TblCustomers;");
        DataSet Repls = RetTable("SELECT TblRply.rypid, TblRply.CusID FROM TblRply;");

        int cnt = 0, max=-1;
        string usr = "";
        for (int i = 0; i < Usrs.Tables[0].Rows.Count; i++)
        {
            cnt = 0;
            for (int j = 0; j < Repls .Tables[0].Rows.Count; j++)
            {
                if (Usrs.Tables[0].Rows[i][0].ToString() == Repls.Tables[0].Rows[j][1].ToString())
                    cnt++;

            }

            if (cnt > max)
            {
                max = cnt;
                usr = RetTable("SELECT TblCustomers.CusID, TblCustomers.User1 FROM TblCustomers WHERE (((TblCustomers.CusID)=" + int.Parse (Usrs.Tables[0].Rows[i][0].ToString ()) + "));").Tables[0].Rows[0][1].ToString();

            }
        }

        return usr ;
    }

    //פעולה המחזירה את מספר התגובות הכולל
    public int Retallrplynum()
    {
        return RetTable("SELECT TblRply.rypid FROM TblRply;").Tables[0].Rows.Count;


    }

    //סטטיסטיקות הזמנות

    //פעולה המחזירה את מספר ההזמנות
    public int OrderCount()
    {
        return RetTable("SELECT TblOrders.orderid FROM TblOrders;").Tables[0].Rows.Count;
    }

    //פעולה המחזירה את תאריך ההזמנה האחרונה
    public string lastDateOrder()
    {
        return RetTable("SELECT TblOrders.orderid, TblOrders.date1 FROM TblOrders; ").Tables[0].Rows[RetTable("SELECT TblOrders.orderid, TblOrders.date1 FROM TblOrders; ").Tables[0].Rows.Count -1][1].ToString();

    }

    //פעולה המחזירה את כמות ההזמנות שבוצעו היום
    public int TodayOrdersCount()
    {
        DataSet tblhlp = RetTable("SELECT TblOrders.orderid, TblOrders.date1 FROM TblOrders; ");
        int count = 0;
        string today = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString()+"/"+DateTime.Now .Year .ToString ();

        for (int i = 0; i < tblhlp.Tables[0].Rows.Count; i++)
        {
            if (tblhlp.Tables[0].Rows[i][1].ToString().Contains(DateTime.Now.Day.ToString()) && tblhlp.Tables[0].Rows[i][1].ToString().Contains(DateTime.Now.Month .ToString()) && tblhlp.Tables[0].Rows[i][1].ToString().Contains(DateTime.Now.Year.ToString()))
            {
                count++;
            }
        }


        return count ;
    }

    //פעולה המחזירה את הסכום הכספי של כל ההזמנות
    public int Allorderssum()
    {
        DataSet tblhlp = RetTable("SELECT TblsubOrders.orderid, TblsubOrders.total FROM TblsubOrders;");
        int count = 0;
      
        for (int i = 0; i < tblhlp.Tables[0].Rows.Count; i++)
        {
            count += int.Parse (tblhlp.Tables[0].Rows[i][1].ToString());
        }


        return count;

    }

    //סטטיסטיקות מוצרים

    //פעולה המחזירה את שמות המוצרים שאזלו במלאי
    public string  Unavpro()
    {
        DataSet tblhlp = RetTable("SELECT Tblproducts.ProductID, Tblproducts.Productname, Tblproducts.Productamount FROM Tblproducts;");
        string st = "";
        for (int i = 0; i < tblhlp.Tables[0].Rows.Count; i++)
        {
            if(tblhlp.Tables[0].Rows[i][2].ToString ()=="0")
            {
              st += tblhlp.Tables[0].Rows[i][1].ToString ()+", ";

            }
        }
       

        return st;

    }

    //פעולה המחזירה את המוצר האחרון שפורסם
    public string LastPro()
    {
        return RetTable("SELECT Tblproducts.ProductID, Tblproducts.Productname FROM Tblproducts;").Tables[0].Rows[0][1].ToString();

    }

    //פעולה המחזירה את המוצר הזול ביותר
    public string Cheapestpro()
    {
        return RetTable("SELECT Tblproducts.ProductID, Tblproducts.Productname, Max(Tblproducts.price) AS Maxמתוךprice FROM Tblproducts GROUP BY Tblproducts.ProductID, Tblproducts.Productname ORDER BY Max(Tblproducts.price);").Tables[0].Rows[0][1].ToString();

    }

    //פעולה המחזירה את המוצר היקר ביותר
    public string Expensivepro()
    {
        return RetTable("SELECT Tblproducts.ProductID, Tblproducts.Productname, Max(Tblproducts.price) AS Maxמתוךprice FROM Tblproducts GROUP BY Tblproducts.ProductID, Tblproducts.Productname ORDER BY Max(Tblproducts.price) DESC;").Tables[0].Rows[0][1].ToString();

    }

    //פעולה המחזירה את כמות המוצרים באתר
    public int ProCount()
    {
        return RetTable("SELECT Tblproducts.ProductID FROM Tblproducts;").Tables[0].Rows.Count;
    }


    //סטטיסטיקות משתמשים

    //פעולה המחזירה את שם המשתמש האחרון שהזמין באתר
    public string LastOrderUser()
    {
        DataSet tblhlp = RetTable("SELECT TblOrders.orderid, TblOrders.cusid FROM TblOrders; ");
        int cusid = int.Parse (tblhlp .Tables [0].Rows [tblhlp.Tables [0].Rows .Count -1][1].ToString ());

        DataSet tblhlp2 = RetTable("SELECT TblCustomers.CusID, TblCustomers.User1 FROM TblCustomers;");
        for (int i = 0; i < tblhlp2.Tables[0].Rows.Count; i++)
        {
            if (cusid == int.Parse(tblhlp2.Tables[0].Rows[i][0].ToString()))
            {
                return tblhlp2.Tables[0].Rows[i][1].ToString();
            }
        }
        return "...";


    }

    //פעולה המחזירה את שם המשתמש הוותיק ביותר באתר
    public string OldestUser()
    {
        return RetTable("SELECT TblCustomers.CusID, TblCustomers.User1 FROM TblCustomers; ").Tables[0].Rows[0][1].ToString();
    }

    //פעולה המחזירה את המשתמש הטרי ביותר באתר
    public string NewestUser()
    {
        return RetTable("SELECT TblCustomers.CusID, TblCustomers.User1 FROM TblCustomers; ").Tables[0].Rows[UsersCount() - 1][1].ToString() ;
    }

    //פעולה המחזירה את כמות המשתמשים באתר
    public int UsersCount()
    {
        return RetTable("SELECT TblCustomers.CusID FROM TblCustomers;").Tables [0].Rows .Count ;
    }

    //פעולה המחזירה את ממוצע הגילאים של המשתמשים
    public double Usersageavg()
    {
        DataSet tblhlp = RetTable("SELECT TblCustomers.CusID, TblCustomers.Age FROM TblCustomers;");
        int allage = 0;
        double avage = 0;
        for (int i = 0; i < tblhlp.Tables[0].Rows.Count; i++)
        {
            allage += int.Parse (tblhlp.Tables[0].Rows[i][1].ToString());

        }
        avage = allage / UsersCount();

        return avage;

    }

    //פעולה המחזירה טבלה לפי שאילתה מסויימת
    public DataSet RetTable(string sqlhlp)
    {

        //מחרוזת התחברות לDATABASE
        
        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlhlp, myCon2.ConnectionString);
        //יצירת טבלה בזיכרון
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);
        return (dsObj1);
    }
}