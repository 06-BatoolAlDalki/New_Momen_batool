using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class UserEDIT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlConnection con = null;
                SqlConnection con2 = null;
                try
                {
                    // Creating Connection  

                    con = new SqlConnection("data source= DESKTOP-B9B8CS7; database=RoomToRead; integrated security=SSPI");
                    con2 = new SqlConnection("data source= DESKTOP-B9B8CS7; database=RoomToRead; integrated security=SSPI");

                    // writing sql query  
                    SqlCommand cm = new SqlCommand($"Select * from AspNetUsers  where id = {Session["userId"]}", con);
                    //SqlCommand cm2 = new SqlCommand($"select * from orders where orders.user_id = {Session["userId"]}", con2);

                    // Opening Connection  
                    con.Open();
                    // Executing the SQL query  
                    SqlDataReader sdr = cm.ExecuteReader();
                    // Iterating Data  
                    while (sdr.Read())
                    {
                        //product_id = Convert.ToInt32(sdr[0]);

                        //userContainer.InnerHtml = $"<div  > <span> email:{sdr[2]}</span> </div>";
                        //name1.InnerHtml = $"  {sdr[1]}";

                        img.InnerHtml = $" <img class=\"rounded-circle img-fluid shadow p-2 mb-3 bg-#f6d365 rounded\"  style=\"width: 170px ; height:170px\"  ;   border: solid 8px #F24726!important\";  src='{sdr[14]}' /> ";
                        TextBox4.Text = $"{sdr[1]}";
                        TextBox6.Text = $"{sdr[15]}";
                        TextBox3.Text = $"{sdr[5]}";


                    }
                    //con2.Open();
                    //SqlDataReader sdr2 = cm2.ExecuteReader();
                    //// Iterating Data  
                    //while (sdr2.Read())
                    //{
                    //    cartContainer.InnerHtml += $"<div class='cartBox' > <span class='details'>{sdr2[1]}</span><span><a class='details1' href='order.aspx?id={sdr2[0]}'>view</a></span> </div>\r\n";
                    //}



                }
                catch (Exception S)
                {
                    Console.WriteLine("OOPs, something went wrong.\n" + S);
                    //Label1.Text = "OOPs, something went wrong.\n" + S;
                }
                // Closing the connection  
                finally
                {
                    con.Close();
                }

            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (Path.GetFileName(FileUpload1.FileName) != null && Path.GetFileName(FileUpload1.FileName) != "")
                {
                    string folderPath = Server.MapPath("~/Images/");

                    //Check whether Directory (Folder) exists.
                    if (!Directory.Exists(folderPath))
                    {
                        //If Directory (Folder) does not exists Create it.
                        Directory.CreateDirectory(folderPath);
                    }

                    //Save the File to the Directory (Folder).
                    string fullPath = folderPath + Path.GetFileName(FileUpload1.FileName);
                    string srcPath = "/Images/" + Path.GetFileName(FileUpload1.FileName);

                    FileUpload1.SaveAs(fullPath);
                    //Image1.ImageUrl = srcPath;
                }



                uploadToDatabase();
                Response.Redirect($"user.aspx?id={Request.QueryString["id"]}");


            }
            catch (Exception S) { }
        }
        protected void Page_Load()
        {
        }

        public void uploadToDatabase()
        {

            SqlConnection con = null;
            SqlConnection con2 = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection("data source=DESKTOP-B9B8CS7; database=RoomToRead; integrated security=SSPI");
                con2 = new SqlConnection("data source=DESKTOP-B9B8CS7; database=RoomToRead; integrated security=SSPI");
                // writing sql query  
                string name = TextBox1.Text + " " + TextBox2.Text;
                SqlCommand cm = null;
                if (Path.GetFileName(FileUpload1.FileName) != null && Path.GetFileName(FileUpload1.FileName) != "")
                {
                    cm = new SqlCommand($"update AspNetUsers set  First_Name = '{TextBox1.Text}' ,  Last_Name = '{TextBox2.Text}',PhoneNumber={TextBox3.Text}, user_Image = 'Images/{Path.GetFileName(FileUpload1.FileName)}' where id = {Session["userId"]}", con);

                }
                else
                {
                    cm = new SqlCommand($"update AspNetUsers set  First_Name = '{TextBox1.Text}' ,  Last_Name = '{TextBox2.Text}',PhoneNumber={TextBox3.Text} where id = {Session["userId"]}", con);

                }
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();
                // Displaying a message  
                Console.WriteLine("Record Inserted Successfully");
                con.Close();

                con2.Open();
                SqlCommand cm2 = new SqlCommand($"select * from Books where user_id = {Session["userId"]}", con2);


                SqlDataReader sd = cm2.ExecuteReader();

                if (sd[1].ToString() == Session["userId"].ToString())
                {

                    your.InnerText = "Your Donated books";
                }
                else
                {
                    your.InnerText = " Book obtained";
                }

            }
            catch (Exception A)
            {
                Console.WriteLine("OOPs, something went wrong." + A);
                //Label1.Text = "OOPs, something went wrong." + A;
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("qq");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("user");
        }
    }
}