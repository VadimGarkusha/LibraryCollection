using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//VADYM HARKUSHA 300909484
public partial class BookDetailsPage : ThemeClass
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!((System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated))
        {
        books.Rows[9].Visible = false;
        }
    }


    //VADYM HARKUSHA 300909484
    protected void GridView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        Response.Redirect("~/Books.aspx");

    }


    protected void GridView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        books.DataBind();
    }
}
//VADYM HARKUSHA 300909484