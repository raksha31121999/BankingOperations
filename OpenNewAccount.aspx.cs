using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class OpenNewAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit(object sender, EventArgs e)
    {
        string no, nm , ty, bal,od,sq,an,mo;
        no = TextBox1.Text;
        nm = TextBox2.Text;
        ty = DropDownList1.SelectedValue;
        bal = TextBox3.Text;
        
        od = TextBox5.Text;
        sq = DropDownList2.SelectedValue;
        an = TextBox6.Text;
        mo = TextBox4.Text;
        SqlConnection scon;
        SqlCommand scmd;
        
        try
        {

            scon = new SqlConnection("server=RAKSHA3112\\SQLEXPRESS;uid=sa;pwd=mypleasure;database=bankingdb");
            scon.Open();
            scmd = new SqlCommand("exec newacc @a,@b,@c,@d,@e,@f,@g,@h;", scon);
            scmd.Parameters.AddWithValue("a", no);
            scmd.Parameters.AddWithValue("b", nm);
            scmd.Parameters.AddWithValue("c", ty);
            scmd.Parameters.AddWithValue("d", bal);
            scmd.Parameters.AddWithValue("e", od);
            scmd.Parameters.AddWithValue("f", sq);
            scmd.Parameters.AddWithValue("g", an);
            scmd.Parameters.AddWithValue("h", mo);
            scmd.ExecuteNonQuery();
            Response.Redirect("RegSuccessM.aspx");
            scon.Close();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}