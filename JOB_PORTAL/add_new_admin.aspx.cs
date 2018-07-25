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
    public partial class add_new_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            conn.Open();

            SqlCommand scmd = new SqlCommand();
            scmd.Connection = conn;
            scmd.CommandText = "insert into tb_admin(full_name,user_name,password,email,admin_add_date) values('" + txt_full_name.Text + "', '" + txt_user_name.Text + "', '" + txt_password.Text + "', '" + txt_email.Text + "', '" + DateTime.Now.ToString() + "')";
            scmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/Admin_login.aspx");
        }
    }
}