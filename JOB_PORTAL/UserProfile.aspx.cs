using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace JOB_PORTAL
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            //conn.Open();

            //string JName = Session["user"].ToString();
        

            //string query = "select * from tb_user where uname='" + JName + "'";
            //SqlDataAdapter adp = new SqlDataAdapter(query, conn);
            //DataTable dt = new DataTable();
            //adp.Fill(dt);
            //DataList1.DataSource = dt;
            //DataList1.DataBind();

}
}
}
 