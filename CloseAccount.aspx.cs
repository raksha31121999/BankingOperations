using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class CloseAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void Submit(object sender, EventArgs e)
    {
        string id, ps, ty, sq, an;
        id = TextBox1.Text;
        ps = TextBox2.Text;
        ty = TextBox3.Text;
        sq = DropDownList1.SelectedValue;
        an = TextBox4.Text;
        SqlConnection scon;
        SqlCommand scmd;
        try
        {
            scon = new SqlConnection("server=RAKSHA3112\\SQLEXPRESS;uid=sa;pwd=mypleasure;database=bankingdb");
            scon.Open();
            scmd = new SqlCommand("delete from users where Userid=@a and Pswd=@b and Usertype=@c;", scon);
            scmd.Parameters.AddWithValue("a", id);
            scmd.Parameters.AddWithValue("b", ps);
            scmd.Parameters.AddWithValue("c", ty);
            scmd.ExecuteNonQuery();
            Response.Write("Account Deleted Successfully");
            scon.Close();
            
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}