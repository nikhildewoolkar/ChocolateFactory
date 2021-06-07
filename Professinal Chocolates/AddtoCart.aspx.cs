using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;



public partial class AddtoCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if ((Session["email"] == null))
            Response.Redirect("login.aspx");

        string connString = ConfigurationManager.ConnectionStrings["dbchocolatesConnectionString"].ToString();//external Sql server 2008

        try
        {

            SqlConnection objConn = new SqlConnection(connString);




            int chocolate_id = Convert.ToInt32(Request.QueryString["chocolateid"]);
            string tblname = Request.QueryString["tablename"];
            
            

            objConn.Open();
            SqlCommand objCmd = new SqlCommand("select * from " + tblname + " where chocolate_id=@chocolate_id", objConn);
            objCmd.Parameters.AddWithValue("@chocolate_id",chocolate_id);
            SqlDataReader rs = objCmd.ExecuteReader();

            rs.Read();

            
            string ProductName = rs.GetString(1);
            double Price = rs.GetDouble(3);
            string ProductImageUrl = rs.GetString(4);





            Cart c;

            if (Session["cart"] == null)
            {
                c = new Cart();
            }
            else
            {
                c = (Cart)Session["cart"];
            }
            c.Insert(chocolate_id, Price, 1, ProductName, ProductImageUrl);


            Session["cart"] = c;

            Response.Redirect("favorites.aspx");
        }
        catch (Exception ex) { Response.Write(ex); }
        }


    }

        
    