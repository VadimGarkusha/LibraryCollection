using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

     protected void Page_Load(object sender, EventArgs e)
    {
        (this.Master as MyMasterPage).MakeActiveSetup();
    }
    //the idea was taken from msdn library
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Cookies["theme"] != null)
            Page.Theme = Request.Cookies["theme"].Value;
    }
    //the idea was taken from stackoverflow website>
    protected void btnChooseTheme_Click(object sender, EventArgs e)
    {
        Response.Cookies["theme"].Value = (rbtnDark.Checked) ? "Dark" : "Light";
        Response.Cookies["theme"].Expires = DateTime.Now.AddYears(5);
        Response.Redirect(Request.RawUrl);
    }
}