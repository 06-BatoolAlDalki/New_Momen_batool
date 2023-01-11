using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using RoomToRead.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {


                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                //signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                PlaceHolder1.Visible = false;

                personalInfo.Visible = true;
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }

        }
        protected void Register(object sender, EventArgs e)
        {

            string email = Email.Text;
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            SqlCommand getId = new SqlCommand($"select id from aspnetusers where email='{email}'", Con);
            string id = getId.ExecuteScalar().ToString();
            string folderpath = Server.MapPath("Images/");
            FileUpload1.SaveAs(folderpath + Path.GetFileName(FileUpload1.FileName));

            string query = $"update AspNetUsers set PhoneNumber=@Phone, firstname=@firstname,lastname=@lastName,user_address=@Address,city_id={City.SelectedValue},user_Image='{FileUpload1.FileName}' where id='{id}';";
            SqlCommand insetPersonalInfo = new SqlCommand(query, Con);
            insetPersonalInfo.Parameters.AddWithValue("@Phone", Phone.Text);
            insetPersonalInfo.Parameters.AddWithValue("@firstName", firstName.Text);
            insetPersonalInfo.Parameters.AddWithValue("@lastName", lastName.Text);
            insetPersonalInfo.Parameters.AddWithValue("@Address", Address.Text);
            insetPersonalInfo.ExecuteNonQuery();
            SqlCommand insert_role = new SqlCommand($"insert into AspNetUserRoles values('{id}',{RadioButtonList2.SelectedValue}) ", Con);
            insert_role.ExecuteNonQuery();
            Con.Close();
            Response.Redirect("LoginPage.aspx");
        }
    }
}