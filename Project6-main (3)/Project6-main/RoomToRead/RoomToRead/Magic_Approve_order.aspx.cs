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
    public partial class Magic_Approve_order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string bookId = Request.QueryString["book_id"];
            //Label1.Text = bookId;
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            // SqlConnection Con = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=project6; integrated security=SSPI");

            Con.Open();

            string query = $"update books set taken = 1 where book_id={bookId}";
            SqlCommand rolecommand = new SqlCommand(query, Con);
            rolecommand.ExecuteNonQuery();



            string query1 = $"update orders set approve= 1 where book_id={bookId}";
            SqlCommand rolecommand1 = new SqlCommand(query, Con);
            rolecommand1.ExecuteNonQuery();
            Con.Close();
            Response.Redirect("Order_Admin.aspx");

        }
    }
}