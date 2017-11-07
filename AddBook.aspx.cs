using System;
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
        (this.Master as MyMasterPage).MakeActiveAddBooks();
        if (rbtnLendedToFriendNo.Checked)
        {
            txtNameFriend.Enabled = false;
            reqFieldNameFriend.Enabled = false;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        AddBookControl.TxtNameOfBook.Text = string.Empty;

        AddBookControl.TxtAuthor.Text = string.Empty;
        AddBookControl.TxtIsbn.Text = string.Empty;
        txtNumberOfPages.Text = string.Empty;
        txtNameFriend.Text = string.Empty;
        txtComment.Text = string.Empty;
        ddListGenre.SelectedIndex = 0;

       /* rbtnLendedToFriendNo.Checked = true;
        txtNameFriend.Enabled = false;
        reqFieldNameFriend.Enabled = false;*/
    }

    protected void rbtnLendedToFriendYes_CheckedChanged(object sender, EventArgs e)
    {
        if(rbtnLendedToFriendYes.Checked)
        {
            txtNameFriend.Enabled = true;
            reqFieldNameFriend.Enabled = true;
        }
        else
        {
            txtNameFriend.Enabled = false;
            reqFieldNameFriend.Enabled = false;
        }
        

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //get student 
            Book aBook = new Book(AddBookControl.TxtNameOfBook.Text, AddBookControl.TxtAuthor.Text, AddBookControl.TxtIsbn.Text, ddListGenre.SelectedValue, Convert.ToInt32(txtNumberOfPages.Text), LendedToFriendStatus(),txtNameFriend.Text, txtComment.Text);
            //add student to collection
            BookCollection bookList = Session["studentList"] as BookCollection;
            if (bookList == null)
            {
                bookList = new BookCollection();
                Session["studentList"] = bookList;
            }
            //add student
            bookList.Add(aBook);
        }

        Response.Redirect("Books.aspx");
    }

    private string LendedToFriendStatus()
    {
        if (rbtnLendedToFriendYes.Checked)
            return "yes";
        else
            return "no";
    }


}