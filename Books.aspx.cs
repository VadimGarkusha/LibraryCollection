using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Cookies["theme"] != null)
            Page.Theme = Request.Cookies["theme"].Value;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        (this.Master as MyMasterPage).MakeActiveBooks();

         BookCollection booklist = Session["studentList"] as BookCollection;
        if (booklist == null)
        {
            listBooks.Text = "<br/><br/><p style='font-size: 1.5em;'><code>There are no books in the list</code></p>" + "<i class='fa fa-exclamation-triangle' aria-hidden='true'></i>";
        }
        else
        {
            StringBuilder table = new StringBuilder();
            table.Append("<table  class='table table-striped books'><tr><th>Title</th><th>Author</th><th>ISBN</th></tr>");

            foreach (var aBook in booklist.GetAllBooks())
            {
                table.Append("<tr><td>" + aBook.Name + "</td><td>" + aBook.Author +"</td><td>"+ aBook.Isbn + "</td></tr>");
            }

            table.Append("</table>");
            listBooks.Text = table.ToString();
        }
    }
}