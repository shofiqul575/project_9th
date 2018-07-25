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
    public partial class Register : System.Web.UI.Page
    {
        //String connectionstring= ConfigurationManager
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            conn.Open();
            
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = conn;
                scmd.CommandText = "insert into tb_User(Uname, password, Name, Address, Con_Number, E_mail, Qualification, country,User_Reg_Date) values('" + txt_uname.Text + "', '" + txt_pass.Text + "', '" + txt_name.Text + "', '" + txt_address.Text + "', '" + txt_Con_Number.Text + "', '" + txt_email.Text + "', '" + txt_qualification.Text + "', '" + dropdown_country.SelectedValue.ToString() + "','"+DateTime.Now.ToString() +"')";
                scmd.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("~/Login.aspx?id=registor");
           
           
        }
    }
}