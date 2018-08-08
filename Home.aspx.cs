using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//VADYM HARKUSHA 300909484
public partial class _Default : ThemeClass
{
    //protected void Page_PreInit(object sender, EventArgs e)
    //{
    //    if (Request.Cookies["theme"] != null)
    //        Page.Theme = Request.Cookies["theme"].Value;
    //}

    //VADYM HARKUSHA 300909484
    protected void Page_Load(object sender, EventArgs e)
    {
        (this.Master as MyMasterPage).MakeActiveHome();
    }
}
//VADYM HARKUSHA 300909484