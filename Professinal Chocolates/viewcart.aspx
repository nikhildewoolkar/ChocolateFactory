<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="viewcartm" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="about py-5" id="about">
		<div class="container py-xl-5 py-lg-3">
        <center>
   <h3 style="color:maroon">Dear <% =Session["username"]  %>, <br/>Your order is as follows :</h3>
   <br><br>
     <asp:GridView ID="grdCart" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ProductID" OnRowCancelingEdit="grdCart_RowCancelingEdit" 
                OnRowDeleting="grdCart_RowDeleting" OnRowEditing="grdCart_RowEditing" 
                OnRowUpdating="grdCart_RowUpdating" BackColor="#DEBA84" BorderColor="#DEBA84" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
    <Columns>


        <asp:TemplateField>
            <ItemTemplate>
     
                  <img id="Img1" runat="server" src='<%#Eval("ImageUrl")%>' alt="" style="width:50px;height:50px"/>
            </ItemTemplate>
        </asp:TemplateField>
     
        <asp:BoundField DataField="ProductName" HeaderText="Product" ReadOnly="True" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" DataFormatString="{0:c}" HtmlEncode="false" />
        <asp:BoundField DataField="SubTotal" HeaderText="Total" ReadOnly="True" DataFormatString="{0:c}" HtmlEncode="false" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

    </Columns>
        <EmptyDataTemplate>
        Your Shopping Cart is empty, add items  <br/><br />
        <a href="home.aspx">Continue Shopping </a>
    </EmptyDataTemplate>
    
         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
         <HeaderStyle BackColor="maroon" Font-Bold="True" ForeColor="White" />
         <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
         <RowStyle BackColor="maroon" ForeColor="white" />
         <SelectedRowStyle BackColor="maroon" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#FFF1D4" />
         <SortedAscendingHeaderStyle BackColor="#B95C30" />
         <SortedDescendingCellStyle BackColor="#F1E5CE" />
         <SortedDescendingHeaderStyle BackColor="#93451F" />
    
    </asp:GridView>
    
    <asp:Label ID="TotalLabel" runat="server"> </asp:Label>
        <asp:Button ID="Btnorder" style="background-color:maroon;color:white" runat="server" Text="Place Order" onclick="Btnorder_Click" />

        <center>
</div>
</div>
</asp:content>