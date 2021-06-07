<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signupf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
    
        <h2 style="font-family:'Times New Roman';color:maroon">Please Sign Up to shop with us... </h2><br/>
<table style="width:75%;background-color:chocolate;border: medium dashed #CC3300;">

                     <tr>
                <td style="width: 186px"> Full Name :</td><td style="width: 542px"> <asp:TextBox ID="txtFirstName" runat="server" Width="190px" Height="25px" 
                        BackColor="#CCCCCC"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please Enter your First name" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Name contains Only Characters" ControlToValidate="txtFirstName" 
                        ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>    
                                </td>
            </tr>
            <tr>
            <td style="width: 186px">  Address :</td><td style="width: 542px"> <asp:TextBox ID="txtAddress" runat="server" Width="191px" TextMode= "MultiLine" 
                    Height="80px" BackColor="#CCCCCC" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Address Field cannot be Empty" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 186px"> Mobile No :</td>
                <td style="width: 542px">
                                     <asp:TextBox ID="txtMob" runat="server" style="margin-right: 1px" 
                        Width="190px" Height="25px" BackColor="#CCCCCC"></asp:TextBox>
                 
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Please Enter your mobile no" ControlToValidate="txtMob"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="Invalid Mobile No" ControlToValidate="txtMob" 
                        ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 186px"> Email ID: </td>
                <td style="width: 542px">                 
                    <asp:TextBox ID="txtEmail" runat="server" Width="190px" Height="25px" 
                        BackColor="#CCCCCC"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Please enter your Emaild ID" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="Invalid EmailID" ControlToValidate="txtEmail" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
            </tr> 
            <tr>
                <td>  Password : </td>
                <td style="width: 542px">
                    <asp:TextBox ID="txtPass" runat="server" BackColor="#CCCCCC" Height="25px" 
                        TextMode="Password" Width="190px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Password Field cannot be Empty" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtPass" ErrorMessage="Password must contain 8 to 14 characters and must include at least one upper case,one lower case letter and one numeric Digit." 
                        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,14}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 186px">  Reenter Password :</td>
                <td style="width: 542px">
                                <asp:TextBox ID="txtReenterPass" runat="server" BackColor="#CCCCCC" Height="25px" 
                        TextMode="Password" Width="190px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Please Reenter your Password" ControlToValidate="txtReenterPass"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPass" ControlToValidate="txtReenterPass" 
                        ErrorMessage="Password Does NOT Match"></asp:CompareValidator>
                </td>
            </tr>
           
           <tr>
           <td style="width: 186px">
               &nbsp;</td><td style="width: 542px"> 
              
               
               
               <asp:Button ID="btnRegister" style="background-color:maroon;color:white" runat="server"  Text="Register" OnClick="btnRegister_Click" Height="38px" />
              
               
               
               &nbsp;<asp:Button ID="btnRegReset" runat="server" Height="38px" Width="86px" 
                   Text="Reset" onclick="btnRegReset_Click" style="background-color:maroon;color:white" />  
            </td></tr>
             </table>
             </center>  
             <br /><br />
             

</asp:Content>

