using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class chartNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            // SqlConnection Con = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=project6; integrated security=SSPI");

            Con.Open();

            string takenBook = $"select COUNT(taken) from books";
            SqlCommand rolecommand = new SqlCommand(takenBook, Con);
            int id = Convert.ToInt32(rolecommand.ExecuteScalar());
            Label1.Text = Convert.ToString(id);
            int tak = Convert.ToInt32(Label1.Text);
            //Label9.Width = Convert.ToInt32(tak * 10);
            //Label9.Text = Convert.ToString(id);

            //////////////////////////////////////////////////////////////////////////////////////////////
            string totalBook = $"select COUNT(*) from books";
            SqlCommand rolecommand1 = new SqlCommand(totalBook, Con);
            int id1 = Convert.ToInt32(rolecommand1.ExecuteScalar());
            Label2.Text = Convert.ToString(id);
            int tol = Convert.ToInt32(Label2.Text);
            //Label10.Width = Convert.ToInt32(tol * 10);
            //Label10.Text = Convert.ToString(tol);
            ////////////////////////////////////////////////////////////////////////////////////////////
            string category = $"select COUNT(*) from category";
            SqlCommand rolecommand2 = new SqlCommand(category, Con);
            int id2 = Convert.ToInt32(rolecommand2.ExecuteScalar());
            Label3.Text = Convert.ToString(id2);

            int cat = Convert.ToInt32(Label3.Text);
            //Label19.Width = Convert.ToInt32(cat * 10);
            //Label19.Text = Convert.ToString(cat);

            /////////////////////////////////////////////////////////////////////////////

            double books = (id / id1);
            double booksPer = (books * 100);
            //Label4.Text = Convert.ToString(booksPer + "%");



            string donator = $"select count(*) from AspNetUserRoles where RoleId=2\r\n";
            SqlCommand rolecommand3 = new SqlCommand(donator, Con);
            int id3 = Convert.ToInt32(rolecommand3.ExecuteScalar());
            Label5.Text = Convert.ToString(id3);
            int role2 = Convert.ToInt32(Label5.Text);
            //Label11.Width = Convert.ToInt32(role2 * 10);
            //Label11.Text = Convert.ToString(id3);

            ////////////////////////////////////////////////////////////////////////////////////////////////////////


            string ordinary_users = $"select count(*) from AspNetUserRoles where RoleId=3\r\n";
            SqlCommand rolecommand4 = new SqlCommand(ordinary_users, Con);
            int id4 = Convert.ToInt32(rolecommand4.ExecuteScalar());
            Label6.Text = Convert.ToString(id4);
            int role3 = Convert.ToInt32(Label6.Text);
            //Label12.Width = Convert.ToInt32(role3 * 10);
            //Label12.Text = Convert.ToString(id4);
            ////////////////////////////////////////////////////////////////////////////////////////////////////////

            string totsl_users = $"select count(*) from AspNetUsers\r\n";
            SqlCommand rolecommand5 = new SqlCommand(totsl_users, Con);
            int id5 = Convert.ToInt32(rolecommand5.ExecuteScalar());
            //Label7.Text = Convert.ToString(id);
            //int totl = Convert.ToInt32(Label7.Text);
            //Label13.Width = Convert.ToInt32(totl * 10);
            //Label13.Text = Convert.ToString(id5);
            ////////////////////////////////////////////////////////////////////////////////////////////////////////

            double donator1 = (id3 / id5);
            double donate_user = (donator1 * 100);
            //Label8.Text = Convert.ToString(donate_user + "%");
          
            double ordinary_user = (id4 / id5);
            double ordinary = (ordinary_user * 100);
            //Label8.Text = Convert.ToString(ordinary + "%");
            Con.Close();

        }
    }
}