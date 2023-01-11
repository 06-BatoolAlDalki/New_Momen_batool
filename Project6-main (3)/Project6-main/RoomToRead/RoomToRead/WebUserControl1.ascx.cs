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
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
     
            SqlCommand comm;
            protected void Page_Load(object sender, EventArgs e)
            {
            string CONNectionString = ConfigurationManager.ConnectionStrings["DefaultCONNection"].ConnectionString;
            SqlConnection CONN = new SqlConnection(CONNectionString); SqlCommand comm;
            containervote.Style["display"] = "none";
            Button1.Style["Display"] = "none";
            int excellentcount, vergoodcount, goodcount, acceptcount, poorcount;
            vergoodcount = goodcount = acceptcount = poorcount = excellentcount = 0;
            if (Request.Cookies["Vote"] != null)
            {
                results.Visible = true;
                //Label2.Style["display"] = "block";
                //Label3.Style["display"] = "block";
                //Label4.Style["display"] = "block";
                //Label5.Style["display"] = "block";
                //Label6.Style["display"] = "block";
                RadioButtonList1.Style["Display"] = "none";

                CONN.Open();
                comm = new SqlCommand("Select vote from vote", CONN);
                SqlDataReader read = comm.ExecuteReader();
                while (read.Read())
                {

                    if (read[0].ToString() == "Very Good")
                    {
                        vergoodcount++;
                    }
                    else if (read[0].ToString() == "Good")
                    {
                        goodcount++;
                    }
                    else if (read[0].ToString() == "Accceptable")
                    {
                        acceptcount++;
                    }
                    else if (read[0].ToString() == "Poor")
                    {
                        poorcount++;
                    }
                    else
                    {
                        excellentcount++;

                    }

                }


            }
            else
            {

                Button1.Style["Display"] = "Block";
                containervote.Style["display"] = "Block";

            }
            CONN.Close();
            CONN.Open();

            comm = new SqlCommand("Select Count(*) from vote", CONN);
            int Votecount = (int)comm.ExecuteScalar();
            double ExeccelentCountPercent = (excellentcount * 100 / Votecount);
            double VeryGoodCountPercent = (vergoodcount * 100 / Votecount);
            double GoodCountPercent = (goodcount * 100 / Votecount);
            double acceptCountPercent = (acceptcount * 100 / Votecount);
            double PoorCountPercent = (poorcount * 100 / Votecount);
            CONN.Close();
            this.excellent1.Attributes.Add("aria-valuenow", (excellentcount * 100 / Votecount).ToString());
            this.excellent1.Attributes.Add("style", $"width:{(excellentcount * 100 / Votecount)}%");
            this.excellent1.InnerHtml = $"Excellent";
            this.vgood1.Attributes.Add("aria-valuenow", ((vergoodcount * 100 / Votecount) * 100).ToString());
            this.vgood1.Attributes.Add("style", $"width:{(vergoodcount * 100 / Votecount)}%");
            this.vgood1.InnerHtml = $"Very Good";
            this.good1.Attributes.Add("aria-valuenow", ((goodcount * 100 / Votecount) * 100).ToString());
            this.good1.Attributes.Add("style", $"width:{(goodcount * 100 / Votecount)}%");
            this.good1.InnerHtml = $"Good";
            this.Accebtable.Attributes.Add("aria-valuenow", (acceptcount * 100 / Votecount).ToString());
            this.Accebtable.Attributes.Add("style", $"width: {(acceptcount * 100 / Votecount)}%");
            this.Accebtable.InnerHtml = $"Accebtable";
            this.poor1.Attributes.Add("aria-valuenow", ((poorcount * 100 / Votecount) * 100).ToString());
            this.poor1.Attributes.Add("style", $"width:{(poorcount * 100 / Votecount)}%");
            this.poor1.InnerHtml = $"Poor";



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CONNectionString = ConfigurationManager.ConnectionStrings["DefaultCONNection"].ConnectionString;
            SqlConnection CONN = new SqlConnection(CONNectionString); SqlCommand comm;
            CONN.Open();
            string answer = RadioButtonList1.SelectedValue;
            HttpCookie cook = new HttpCookie("Vote");
            cook["uservote"] = RadioButtonList1.SelectedValue;
            cook.Expires= DateTime.Now.AddDays(90); 
            Response.Cookies.Add(cook);

            String Query = $"insert into vote(vote) Values('{RadioButtonList1.SelectedValue}')";
            comm = new SqlCommand(Query, CONN);
            comm.ExecuteNonQuery();
            CONN.Close();
            Page_Load(sender, e);
            containervote.Style["display"] = "none";
        }
    }
    }
