<%@ Page Title="" Language="C#" MasterPageFile="masterpage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><span style="color:maroon">Log in </h1> 
    
<table width="400">
    <tr>
        <td>&nbsp;</td>
        <td class="style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="color:maroon">Username&nbsp;&nbsp;</td>
        <td class="style1"><asp:TextBox ID="Txtemail" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="Txtemail" ErrorMessage="pls enter your email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="Txtemail" ErrorMessage="invalid email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="color:maroon">Password </td>
        <td class="style1"><asp:TextBox ID="Txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="Txtpassword" ErrorMessage="pls enter your password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
        <td><td><span ><asp:Button ID="Btnlogin" runat="server" Text="Log in" style="border-color:maroon;color:white"
            onclick="Btnlogin_Click" /></td>
        <td class="style1">

</td><td>
    </tr>
        <tr>

<td></td>
            <td></td>
        <td>&nbsp;</td>
    </tr>
    
    <tr>
    <td></td>
        <td style="padding-left:50px" class="style1">&nbsp;</td>
        <td style="padding-left:50px">&nbsp;</td>
    </tr>
    <tr>
    <td></td>
    <td class="style1"><asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="SignUp.aspx" style="color:maroon">New User? SignIn Here!!!</asp:HyperLink></td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td></td>

        
    </tr>
    <tr>
    <td></td>
    <td class="style1"><asp:Label ID="lblmessage" runat="server"></asp:Label></td> 
    <td>&nbsp;</td> 
        
    </tr>
    </table>
    
    </center>

</span>

</asp:Content>


