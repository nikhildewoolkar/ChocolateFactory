using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class confirmorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text = Session["username"].ToString();
        lblAddrs.Text = Session["address"].ToString();
        lblMob.Text = Session["mobile"].ToString();
        lblAmt.Text = Session["totalamt"].ToString();
        pnlPay.Visible = false;
    }

    protected void btnProceed_Click(object sender, EventArgs e)
    {
        string pay =ddlmodeofpayment.SelectedItem.ToString();
        if (pay == "Cash on Delivery")
        {
            pnlPay.Visible = false;
            Session["modeofpayment"] = ddlmodeofpayment.SelectedItem.ToString();
            Response.Redirect("confirmorder.aspx");

        }
        else
        {

            pnlPay.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("1");
        try
        {

            Session["modeofpayment"] = ddlmodeofpayment.SelectedItem.ToString();
            Session["cardholdername"] = txtName.Text;
            Session["cardno"] = txtCard.Text;
            Session["expirydate"] = ddlmonths.SelectedItem.ToString() + "/" + ddlyear.SelectedItem.ToString();
            Session["cvv"] = txtCvv.Text;
            Response.Write("2");
        }
        catch (Exception ex) { Response.Write(ex); }          
            
        Response.Redirect("mailandmsgprint.aspx");
        }

    
}
    
