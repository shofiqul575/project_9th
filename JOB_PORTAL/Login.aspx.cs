using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace JOB_PORTAL
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null) {
                if (Request.QueryString["id"] == "registor") {
                    lbl_alert.Text = "Registation Successfully Complete...!";
                }
            }
            if (!IsPostBack)
            {
                if (Request.Cookies["Uname"] != null && Request.Cookies["password"] != null)
                {
                    txt_uname.Text = Request.Cookies["Uname"].Value;
                    txt_pass.Attributes["value"] = Request.Cookies["password"].Value;
                }
            }
        }

        protected void btn_create_account_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserRegister.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (ckbox_remember.Checked)
            {
                Response.Cookies["Uname"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["Uname"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Cookies["Uname"].Value = txt_uname.Text.Trim();
            Response.Cookies["password"].Value = txt_pass.Text.Trim();

            if (txt_uname.Text != string.Empty && txt_pass.Text != string.Empty)
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
                conn.Open();

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = "select password from tb_User where Uname='" + txt_uname.Text + "'";
                SqlDataReader sdr;
                sdr = scmd.ExecuteReader();

                if (sdr.Read())
                {

                    string pass = sdr["password"].ToString();
                    if (pass == txt_pass.Text)
                    {
                        Page.Session.Add("user", txt_uname.Text);
                        Page.Session.Timeout = 20;
                        Response.Redirect("~/UserProfile.aspx? id=Seeker_profile ");
                    }
                }

                conn.Close();
            }
            else
            {
                lbl_alert.Text = "Invalid User Name and Password";
                txt_uname.Focus();
            }

        }
    }
}