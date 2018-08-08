using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//VADYM HARKUSHA 300909484
/// <summary>
/// Summary description for ThemeClass
/// </summary>
public abstract class ThemeClass : System.Web.UI.Page
{//VADYM HARKUSHA 300909484
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Cookies["theme"] != null)
            Page.Theme = Request.Cookies["theme"].Value;
    }
}
//VADYM HARKUSHA 300909484