using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//VADYM HARKUSHA 300909484
public partial class Default2 : ThemeClass
{
    protected void Page_Load(object sender, EventArgs e)
    {
       (this.Master as MyMasterPage).MakeActiveSearch();
        if (!((System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated))
        {
            txtGenre.Visible = false;
            btnAddGenre.Visible = false;
            lblError.Visible = false;
            lblAddGenre.Text = "Please Log In in order to add Genres!";
        }
    }
    //VADYM HARKUSHA 300909484

    protected void btnAddGenre_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {

            SqlConnection conn;
            SqlCommand comm;

            string connectionString = ConfigurationManager.ConnectionStrings["LibraryCollection"].ConnectionString;
            conn = new SqlConnection(connectionString);

            string sqlSrting = "insert into Genres (GenreID,GenreName)" +
                "values ((select MAX(GenreID) from Genres)+1,@GenreName);";
            comm = new SqlCommand(sqlSrting, conn);

            comm.Parameters.Add("@GenreName", System.Data.SqlDbType.VarChar, 25);
            comm.Parameters["@GenreName"].Value = txtGenre.Text;
            // Enclose database code in Try-Catch-Finally
            try
            {
                // Open the connection
                conn.Open();
                // Execute the command
                comm.ExecuteNonQuery();
                // Reload page if the query executed successfully
                Response.Redirect(Request.RawUrl);
            }
            catch (SqlException ex)
            {
                // Display error message
                //lblError.Text =
                //    "Error submitting the help desk request! Please " +
                //    "try again later, and/or change the entered data!";
            }
            finally
            {
                // Close the connection
                conn.Close();
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        // LibraryCollection.SelectCommand += " AND ((BookTitle like '%l' + @SearchValue + '%') or(BookAuthor like '%l' + @SearchValue + '%'))";
        gvSearchResult.DataBind();
    }

}
//VADYM HARKUSHA 300909484