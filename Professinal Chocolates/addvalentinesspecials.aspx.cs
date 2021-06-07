using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class addvalentinesspecials : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["email"] == null)
        //{
        //    Response.Redirect("login.aspx");
        //}
    }


    
    protected void btnAddChocolate_Click1(object sender, EventArgs e)
    {
        try
        {

            string chocolate_name = txtName.Text;

            string chocolate_description = txtDesc.Text;
            string chocolate_price = txtPrice.Text;


            String folderpath = "~/images/valentinesspecials/";
     


            if (chocolateImage.HasFile)
            {
                string filename = chocolateImage.PostedFile.FileName.ToString();

                chocolateImage.SaveAs(Server.MapPath(folderpath + filename));

            }


            string chocolate_imgurl = folderpath + chocolateImage.PostedFile.FileName;

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbchocolatesConnectionString"].ToString());

            
            con.Open();

            SqlCommand cmd = con.CreateCommand();

            cmd.CommandText = @"insert into valentinesspecials(chocolate_name,chocolate_description,chocolate_price,chocolate_imgurl) values (@chocolate_name,@chocolate_description,@chocolate_price,@chocolate_imgurl)";
            cmd.Connection = con;

            cmd.Parameters.AddWithValue("chocolate_name", @chocolate_name);
            cmd.Parameters.AddWithValue("chocolate_description", @chocolate_description);
            cmd.Parameters.AddWithValue("chocolate_price", @chocolate_price);
            cmd.Parameters.AddWithValue("chocolate_imgurl", @chocolate_imgurl);
            cmd.ExecuteNonQuery();

            //Response.Write("chocolate added successfully!");
            Response.Redirect("adminhome.aspx");
            
        }
        catch (Exception ex)
        {

            Response.Write(ex);
        }

    }
}