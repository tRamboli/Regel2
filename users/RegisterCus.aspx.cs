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

public partial class RegisterCus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"]!=null)
            Response.Redirect("../HomePage.aspx");

    }
    public void Register()
    {
        if (CheckUser(User.Text.ToString()))
        {
            //��� ���� ���� �����
            string City, sex;
            City = DropDownList1.SelectedItem.Value;
            sex = DropDownList2.SelectedItem.Value;
            string contstr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        
            Encryption E1 = new Encryption(Pass.Text);
            Customer cus = new Customer(User.Text, Name.Text, Phone.Text, E1.md5   ().ToString () , Adress.Text, DropDownList2.SelectedItem.Value, Age.Text, DropDownList1.SelectedItem.Value);
            cus.RegCus(contstr1);

            Session["user"] = User.Text.ToString();
            Session["userpass"] = Pass.Text.ToString();
            Session["itemnum"] = 0;

            Order o1 = new Order();

            Session["userid"] = o1.ReturnData ("SELECT TblCustomers.CusID, TblCustomers.User1 FROM TblCustomers WHERE (((TblCustomers.User1)='"+User .Text+"'));").Tables[0].Rows[0][0].ToString();
            Response.Redirect("../HomePage.aspx");


        }
        else
        {
            //�� ����� ���� ���
            err.Text = "�� ����� ����,��� �� ��� ";
        }
    }
    public bool CheckUser(string usrname)
    {

        string connectionStr1 = ConfigurationManager.ConnectionStrings["yad2DBConnectionString"].ConnectionString;
        OleDbConnection myCon1 = new OleDbConnection(connectionStr1);
        string sqlStr1 = "SELECT TblCustomers.User1 FROM TblCustomers WHERE (((TblCustomers.User1)='" + usrname + "'));";
        OleDbDataAdapter daObj1 = new OleDbDataAdapter(sqlStr1, connectionStr1);
        //����� ���� �������
        DataSet dsObj1 = new DataSet();
        daObj1.Fill(dsObj1);
        if (dsObj1.Tables[0].Rows.Count > 0)
        {
            return false;
        }
        else
        {
            return true;

        }
    }
    protected void cln_Click(object sender, EventArgs e)
    {
       
     //   Clean();
    }

    public void Clean()
    {
        User.Text = "";
        Name.Text = "";
        Adress.Text = "";
        Age.Text = "";
        Phone.Text = "";
        Pass.Text = "";
        RePass.Text = "";

        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        err.Text = "";
    }
    protected void reg_Click(object sender, EventArgs e)
    {

        if (User.Text.Length > 0 && Pass.Text.Length > 0 && RePass.Text.Length > 0 && Adress.Text.Length > 0 && Age.Text.Length > 0 && DropDownList2.Text != "���" && Name.Text.Length > 0)
        {
            

            if (SamePass(Pass.Text, RePass.Text))
            {
                int num,num2;
                if (int.TryParse(Age.Text, out num))
                {
                    if (Pass.Text.Length < 5)
                        err.Text = "����� ���� ���, ��� ��� ����� ����";

                    else
                    {
                        if (Age.Text.Length > 3)
                        {
                            err.Text = "��� ���� ����";

                        }
                        else
                        {
                            if (!int.TryParse(Phone.Text, out num2))
                            {
                                err.Text = "���� ������ ���� ����� ������ ����";

                            }
                            else
                            {
                                if (Phone.Text.Length > 10)
                                {
                                    err.Text = "���� ����� ���� ���� ����� �� 10 �����";

                                }
                                else
                                {
                                    //��� ����

                                    Register();
                                }
                            }
                        }

                       

                        
                        
                    }
                }
                else
                {

                    err.Text = "�� ����� ���� ���� ���";
                }
            }
            else
            {
                err.Text = "�������� �� ������";
            }
        }
        else
        {
            err.Text = "�� ���� �� �� �����";
        }

    }
    public bool SamePass(string p1, string p2)
    {
        if (p1 == p2)
            return true;
        else
            return false;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void srcbtn_Click(object sender, ImageClickEventArgs e)
    {
        if (search.Text.Length > 0)
        {
            

            Response.Redirect("../Catalog/SearchPro.aspx?SearchSt=" + search.Text.ToString() + "&SearchCat=" + DropDownList1.SelectedItem.Text.ToString());
        }
    }
}
