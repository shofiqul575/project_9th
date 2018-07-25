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
    public partial class admin_details_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["adminid"] != null)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
                conn.Open();

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = " delete from tb_Admin where Aid=" + Request.QueryString["adminid"].ToString() + "";
                scmd.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("~/admin_account.aspx");
            }
        }
    }
}