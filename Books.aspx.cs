using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//VADYM HARKUSHA 300909484
public partial class Default2 : ThemeClass
{

    protected void Page_Load(object sender, EventArgs e)
    {
        (this.Master as MyMasterPage).MakeActiveBooks();

        //if (!IsPostBack)
        //{
        //    BindList();
        //}
    }


    //VADYM HARKUSHA 300909484
    protected void Unnamed1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("~//BookDetailsPage.aspx?cat=" + e.CommandArgument);
    }
}
//VADYM HARKUSHA 300909484