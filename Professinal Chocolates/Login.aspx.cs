using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnlogin_Click(object sender, EventArgs e)
    {

        
        if (Txtemail.Text == "admin@gmail.com" && Txtpassword.Text == "admin")
        {
            Session["email"] = Txtemail.Text;
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbchocolatesConnectionString"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select id,name,address,mobno,password from signup where email=@email";
            cmd.Parameters.AddWithValue("email", Txtemail.Text.Trim());
            SqlDataReader dr = cmd.ExecuteReader();
            Response.Write(Txtemail.Text);

            if (dr.Read())
            {
               int id = Convert.ToInt32(dr.GetInt32(0));
                
                Session["userID"] = id;
                //Session["userID"] = dr.GetString(0);
                Session["username"]= dr.GetString(1);
                Session["address"] = dr.GetString(2);
                Session["mobile"] = dr.GetString(3);
                Response.Write(Txtpassword.Text);
                if (dr.GetString(4).Trim() == Txtpassword.Text.Trim())
                {

                    Session["email"] = Txtemail.Text;
                    Response.Redirect("index.aspx");
                   
                }
                else
                {
                    lblmessage.Text = "Please try again!!";
                }
            }
            else
            {
                lblmessage.Text = "Please try again!";
            }

        }
    }
}