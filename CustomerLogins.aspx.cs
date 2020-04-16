using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class CustomerLogins : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Submit(object sender, EventArgs e)
    {
        string id, nm, us, sq, an;
        id = TextBox1.Text;
        nm = TextBox2.Text;
        us = DropDownList2.SelectedValue;
        sq = DropDownList1.SelectedValue;
        an = TextBox4.Text;

        SqlConnection scon;
        SqlCommand scmd;

        try
        {

            scon = new SqlConnection("server=RAKSHA3112\\SQLEXPRESS;uid=sa;pwd=mypleasure;database=bankingdb");
            scon.Open();
            scmd = new SqlCommand("update users set Userstatus=@a where Userid=@b;", scon);
            scmd.Parameters.AddWithValue("a", us);
            scmd.Parameters.AddWithValue("b", id);
            scmd.ExecuteNonQuery();
            Label1.Text = "Customer's Status Changed";
            scon.Close();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
        }
    }