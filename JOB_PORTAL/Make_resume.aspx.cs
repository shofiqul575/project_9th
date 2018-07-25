using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

namespace JOB_PORTAL
{
    public partial class Make_resume : System.Web.UI.Page
    {
        public void savefile(string name,int size,string path)
        {
            string insert_text = "insert into Resume_file(name,filesize,filepath) values(@name,@filesize,@filepath)";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
           
            SqlCommand scmd = new SqlCommand(insert_text);
            scmd.Parameters.Add("@name", System.Data.SqlDbType.VarChar, 50);
            scmd.Parameters["@name"].Value = name;
            scmd.Parameters.Add("@filesize", System.Data.SqlDbType.Int);
            scmd.Parameters["@filesize"].Value = size;
            scmd.Parameters.Add("@filepath", System.Data.SqlDbType.VarChar, 500);
            scmd.Parameters["@filepath"].Value = path;
            try
            {
                conn.Open();
                scmd.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                lbl_message.Text = "unable to insert file in database";
                lbl_message.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                conn.Close();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {

            bool correctExtention = false;
            if (FileUpload1.HasFile) { 
            string filename = FileUpload1.PostedFile.FileName;
            int filesize = FileUpload1.PostedFile.ContentLength;
            string fileextention = Path.GetExtension(filename).ToLower();
            string[] allowedextention = { ".doc", ".docx", ".jpg", ".txt" };

            if (allowedextention.Contains(fileextention))
            {
                correctExtention = true;
            }
            if (correctExtention) { 
            if(fileextention==".doc")
            {
                try
                {
                    string filepath=Server.MapPath("~/Resumes/") +filename;
                    FileUpload1.PostedFile.SaveAs(filepath);
                    savefile(filename, filesize, filepath);
                    lbl_message.Text = "File succesfully Uploaded and save in database";
                            lbl_message.ForeColor = System.Drawing.Color.Green;
                }
               catch(Exception ex)
                {
                    lbl_message.Text = "unable to upload file";
                            lbl_message.ForeColor = System.Drawing.Color.Red;
               }
            }
            else if (fileextention == ".docx")
            {
                try
                {
                    string filepath =Server.MapPath("~/Resumes/")+ filename;
                    FileUpload1.PostedFile.SaveAs(filepath);
                    savefile(filename, filesize, filepath);
                    lbl_message.Text = "File succesfully Uploaded and save in database";
                    lbl_message.ForeColor = System.Drawing.Color.Green
                        ;
                }
                catch (Exception ex)
                {
                    lbl_message.Text = "unable to upload file";
                    lbl_message.ForeColor = System.Drawing.Color.Red;
                }
            }
            
            }
        }
            else
            {
                lbl_message.Text = "Please select a .Doc or .Docx file to upload";
                lbl_message.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}