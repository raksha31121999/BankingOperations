﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cashier : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string unm;
        unm = Convert.ToString(Session["nm"]);
        Label1.Text = "Logged in As : " + unm;

    }
}