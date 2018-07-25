using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace JOB_PORTAL
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txt_news.Text != string.Empty)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
                conn.Open();

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = "insert into Newsletter( E_mail) values('" + txt_news.Text + "')";
                scmd.ExecuteNonQuery();
                conn.Close();

                lbl_thank.Text = "Thanks For Subscribe To Our Web Site";
                lbl_error.Text = "";
            }
            else {
                lbl_error.Text="Enter Your Valid Email Address";
                lbl_thank.Text = "";
                txt_news.Focus();
            }
            txt_news.Text = string.Empty;
        }
    }
}