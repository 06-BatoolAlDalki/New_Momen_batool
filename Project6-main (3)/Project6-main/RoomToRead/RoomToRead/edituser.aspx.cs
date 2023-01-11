using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class edituser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"SELECT U.id ,PhoneNumber,Email,C.city_name,firstname, lastname, user_image, birthofdate, user_address,A.Name,C.city_id FROM AspNetUsers AS U JOIN AspNetUserRoles AS R ON U.Id=R.UserId JOIN AspNetRoles AS A ON A.Id=R.RoleId  join city As C on U.city_id=C.city_id where U.id='{id}'";
                SqlCommand rolecommand = new SqlCommand(query, Con);

                SqlDataReader read = rolecommand.ExecuteReader();

                Response.Write(id);
                while (read.Read())
                {
                    PhoneNumber.Text = read[1].ToString();
                    Email.Text = read[2].ToString();
                    FirstName.Text = read[4].ToString();
                    LastName.Text = read[5].ToString();
                    Image1.ImageUrl = read[6].ToString();
                    Address.Text = read[8].ToString();
                    City.SelectedValue = read[10].ToString();
                    Session["Imagealt"] = read[6].ToString();

                }
                Con.Close();
                Con.Open();
                SqlCommand command = new SqlCommand("select  city_name,city_id from city", Con);
                SqlDataAdapter adapt = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapt.Fill(dt);
                City.DataSource = dt;
                City.DataTextField = "city_name";
                City.DataValueField = "city_id";
                City.DataBind();
                SqlDataReader rd = command.ExecuteReader();



            }

        }

        protected void addedit_Click(object sender, EventArgs e)
        {


            string id = Request.QueryString["id"];
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();

            string image1;
            if (FileUpload1.HasFile)
            {

                string folderpath = Server.MapPath("~/Images/");
                if (!Directory.Exists(folderpath))
                {
                    Directory.CreateDirectory(folderpath);
                }
                FileUpload1.SaveAs(folderpath + FileUpload1.FileName);
                Image1.ImageUrl = "Images/" + FileUpload1.FileName;
                image1 = "Images/" + FileUpload1.FileName;


            }

            else
            {
                image1 = Session["Imagealt"].ToString();
            }
            Con.Close();
            Con.Open();
            string query = $"update AspNetUsers set PhoneNumber='{PhoneNumber.Text}',Email='{Email.Text}',firstname='{FirstName.Text}',lastname='{LastName.Text}',user_address='{Address.Text}',city_id={City.SelectedValue},user_image='{image1}' where id='{id}'";
            SqlCommand command = new SqlCommand(query, Con);
            command.ExecuteNonQuery();
            Response.Redirect("UsersInadminDashboard.aspx");
            Con.Close();


        }
    }
}