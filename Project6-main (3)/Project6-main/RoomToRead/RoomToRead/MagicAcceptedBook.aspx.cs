using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class MagicAcceptedBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string bookId = Request.QueryString["id"];
            Label1.Text = bookId;
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            // SqlConnection Con = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=project6; integrated security=SSPI");

            Con.Open();

            string query = $"update books set approve=1 where book_id= {bookId}";
            SqlCommand rolecommand = new SqlCommand(query, Con);
            rolecommand.ExecuteNonQuery();



            Con.Close();
          //  Response.Redirect("Admin_Books.aspx");

        }
    }
}