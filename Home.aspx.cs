﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Cookies["theme"] != null)
            Page.Theme = Request.Cookies["theme"].Value;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        (this.Master as MyMasterPage).MakeActiveHome();
    }
}