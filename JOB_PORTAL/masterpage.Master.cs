using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOB_PORTAL
{
    public partial class masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_time.Text = DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss" );
            if (Page.Session["user"] != null)
            {
                lbtn_login_logout.Text = "Logout";
                lbtn_signup_profile.Text = " User Profile";
                lbtn_searchjobs_postjobs.Text = "Search Jobs";
            }
            else if(Page.Session["Recruiter"] != null)
            {
                lbtn_login_logout.Text = "Logout";
                lbtn_signup_profile.Text = "Recruiter Profile";
                lbtn_searchjobs_postjobs.Text = "Post Jobs";
            }
            else
            {
                lbtn_login_logout.Text = "Login";
                //lbtn_signup_profile.Text = "SignUp";
                lbtn_searchjobs_postjobs.Text = "Jobs";
            }
            
            
        }

        protected void lbtn_signup_profile_Click(object sender, EventArgs e)
        {
            //if (lbtn_signup_profile.Text == "SignUp" && Label.Equals(User Name))
            //{
            //    Response.Redirect("UserRegister.aspx");
            //}
            //if (lbtn_signup_profile.Text == "SignUp" && lbtn_signup_profile.Text == " Recruiter Profile")
            //{
            //    Response.Redirect("Recruiter_Login.aspx");
            //}
            if (lbtn_signup_profile.Text == " User Profile")
            {
                
                Response.Redirect("UserProfile.aspx");
            }
            if (lbtn_signup_profile.Text == "Recruiter Profile")
            {

                Response.Redirect("Recruiter_Profile.aspx");
            }
            
        }

        protected void lbtn_login_logout_Click(object sender, EventArgs e)
        {

            if(lbtn_login_logout.Text=="Login")
            {
                Response.Redirect("Login.aspx");
            }
            if(lbtn_login_logout.Text=="Logout" && lbtn_signup_profile.Text == " User Profile")
            {
                Page.Session.Abandon();
                Response.Redirect("Login.aspx? id=logout");
            }
            if (lbtn_login_logout.Text == "Logout")
            {
                Page.Session.Abandon();
                Response.Redirect("Recruiter_Login.aspx? id=logout");
            }
        }

        protected void lbtn_searchjobs_postjobs_Click(object sender, EventArgs e)
        {
            if(lbtn_searchjobs_postjobs.Text=="Jobs")
            {
                Response.Redirect("Posted_jobs.aspx");
            }
            if (lbtn_searchjobs_postjobs.Text == "Search Jobs")
            {
                Response.Redirect("Posted_jobs.aspx");
            }
            if (lbtn_searchjobs_postjobs.Text=="Post Jobs")
            {
                Response.Redirect("post_job.aspx");
            }
        }
    }
}