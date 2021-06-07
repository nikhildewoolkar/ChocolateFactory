<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

			<div class="contact-form">
            <center>
				<h2 style="font-family:'Times New Roman';color:maroon">Your Feedback is Valuable to Us... </h2>
                    
                    <br><br>
<table style="width:50%;background-color:chocolate;border: medium dashed #CC3300;">
                      <tr>
                    <td>s</td>
                <td style="width: 432px">
       <h4 style="font-family:'Times New Roman';color:maroon">Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtName" runat="server" Width="190px" Height="25px" 
                        BackColor="#CCCCCC" ForeColor="Maroon" style="color:#CC3300"></asp:TextBox></h4>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please Enter your First name" ControlToValidate="txtName"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Name contains Only Characters" ControlToValidate="txtName" 
                        ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>    
                                </td>
            </tr>
            <tr>
            <td></td>
            </tr>
            <tr>
            <td></td>
                <td style="width: 432px">
                <h4 style="font-family:'Times New Roman';color:maroon">Mobile No: <asp:TextBox ID="txtphoneno" runat="server" style="margin-right: 1px" Width="176px" Height="22px" BackColor="#CCCCCC" ForeColor="#CC3300"></asp:TextBox></h4>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Please Enter your mobile no" ControlToValidate="txtphoneno"></asp:RequiredFieldValidator><br /> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="Invalid Mobile No" ControlToValidate="txtphoneno" 
                        ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
            <td></td>
    <td style="width: 432px">
                 <h4 style="font-family:'Times New Roman';color:Maroon"> Email id&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEmail" runat="server" Width="190px" Height="25px" 
                        ForeColor="#CC3300" BackColor="#CCCCCC"></asp:TextBox></h4>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Please enter your Emaild ID" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="Invalid EmailID" ControlToValidate="txtEmail" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> </td>
            </tr> 
            <tr>
            <td></td>
            <td style="width: 432px">
                <h4 style="font-family:'Times New Roman';color:Maroon"> Feedback :
                <asp:TextBox ID="txtFeedback" runat="server" Width="191px" TextMode= "MultiLine" 
                    Height="80px" ForeColor="#CC3300" BackColor="#CCCCCC" ></asp:TextBox></h4>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Address Field cannot be Empty" ControlToValidate="txtFeedback"></asp:RequiredFieldValidator><br />
                </td>
            </tr>
            <tr>
            <td></td>
            <td style="width: 432px">
               
             <h4 style="font-family:'Times New Roman';color:Maroon">Upload Photo :&nbsp;&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="perosnimageurl" runat="server" /> </h4>
                 </td>
            </tr>
           <tr>
           <td>
               <br />
               <br />
               </td>
           </tr>
           <tr>
           <td></td>
           <td class="style1" style="width: 432px">
          
           
               <asp:Button ID="btnRegSubmit" runat="server" ForeColor="white" BackColor="#CC3300"
                   Height="38px" Width="86px" Text="Submit" onclick="btnRegSubmit_Click"  />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnRegReset" runat="server" ForeColor="white" BackColor="#CC3300" Height="38px" Width="86px" 
                   Text="Reset" />  
            </td>
            
            </tr>
            
             </table>
             <br /><br />
             </center>  
             </div>
			

			
			
</asp:Content>

