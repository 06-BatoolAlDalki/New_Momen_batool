using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!string.IsNullOrEmpty(Session["userId"] as string))

            //{
            //    UserProfile.Visible = true;
            //    LogOut.Visible = true;
            //    LogIn.Visible = false;

            //}
        }
        protected void Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void RequestBook(object sender, EventArgs e)
        {


            if (string.IsNullOrEmpty(Session["userId"] as string))

            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                //try
                //{

                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                // SqlConnection Con = new SqlConnection("data source=DESKTOP-V50HPE1\SQLEXPRESS; database=project6; integrated security=SSPI");

                Con.Open();
                string date = DateTime.Now.ToShortDateString();
                string id = Session["userId"].ToString();
                int book_id = Convert.ToInt32(Request.QueryString["id"]);
                string q = "select count(order_id) from orders\r\n";
                SqlCommand rolecommand1 = new SqlCommand(q, Con);
                int countOrders = Convert.ToInt32(rolecommand1.ExecuteScalar()) + 2;
                string query = $"insert into orders (Book_id,request_date,User_id,Approve) values ({book_id},'{date}','{id}' ,{0})";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                Response.Redirect("Home.aspx");
                //}
                //catch (Exception ex)
                //{
                //    Response.Write(ex.Message);
                //}
            }

        }
    }
}