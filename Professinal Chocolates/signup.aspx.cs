using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class signupf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
        protected void btnRegister_Click(object sender, EventArgs e)
{
            string connString = WebConfigurationManager.ConnectionStrings["dbchocolatesConnectionString"].ToString();

        SqlConnection objConn = new SqlConnection(connString);

        try
        {
            objConn.Open();

            String name, address, mobno, email, password;
            int intInsert;

            name = txtFirstName.Text;
            address = txtAddress.Text;
            mobno = txtMob.Text;
            email = txtEmail.Text;
            password = txtPass.Text;

            String strInsertQry;

            strInsertQry = "insert into signup(name,address,mobno,email,password) values (@name,@address,@mobno,@email,@password)";
            SqlCommand Cmdins = new SqlCommand(strInsertQry, objConn);


            Cmdins.Parameters.AddWithValue("@name", name);
            Cmdins.Parameters.AddWithValue("@address", address);
            Cmdins.Parameters.AddWithValue("@mobno", mobno);
            Cmdins.Parameters.AddWithValue("@email", email);
            Cmdins.Parameters.AddWithValue("@password", password);

            intInsert = Cmdins.ExecuteNonQuery();

            if (intInsert > 0)
                Response.Redirect("Login.aspx");
        }
        catch (Exception ex) { throw ex; }

}






        protected void btnRegReset_Click(object sender, EventArgs e)
        {
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtFirstName.Text = "";
            txtMob.Text = "";
            txtPass.Text = "";
            txtReenterPass.Text = "";
            txtFirstName.Focus();

        }
}