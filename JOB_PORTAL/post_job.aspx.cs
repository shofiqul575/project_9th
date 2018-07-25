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
    public partial class post_job : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPostJOb_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            conn.Open();

            SqlCommand scmd = new SqlCommand();
            scmd.Connection = conn;
            scmd.CommandText = "insert into jobs(com_name, category, role, qualification, required_skill, extra_skill, max_age, job_location,salary,working_hour,description,last_apply_date,job_posted_Date) values('" + txtCname.Text + "', '" + DrpCategory.SelectedValue.ToString() + "', '" + DrpRole.SelectedValue.ToString() + "', '" + drpQlf.SelectedValue.ToString() + "', '" + drpreqskill.SelectedValue.ToString() + "', '" + txtOtherSkill.Text + "', '" + drpmaxage.SelectedValue.ToString() + "', '" + drpjobLoc.SelectedValue.ToString() + "','"+DrpMinSalary.SelectedValue.ToString()+"','"+txtworkinghour.Text+"','"+txtDescr.Text+"','"+txtexpiredate.Text + "','" + DateTime.Now.ToString() + "')";
            scmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/Recruiter_Profile.aspx?id=employer_profile");
        }
    }
}