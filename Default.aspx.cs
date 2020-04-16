using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit(object sender, EventArgs e)
    {
        string id, ps,ty,nm;
        id = TextBox1.Text;
        ps = TextBox2.Text;
        nm = TextBox3.Text;
        ty = DropDownList1.SelectedValue;
        SqlConnection scon;
        SqlDataAdapter sda;
        SqlCommand scmd;
        DataSet ds;
        scon = new SqlConnection("server=RAKSHA3112\\SQLEXPRESS;uid=sa;pwd=mypleasure;database=bankingdb");
        scmd = new SqlCommand("select * from users where Userid=@a and Pswd=@b and Usertype=@c and Username=@d;",scon);
        scmd.Parameters.AddWithValue("a", id);
        scmd.Parameters.AddWithValue("b", ps);
        scmd.Parameters.AddWithValue("c", ty);
        scmd.Parameters.AddWithValue("d", nm);
        sda = new SqlDataAdapter(scmd);
        ds = new DataSet();
        sda.Fill(ds, "p");
        if (ty=="Manager")
        {
            Session["nm"] = nm;
            Response.Redirect("Manager.aspx");
        }
        else
            
        if (ty=="Cashier") 
        {
            Session["nm"] = nm;
            Response.Redirect("Cashier.aspx");
        }
        else
            if(ty=="Customer")
        {
            Session["nm"] = nm;
            Response.Redirect("Customer.aspx");
        }
        else
            Response.Redirect("Failure.aspx");
                
    }



    protected void Check(object sender, EventArgs e)
    {
        string id;
        id = TextBox1.Text;
        SqlConnection scon;
        SqlDataAdapter sda;
        SqlCommand scmd;
        DataSet ds;
        scon = new SqlConnection("server=RAKSHA3112\\SQLEXPRESS;uid=sa;pwd=mypleasure;database=bankingdb");
        scmd = new SqlCommand("select * from users where Userid=@a ;", scon);
        scmd.Parameters.AddWithValue("a", id);
        sda = new SqlDataAdapter(scmd);
        ds = new DataSet();
        sda.Fill(ds, "acc");
        if (ds.Tables["acc"].Rows.Count >0)
        {
            Label1.Text= "Userid Matched";
        }
        else
            Response.Redirect("Failure.aspx");
    }
}