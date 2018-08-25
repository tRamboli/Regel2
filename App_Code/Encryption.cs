using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for Encryption
/// </summary>
public class Encryption
{
    protected string pass;

    public Encryption(string pass)
	{

        this.pass = pass ;
    }

    //פעולה המקבלת מחרוזת, מצפינה אותה בשיטת MD5 ומחזירה מחרוזת מוצפנת.
    public string md5()
    {
        System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] bs = System.Text.Encoding.UTF8.GetBytes(this.pass );
        bs = x.ComputeHash(bs);
        System.Text.StringBuilder s = new System.Text.StringBuilder();
        foreach (byte b in bs)
        {
            s.Append(b.ToString("x2").ToLower());
        }
        return s.ToString();
    }

    
}
