using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TransferAmountC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit(object sender, EventArgs e)
    {
        string no, tt, tno, tdt;
        int amt;
        no = TextBox1.Text;
        tt = DropDownList1.SelectedValue;
        amt = Convert.ToInt32(TextBox3.Text);
        tno = TextBox4.Text;
        tdt = TextBox5.Text;
        SqlConnection scon;
        SqlCommand scmd;
        try
        {
            scon = new SqlConnection("server=RAKSHA3112\\SQLEXPRESS;uid=sa;pwd=mypleasure;database=bankingdb");
            scon.Open();
            if(tt=="Deposit")
                scmd = new SqlCommand("update accounts set Balance=Balance+@b where Accno=@a ;", scon);
            else
                scmd = new SqlCommand("update accounts set Balance=Balance+@b where Accno=@a ;", scon);
            scmd.Parameters.AddWithValue("a", no);
            scmd.Parameters.AddWithValue("b", amt);
            scmd.ExecuteNonQuery();
                
            scmd = new SqlCommand("insert into acctransact values(@t1,@t2,@t3,@t4,@t5) ;", scon);
            scmd.Parameters.AddWithValue("t1", tno);
            scmd.Parameters.AddWithValue("t2", tdt);
            scmd.Parameters.AddWithValue("t3", no);
            scmd.Parameters.AddWithValue("t4", tt);
            scmd.Parameters.AddWithValue("t5", amt);
            int cnt=scmd.ExecuteNonQuery();
            if(cnt>0)
                 Label1.Text = "Amount Transferred Successfully";
            else
                Label1.Text = "Transfer Failed";
            scon.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
}