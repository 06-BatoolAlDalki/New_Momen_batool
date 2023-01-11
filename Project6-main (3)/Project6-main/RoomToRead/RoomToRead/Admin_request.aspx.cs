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
    public partial class Admin_request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload fileUpload = GridView1.Rows[e.RowIndex].FindControl("FileUpload3") as FileUpload;
            //if(fileUpload.)
            fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), fileUpload.FileName));
            SqlDataSource1.UpdateParameters["catergoy_image"].DefaultValue = "img\\" + fileUpload.FileName;
            SqlDataSource1.Update();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            // SqlConnection Con = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=project6; integrated security=SSPI");

            Con.Open();

            string query = $"select count(category_id) from  category";
            SqlCommand rolecommand = new SqlCommand(query, Con);
            int id = Convert.ToInt32(rolecommand.ExecuteScalar()) + 2;
            Con.Close();

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);


            SqlDataSource1.InsertParameters["category_name"].DefaultValue = TextBox4.Text;
            SqlDataSource1.InsertParameters["category_description"].DefaultValue = TextBox2.Text;
            //SqlDataSource1.InsertParameters["category_id"].DefaultValue = Convert.ToString(id);

            //////////////////////////////////////////////////////////////////////////////////////////////



            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), FileUpload2.FileName));
                SqlDataSource1.InsertParameters["catergoy_image"].DefaultValue = "img\\" + FileUpload2.FileName;
            }
            else
            {
            }
            //SqlDataSource1.InsertParameters["catergoy_image"].DefaultValue = TextBox2.Text;
            SqlDataSource1.Insert();


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //TableCell cell = GridView1.Rows[e.RowIndex].Cells[2];
            //TableCell cell1 = GridView1.Rows[e.RowIndex].Cells[0];
            //Session["name"] = cell1.Text;
            //string path = Server.MapPath($"img/{cell.Text}");
            //File.Delete(path);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            add.Visible = true;
            editAnddelete.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            editAnddelete.Visible = true;
            add.Visible = false;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }
    }
}