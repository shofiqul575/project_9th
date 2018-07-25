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
    public partial class RecruiterRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            conn.Open();

            SqlCommand scmd = new SqlCommand();
            scmd.Connection = conn;
            scmd.CommandText = "insert into tb_Recruiter(R_Name, Password, Com_Name,Com_info, Address, Con_Number, E_mail,country,Recruit_Reg_Date) values('" + txt_Rname.Text + "', '" + txt_pass.Text + "', '" + txt_Company_name.Text + "', '" + txt_company_info.Text + "', '" + txt_address.Text + "', '" + txt_Con_Number.Text + "', '" + txt_email.Text + "', '" + dropdown_country.SelectedValue.ToString() + "','"+DateTime.Now.ToString()+"')";
            scmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/Recruiter_Login.aspx?id=registered successful");
        }
    }
}