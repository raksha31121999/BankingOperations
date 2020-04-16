using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class SearchAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Submit(object sender, EventArgs e)
    {
        int no;
        no = Convert.ToInt32(TextBox1.Text);
        string nm;
        nm = TextBox2.Text;
        SqlConnection scon;
        SqlDataAdapter sda;
        SqlCommand scmd;
        DataSet ds;
        try
        {

            scon = new SqlConnection("server=RAKSHA3112\\SQLEXPRESS;uid=sa;pwd=mypleasure;database=bankingdb");
            scon.Open();
            scmd = new SqlCommand("select * from accounts where Accno=@a;", scon);
            scmd.Parameters.AddWithValue("a", no);
            
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds, "sac");

            if (ds.Tables["sac"].Rows.Count > 0)
                Session["nm"] = nm;
            string nma;
            nma = Convert.ToString(Session["nm"]);
            Label1.Text = "Logged in as : " + nma;
            GridView1.DataSource = ds;
            GridView1.DataBind();
            scon.Close();
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}