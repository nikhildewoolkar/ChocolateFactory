using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegSubmit_Click(object sender, EventArgs e)
    {

        try
        {

            string name = txtName.Text;

            string phoneno = txtphoneno.Text;
            string emailid = txtEmail.Text;
            string feedback = txtFeedback.Text;


            String folderpath = "~/images/testimonials/";
            // subcat=@"~\images\categoryproducts\breakfast\";


            if (perosnimageurl.HasFile)
            {
                string filename = perosnimageurl.PostedFile.FileName.ToString();

                perosnimageurl.SaveAs(Server.MapPath(folderpath + filename));

            }


            string imageurl = folderpath + perosnimageurl.PostedFile.FileName;

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbchocolatesConnectionString"].ToString());


            con.Open();

            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = @"insert into feedback(name,phoneno,emailid,imageurl,feedback) values (@name,@phoneno,@emailid,@imageurl,@feedback)";
            cmd.Connection = con;
            
            cmd.Parameters.AddWithValue("name", @name);
            cmd.Parameters.AddWithValue("phoneno", @phoneno);
            cmd.Parameters.AddWithValue("emailid", @emailid);
            cmd.Parameters.AddWithValue("imageurl", @imageurl);
            cmd.Parameters.AddWithValue("feedback", @feedback);
            cmd.ExecuteNonQuery();


            Response.Redirect("index.aspx");
        }
        catch (Exception ex)
        {
            
            Response.Write(ex);
        }
    }
}