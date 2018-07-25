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
    public partial class Reset_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            //if (Request.QueryString["id"]=="seeker_login")
            //{

               
            //    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            //    conn.Open();

            //    SqlCommand scmd = new SqlCommand();
            //    scmd.Connection = conn;
            //    scmd.CommandText = "update tb_User set password='" + txt_new_pass.Text + "' where Uid=" + Request.QueryString["id"].ToString() + "";
            //    //SqlDataReader sdr;
            //    scmd.ExecuteNonQuery();
            //    //if (sdr.Read())
            //    //{

            //    //    string email = sdr["E_mail"].ToString();
            //    //    if (email == txt_email.Text)
            //    //    {
                       
            //    //    }
            //    //}
            //    conn.Close();

            //    lblMessage.Text = "Password Reset Succesfully";
            //    lblMessage.ForeColor = System.Drawing.Color.Green;
            //}
        }
    }
}