using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyMasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void MakeActiveSearch()
    {
        searchLink.Attributes["class"] = "active";
    }

    public void MakeActiveHome()
    {
        homeLink.Attributes["class"] = "active";
    }

    public void MakeActiveBooks()
    {
        booksLink.Attributes["class"] = "active";
    }

    public void MakeActiveAddBooks()
    {
        addBooksLink.Attributes["class"] = "active";
    }

    public void MakeActiveSetup()
    {
        setupLink.Attributes["class"] = "active";
    }
}
