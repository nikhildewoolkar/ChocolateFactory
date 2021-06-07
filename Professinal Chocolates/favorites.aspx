<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="favorites.aspx.cs" Inherits="avorites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbchocolatesConnectionString %>" SelectCommand="SELECT * FROM [favorites]"></asp:SqlDataSource>
    <center><h2 style="color:maroon" class="title-w3"> Forever Favorite Chocolates</h2><br>
<asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyField="chocolate_id" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="4" RepeatDirection="Horizontal">
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <ItemTemplate>
        <%--chocolate_id:
        <asp:Label ID="chocolate_idLabel" runat="server" Text='<%# Eval("chocolate_id") %>' />
        <br />--%>
        
        
        <asp:image ID="chocolate_imgurlLabel" runat="server" imageurl='<%# Eval("chocolate_imgurl") %>' width="200" Height="200"/>
        <br />
        <asp:Label ID="chocolate_nameLabel" runat="server" Text='<%# Eval("chocolate_name") %>' />
        <br />
        
        <asp:Label ID="chocolate_descriptionLabel" runat="server" Text='<%# Eval("chocolate_description") %>' />
        <br />
        
        <asp:Label ID="chocolate_priceLabel" runat="server" Text='<%# Eval("chocolate_price") %>' />
        <a href="<%# String.Format("AddtoCart.aspx?tablename={0}&chocolateid={1}","favorites",Eval("chocolate_id")) %>" ><img src="images/cart.gif"></a>
        
        
        <br />
        
<br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        </center>
</asp:Content>

