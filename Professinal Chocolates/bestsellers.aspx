<%@ Page Title="" Language="C#" MasterPageFile="~/masterdisplayflowers.master" AutoEventWireup="true" CodeFile="bestsellers.aspx.cs" Inherits="bestsellers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:dbfloralshopConnectionString %>" 
selectCommand="SELECT * FROM [bestsellers]"></asp:SqlDataSource>



<asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
        CellSpacing="1" DataKeyField="id" DataSourceID="SqlDataSource1" 
        RepeatDirection="Horizontal">
        
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        
        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
        <ItemTemplate>
                    
            <asp:image ID="imgurlLabel" runat="server" imageurl='<%# Eval("imgurl")%>' width="200" Height="200" style="border-radius:10%" />

            <br />
            <center>
            <asp:Label style="color:red" ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br/>
            
            <span style="color:blue">Rs.</span><asp:Label ID="priceLabel" style="color:blue" runat="server" Text='<%# Eval("price") %>' />
            <br />
            <p class="add_to_cart">
              <a style="color:red" href="<%# String.Format("AddtoCart.aspx?tblname={0}&prodID={1}","bestsellers",Eval("id")) %>" >Add to Cart</a>
            </p>
        </center>
            <br />
        </ItemTemplate>

        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    </asp:DataList>

           

</asp:Content>

