using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AccountStatement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
        SqlConnection scon;
        SqlCommand scmd;
        SqlDataAdapter sda;
        DataSet ds;
        try
        {
            scon = new SqlConnection("server=RAKSHA3112\\SQLEXPRESS;uid=sa;pwd=mypleasure;database=bankingdb");
            scmd = new SqlCommand("select * from acctransact where Transdate between '2020-01-01' and '2020-04-20';", scon);
            sda = new SqlDataAdapter(scmd);
            ds = new DataSet();
            sda.Fill(ds, "us");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}