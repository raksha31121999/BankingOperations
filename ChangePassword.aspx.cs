using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit(object sender, EventArgs e)
    {
        string id, cp, np, sq,an;
        id = TextBox1.Text;
        cp= TextBox2.Text;
        np = TextBox3.Text;
        sq = DropDownList1.SelectedValue;
        an = TextBox4.Text;
       
        SqlConnection scon;
        SqlCommand scmd;
        try
        {
            scon = new SqlConnection("server=RAKSHA3112\\SQLEXPRESS;uid=sa;pwd=mypleasure;database=bankingdb");
            scon.Open();
            scmd = new SqlCommand("update users set Pswd=@a where Userid=@b;", scon);

            scmd.Parameters.AddWithValue("a", np);
            scmd.Parameters.AddWithValue("b", id);
            int cnt = scmd.ExecuteNonQuery();
            if (cnt > 0)
                Label1.Text = "Password Changed Successfully";

           
            scon.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}