using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JOB_PORTAL
{
    public partial class Adminmasterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["admin"] != null)
            {
                lbtn_login_logout.Text = "Logout";
                lbtn_manage_account.Text = "Manage Account";
                lbtn_manage_jobs.Text = "Manage Jobs";
                lbtn_add_admin.Text = "";
            }
            //if(Page.Session["admin"]==null)
            //{
            //    Response.Redirect("Admin.aspx");
            //}
        }

        protected void lbtn_add_admin_Click(object sender, EventArgs e)
        {
            if (lbtn_add_admin.Text == "Add New Admin")
            {
                Response.Redirect("add_new_admin.aspx");
            }
        }

        protected void lbtn_login_logout_Click(object sender, EventArgs e)
        {
            if (lbtn_login_logout.Text == "Login")
            {
                Response.Redirect("Admin_login.aspx");
            }
            if (lbtn_login_logout.Text == "Logout")
            {
                Page.Session.Abandon();
                Response.Redirect("Admin.aspx? id=logout");
            }
        }

        protected void lbtn_manage_account_Click(object sender, EventArgs e)
        {
            if(lbtn_manage_account.Text=="Manage Account")
            {
                Response.Redirect("manage_account.aspx");
            }
        }

        protected void lbtn_manage_jobs_Click(object sender, EventArgs e)
        {
            if (lbtn_manage_jobs.Text == "Manage Jobs")
            {
                Response.Redirect("manage_jobs.aspx");
            }
        }
    }
}