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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection CONN = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("SELECT* FROM category", CONN);
            CONN.Open();

            SqlDataReader reader = command.ExecuteReader();
            Label1.Text = "<div class=\"categoryBooks  containerlabel2-fluid\">";
            while (reader.Read())
            {


                Label1.Text += "<div class=\"card\">" +
                $"<img src='{reader[3]}' alt=\"Avatar\" style=\"width:100%\">" +
                $"<div class=\"containerlabel2label1\">\r\n    <h4><b>{reader[2]}</b></h4>" +
                $"<p>{reader[1]}</p>" +
                $"<p><a href=\"SingleCategory.aspx?category_id={reader[0]}&category_name={reader[1]}\" class=\"btn btn-info\">See Books</a></p>" +
                "</div></div>";

            }
            Label1.Text += "</div>";
            CONN.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection CONN = new SqlConnection(connectionString);
            Label2.Text = "";
            if (TextBox1.Text != string.Empty || TextBox1.Text != "" || TextBox1.Text != null)
            {
                string mycomm = $"select * from books where  book_name like '%{TextBox1.Text}%' or author like '%{TextBox1.Text}%' and taken=0 and approve=1";
                SqlCommand command = new SqlCommand(mycomm, CONN);
                CONN.Open();
                SqlDataReader reader = command.ExecuteReader();
                Label2.Text = $"<div id=\"large-th\"><div class=\"containerlabel2label2\">\r\n";
                while (reader.Read())
                {
                    Label2.Text += "<div class=\"book read\">" +
                        $"<div class=\"cover\"><img src='{reader[8]}'>" +
                        $"</div><div class=\"description\"><p class=\"title\">{reader[4]}<br>" +
                        $"<p class=\"parentdiv\"><span class=\"author\">author:{reader[9]}</span></p>" +
                        $"<p><a href =\"Singlebook.aspx?category_id={reader[0]}\" class=\"btn btn-info\">See More Details</a></p>" +
                        "</div></div>";
                }
                Label2.Text += "</div></div></div>";
                CONN.Close();
                Label1.Text = "";
            }
        }
    }
}