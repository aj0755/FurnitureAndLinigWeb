﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnShopNowBanner_Click(object sender, EventArgs e)
    {

    }
    protected void btnReadMoreAbout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Aboutus.aspx");
    }
}