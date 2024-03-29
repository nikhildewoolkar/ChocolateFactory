﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;



public partial class viewupdatedeletevalentinesspecials : System.Web.UI.Page
{
    

    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    string connStr = WebConfigurationManager.ConnectionStrings["dbchocolatesConnectionString"].ConnectionString;
    string imgpath;

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["email"] == null)
        //    Response.Redirect("login.aspx");

        if (!IsPostBack)
        {
            ImageData();
        }


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ImageData()
    {
        con = new SqlConnection(connStr);
        con.Open();
        da = new SqlDataAdapter("select * from valentinesspecials", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    // edit event    
    protected void gvImage_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        ImageData();

    }
    // update event    
    protected void gvImage_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //find image id of edit row    
        string imageId = GridView1.DataKeys[e.RowIndex].Value.ToString();
        // find values for update    
        TextBox name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtname");
        TextBox desc = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdesc");
        TextBox price = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtprice");
        FileUpload FileUpload1 = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");

        con = new SqlConnection(connStr);
        string path = "~/Images/valentinesspecials/";
        if (FileUpload1.HasFile)
        {
            path += FileUpload1.FileName;
            //save image in folder    
            FileUpload1.SaveAs(MapPath(path));
        }
        else
        {
            // use previous user image if new image is not changed    
            Image img = (Image)GridView1.Rows[e.RowIndex].FindControl("Image1");
            path = img.ImageUrl;
        }
        SqlCommand cmd = new SqlCommand("update valentinesspecials set chocolate_name='" + name.Text + "',chocolate_imgurl='" + path + "',chocolate_description='" + desc.Text + "',chocolate_price='" + price.Text + "' where chocolate_id=" + imageId + "", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        ImageData();
    }
    // cancel edit event    
    protected void gvImage_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ImageData();
    }
    //delete event    
    protected void gvImage_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblproductid");
        Image lblDeleteImageName = (Image)row.FindControl("Image2");

        con = new SqlConnection(connStr);
        con.Open();
        SqlCommand cmd = new SqlCommand("delete FROM valentinesspecials where chocolate_id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        ImageDeleteFromFolder(lblDeleteImageName.ImageUrl);
        ImageData();
    }
    /// <summary>  
    /// This function is used to delete image from folder when deleting in gridview.  
    /// </summary>  
    /// <param name="imagename">image name</param>  
    protected void ImageDeleteFromFolder(string imagename)
    {
        string file_name = imagename;
        string path = Server.MapPath(imagename);
        FileInfo file = new FileInfo(path);
        if (file.Exists) //check file exsit or not  
        {
            file.Delete();
            lblResult.Text = file_name + " file deleted successfully";
            lblResult.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            lblResult.Text = file_name + " This file does not exists ";
            lblResult.ForeColor = System.Drawing.Color.Red;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        con = new SqlConnection(connStr);
        con.Open();
        GridView1.PageIndex = e.NewPageIndex;
        da = new SqlDataAdapter("select * from valentinesspecials", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}