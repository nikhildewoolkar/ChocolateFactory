<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbchocolatesConnectionString %>"  SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
    <br/>
    <center><h2 style="color:Maroon">What Our Customers say about us....... </h2>
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataKeyField="id" DataSourceID="SqlDataSource1" 
        GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
         
          
          
            <asp:image ID="imageurlLabel" runat="server" border-color="maroon" imageurl='<%# Eval("imageurl") %>' width="200" height="200" alt="" style="border-radius:25%" />
            <br />
            <b><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></b><br>
                    
                    <b><asp:Label ID="feedbackLabel" runat="server" Text='<%# Eval("feedback") %>' /></b>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </center>
</asp:Content>

