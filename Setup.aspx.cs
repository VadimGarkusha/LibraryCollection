using System;
using System.Configuration;
using System.Web.Configuration;
using System.Web.UI;
//VADYM HARKUSHA 300909484
public partial class _Default : ThemeClass
{

    protected void Page_Load(object sender, EventArgs e)
    {
        (this.Master as MyMasterPage).MakeActiveSetup();

    }
    //VADYM HARKUSHA 300909484

    protected void btnChooseTheme_Click(object sender, EventArgs e)
    {

        Response.Cookies["theme"].Value = (rbtnDark.Checked) ? "Dark" : "Light";
        Response.Cookies["theme"].Expires = DateTime.Now.AddYears(5);

        Response.Redirect(Request.RawUrl);

    }
}
//VADYM HARKUSHA 300909484