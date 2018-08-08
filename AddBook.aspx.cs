using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//VADYM HARKUSHA 300909484
public partial class _Default : ThemeClass
{
    protected void Page_Load(object sender, EventArgs e)
    {
        (this.Master as MyMasterPage).MakeActiveAddBooks();
        if (rbtnLendedToFriendNo.Checked)
        {
            txtNameFriend.Enabled = false;
            reqFieldNameFriend.Enabled = false;
        }
    }
    //VADYM HARKUSHA 300909484
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

                SqlConnection conn;
                SqlCommand comm;

                string connectionString = ConfigurationManager.ConnectionStrings["LibraryCollection"].ConnectionString;
                conn = new SqlConnection(connectionString);

                string sqlSrting = "insert into Books (BookTitle, BookAuthor, Isbn, GenreID, NumberOfPages, LandedStatus, NameOfFriend, Comment)" +
                    "values (@BookTitle, @BookAuthor, @Isbn, @GenreID, @NumberOfPages, @LandedStatus, @NameOfFriend, @Comment);";
                comm = new SqlCommand(sqlSrting, conn);

                comm.Parameters.Add("@BookTitle", System.Data.SqlDbType.VarChar, 50);
                comm.Parameters["@BookTitle"].Value = AddBookControl.TxtNameOfBook.Text;
                comm.Parameters.Add("@BookAuthor", System.Data.SqlDbType.VarChar, 25);
                comm.Parameters["@BookAuthor"].Value = AddBookControl.TxtAuthor.Text;
                comm.Parameters.Add("@Isbn", System.Data.SqlDbType.VarChar, 50);
                comm.Parameters["@Isbn"].Value = AddBookControl.TxtIsbn.Text;
                comm.Parameters.Add("@GenreID", System.Data.SqlDbType.Int);
                comm.Parameters["@GenreID"].Value = ddListGenre.SelectedValue;
                comm.Parameters.Add("@NumberOfPages", System.Data.SqlDbType.Int);
                comm.Parameters["@NumberOfPages"].Value = Convert.ToInt32(txtNumberOfPages.Text);
                comm.Parameters.Add("@LandedStatus", System.Data.SqlDbType.TinyInt);
                comm.Parameters["@LandedStatus"].Value = LendedToFriendStatus();
                comm.Parameters.Add("@NameOfFriend", System.Data.SqlDbType.NVarChar, 50);
                comm.Parameters["@NameOfFriend"].Value = txtNameFriend.Text;
                comm.Parameters.Add("@Comment", System.Data.SqlDbType.Text);
                comm.Parameters["@Comment"].Value = txtComment.Text;
                // Enclose database code in Try-Catch-Finally
                try
                {
                    // Open the connection
                    conn.Open();
                    // Execute the command
                    comm.ExecuteNonQuery();
                    // Reload page if the query executed successfully
                    Response.Redirect("~/Books.aspx");
                }
                catch (SqlException ex)
                {
                    // Display error message
                    lblError.Text =
                        "Error submitting the help desk request! Please " +
                        "try again later, and/or change the entered data!";
                }
                finally
                {
                    // Close the connection
                    conn.Close();
                }
            }
        

    }

    private byte LendedToFriendStatus()
    {
        if (rbtnLendedToFriendYes.Checked)
            return 1;
        else
            return 0;
    }


}
//VADYM HARKUSHA 300909484