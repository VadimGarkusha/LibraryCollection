using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBook : System.Web.UI.UserControl
{
    public TextBox TxtNameOfBook
    {
        set { txtNameOfBook = value; }
        get { return txtNameOfBook; }
    }

    public TextBox TxtAuthor
    {
        set { txtAuthor = value; }
        get { return txtAuthor; }
    }
    public TextBox TxtIsbn
    {
        set { txtIsbn = value; }
        get { return txtIsbn; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}