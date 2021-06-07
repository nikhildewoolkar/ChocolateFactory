<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mailandmsgprint.aspx.cs" Inherits="mailandmsgprint" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
        <h3 style="color:white"> Thank you for placing order with us!!<br>Your Order Details are as follows:</h3>
   </center>
    <center>
           <table style="width:75%;background-color:chocolate;border: medium dashed #CC3300;">
   <tr>
   <td>
<h4  style="color:maroon">Name: &nbsp;<%=Session["username"]  %></h4><br />
   <h4  style="color:maroon">Address: &nbsp;  <%=   Session["address"]%>  </h4><br/>
   <h4  style="color:maroon">Mobile:&nbsp;  <%=   Session["mobile"]%>  </h4><br/>
   <h4  style="color:maroon">Email:&nbsp;<%=   Session["email"]%>  </h4><br/>
 <h4  style="color:maroon">Total Amount :Rs.&nbsp;  <%=   Session["totalamt"]%>  </h4>&nbsp;&nbsp;  <br/>
       <h4  style="color:maroon">Mode of Payment &nbsp;  <%=   Session["modeofpayment"]%>  </h4>&nbsp;&nbsp;  <br/>
  </td>
  </tr>
  </table>
        </center>

     
        <center>
        
    
        
  </center>

</asp:Content>

