using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace JOB_PORTAL
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtEmail.Text != "" && txt_subject.Text != "" && txtComments.Text!="") { 
            MailAddress to = new MailAddress("shunnohridoy@gmail.con");
            MailAddress from = new MailAddress(txtEmail.Text);
            MailMessage message = new MailMessage(from,to);

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            conn.Open();

            SqlCommand scmd = new SqlCommand();
            scmd.Connection = conn;
            scmd.CommandText = "insert into Feedback( Name,E_mail, Subject, Comments) values('" + txtName.Text + "',  '" + txtEmail.Text + "', '" + txt_subject.Text + "', '" + txtComments.Text + "')";
            scmd.ExecuteNonQuery();
            conn.Close();
            lbl_thank.Text = "Thanks For Your Feedback";
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txt_subject.Text = string.Empty;
            txtComments.Text = string.Empty;
            }
            //else
            //{
            //    valid_name.Text = "Name is required";
            //    valid_name.ForeColor= System.Drawing.Color.Red;
            //    valid_email.Text = "E-mail is required";
            //    valid_email.ForeColor = System.Drawing.Color.Red;
            //    valid_subject.Text = "subject is required";
            //    valid_subject.ForeColor = System.Drawing.Color.Red;
            //    valid_coments.Text = "Comments must be required";
            //    valid_coments.ForeColor = System.Drawing.Color.Red;
            //}
        }
    }
}