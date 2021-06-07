<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="confirmorder.aspx.cs" Inherits="confirmorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
				<h2 style="font-family:'Times New Roman';color:maroon">Payment Form </h2>
    </center>                
    <br>
    <center>
        <table>
            
            <tr>
                <td style="width: 345px">
                    <h3 style="font-family:'Times New Roman';color:maroon">Personal Details </h3>
<table style="width:89%; background-color:chocolate;border: medium dashed #CC3300;" class="nav-justified">
            
    
        <tr>
            <td class="style8">
            </td>
            <td class="style1">
            </td>
        </tr>
        
        <tr>
            <td class="style8">
                Name:</td>
            <td class="style1">
                <asp:Label ID="lblName" runat="server" class="form-control"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Address:</td>
            <td>
                <asp:Label ID="lblAddrs" runat="server" class="form-control" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                Mobile:</td>
            <td>
                <asp:Label ID="lblMob" runat="server" class="form-control" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style9">
                Total Amount</td>
            <td class="style10">
                <asp:Label ID="lblAmt" runat="server" class="form-control"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style8">
                Payment Method:</td>
            <td>
                <asp:DropDownList ID="ddlmodeofpayment" runat="server" class="form-control">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Cash on Delivery</asp:ListItem>
                    <asp:ListItem>Credit card</asp:ListItem>
                    <asp:ListItem>Debit card</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                <br />
                <asp:Button ID="btnProceed" runat="server" Text="Proceed" class="form-control" onclick="btnProceed_Click" />
            </td>
        </tr>
    </table>
                    </td>
        <td>
        
        

            
    <asp:Panel ID="pnlPay" runat="server" Visible="false" BorderColor="white" BorderStyle="Ridge" BorderWidth="2px">
    
    <div class="main" >
  <div class="content">
    <div class="container_12">
      <table class="style2">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4" 
                    style="font-family: Algerian; font-size: xx-large; color: white">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: medium">&quot;Credit Card / Debit Card Info</span></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                </td>
                <td class="style6">
                </td>
                <td class="style7">
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    style="font-family: 'Baskerville Old Face'; font-size: medium;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name&nbsp;of the Card Holder</td>
                <td class="style4">
                    <asp:TextBox ID="txtName" class="Form-control" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    style="font-family: 'Baskerville Old Face'; font-size: medium;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Card Number(16 Digits)&nbsp;</td>
                <td class="style4">
                    
                                                     <asp:TextBox ID="txtCard" runat="server" class="form-control"></asp:TextBox>
                                            
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Card Number" ControlToValidate="txtCard"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please enter in correct format" ControlToValidate="txtCard" ValidationExpression="[0-9]{16}"></asp:RegularExpressionValidator>
                   
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    style="font-family: 'Baskerville Old Face'; font-size: medium;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Expiry Date(MM/YY)</td>
                <td class="style4">
                    	                                            MM :<asp:DropDownList ID="ddlmonths" runat="server">

                                                              <asp:ListItem Enabled="true" Text="Month" Value="-1"></asp:ListItem>
                                                              <asp:ListItem Text="January" Value="1"></asp:ListItem>
                                                               <asp:ListItem Text="February" Value="2"></asp:ListItem>
                                                                <asp:ListItem Text="March" Value="3"></asp:ListItem>
                                                                <asp:ListItem Text="April" Value="4"></asp:ListItem>
                                                                <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                                                <asp:ListItem Text="June" Value="6"></asp:ListItem>
                                                                <asp:ListItem Text="July" Value="7"></asp:ListItem>
                                                                <asp:ListItem Text="August" Value="8"></asp:ListItem>
                                                                <asp:ListItem Text="September" Value="9"></asp:ListItem>
                                                                <asp:ListItem Text="October" Value="10"></asp:ListItem>
                                                                <asp:ListItem Text="November" Value="11"></asp:ListItem>
                                                                <asp:ListItem Text="December" Value="12"></asp:ListItem>
                                                                

                                                              </asp:DropDownList>  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlmonths" InitialValue="-1" class="form-control" Height="16px" Width="96px"></asp:RequiredFieldValidator>
																               YY :<asp:DropDownList ID="ddlyear" runat="server">
                                                               <asp:ListItem Enabled="true" Text="Year" Value="-1"></asp:ListItem>
                                                              <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                                                               <asp:ListItem Text="2021" Value="2021"></asp:ListItem>
                                                                <asp:ListItem Text="2022" Value="2022"></asp:ListItem>
                                                                <asp:ListItem Text="2023" Value="2023"></asp:ListItem>
                                                                <asp:ListItem Text="2024" Value="2024"></asp:ListItem>
                                                                <asp:ListItem Text="2025" Value="2025"></asp:ListItem>
                                                                <asp:ListItem Text="2026" Value="2026"></asp:ListItem>
                                                                
                                                             </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlyear" InitialValue="-1"> 

                 </asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    style="font-family: 'Baskerville Old Face'; font-size: medium;">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" 
                    style="font-family: 'Baskerville Old Face'; font-size: medium;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CVV&nbsp; Code&nbsp;</td>
                <td class="style4">
                        <asp:TextBox ID="txtCvv" runat="server" size="3" maxlength="4" class="form-control" required="" Height="25px" Width="93px"></asp:TextBox>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Contains Only Digits" ControlToValidate="txtCvv" ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator>
	
	
                    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>


            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>

            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="Button1" style="background-color:maroon;color:white" runat="server" Height="30px" Text="Pay" Width="80px" class="form-control"  onclick="Button1_Click" />
                    <asp:Label ID="Label4" runat="server" Text="Label" class="form-control"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

</div>
    </div>

    </div>
    </asp:Panel>
    


            </td>
</tr>
    </table>
        </center>
    
</asp:Content>

