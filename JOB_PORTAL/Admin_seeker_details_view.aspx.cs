﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace JOB_PORTAL
{
    public partial class Admin_details_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["userid"] != null) { 
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            conn.Open();

            SqlCommand scmd = new SqlCommand();
            scmd.Connection = conn;
            scmd.CommandText = " delete from tb_user where Uid="+Request.QueryString["userid"].ToString()+"";
            scmd.ExecuteNonQuery();
            conn.Close();
            
            Response.Redirect("~/user_account.aspx");
            }
           
        }
    }
}