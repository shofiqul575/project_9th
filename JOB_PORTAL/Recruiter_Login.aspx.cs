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
    public partial class Recruiter_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["R_Name"] != null && Request.Cookies["password"] != null)
                {
                    txt_Rname.Text = Request.Cookies["R_Name"].Value;
                    txt_pass.Attributes["value"] = Request.Cookies["password"].Value;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RecruiterRegister.aspx");
        }

        protected void btn_recru_login_Click(object sender, EventArgs e)
        {

        }

        protected void btn_recru_login_Click1(object sender, EventArgs e)
        {
            if (ck_remember.Checked)
            {
                Response.Cookies["R_Name"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["R_Name"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Cookies["R_Name"].Value = txt_Rname.Text.Trim();
            Response.Cookies["password"].Value = txt_pass.Text.Trim();

            if (txt_Rname.Text != string.Empty && txt_pass.Text != string.Empty)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
                conn.Open();

                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = "select password from tb_Recruiter where R_Name='" + txt_Rname.Text + "'";
                SqlDataReader sdr;
                sdr = scmd.ExecuteReader();

                if (sdr.Read())
                {

                    string pass = sdr["password"].ToString();
                    if (pass == txt_pass.Text)
                    {
                        Page.Session.Add("Recruiter", txt_Rname.Text);
                        Page.Session.Timeout = 20;
                        Response.Redirect("~/Recruiter_Profile.aspx? id=Employeer_profile");
                    }
                }
                conn.Close();
            }
            else
            {
                lbl_err.Text = "Invalid Recruiter Name and Password";
                txt_Rname.Focus();
            }
            
        }
    }
}