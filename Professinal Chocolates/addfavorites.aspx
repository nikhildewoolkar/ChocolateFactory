<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="addfavorites.aspx.cs" Inherits="addfavorites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
        <center><h2 style="color:maroon" class="title-w3">Add Favorite Chocolates</h2>               </center>

    <center>
        <table style="border: medium dashed maroon; width:75%" align="center" cellpadding="5" cellspacing ="5">

                            <tr><td style="width: 570px">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;<span style="color:maroon">Chocolate Name :</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>       <br>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Name contains Only Characters" ControlToValidate="txtName" ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>
                                            <br/>
	                            <span style="color:maroon">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chocolate Description  :</span> <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field cannot be Empty" ControlToValidate="txtdesc"></asp:RequiredFieldValidator>
                                 <br/><br/>
    <span style="color:maroon">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chocolate Price  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter chocolate price" ControlToValidate="txtPrice">
         </asp:RequiredFieldValidator>                  
       <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Price" ControlToValidate="txtPrice" ValidationExpression="[0-9.]{1,4}"></asp:RegularExpressionValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" Type="Integer" 
MinimumValue="100" MaximumValue="5000" ControlToValidate="txtPrice" ErrorMessage="Value must be a whole number between 100 and 5000" />
                                             <br>                                         
                                                    <br>
                            
         <span style="color:maroon">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload Chocolate Image :</span>  <asp:FileUpload ID="chocolateImage" runat="server" />
        						<br/><br/>
    <center>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAddChocolate" runat="server" style="background-color:maroon;color:white" Text="Add Chocolate" OnClick="btnAddChocolate_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
         
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbchocolatesConnectionString %>" SelectCommand="SELECT * FROM [diwalispecials]"></asp:SqlDataSource>
                           </td></tr></table>
    
</center>

</asp:Content>

