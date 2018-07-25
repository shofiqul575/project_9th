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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btn_login_Click(object sender, EventArgs e)
        //{
        //    if (txt_A_uname.Text != string.Empty && txt_A_password.Text != string.Empty)
        //    {
        //        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
        //        conn.Open();

        //        SqlCommand scmd = new SqlCommand();
        //        scmd.Connection = conn;
        //        scmd.CommandText = "select password from tb_admin where user_name='" + txt_A_uname.Text + "'";
        //        SqlDataReader sdr;
        //        sdr = scmd.ExecuteReader();

        //        if (sdr.Read())
        //        {

        //            string pass = sdr["password"].ToString();
        //            if (pass == txt_A_password.Text)
        //            {
        //                Page.Session.Add("admin", txt_A_uname.Text);
        //                Page.Session.Timeout = 20;
        //                Response.Redirect("~/admin_access.aspx");
        //            }
        //        }
        //        conn.Close();
        //    }
        //    else
        //    {
        //        lbl_err_msg.Text = "Invalid user Name and Password";
        //        lbl_err_msg.ForeColor = System.Drawing.Color.Red;
        //        txt_A_uname.Focus();
                
        //    }
        //}
    }
}