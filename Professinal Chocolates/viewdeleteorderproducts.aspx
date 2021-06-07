<%@ Page Title="" Language="C#" MasterPageFile="adminMaster.master" AutoEventWireup="true" CodeFile="viewdeleteorderproducts.aspx.cs" Inherits="viewupdatedeleteproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbchocolatesConnectionString %>" DeleteCommand="DELETE FROM [orderedproducts] WHERE [productid] = @productid" InsertCommand="INSERT INTO [orderedproducts] ([orderid], [productid], [productname], [productimgurl], [quantity], [price]) VALUES (@orderid, @productid, @productname, @productimgurl, @quantity, @price)" SelectCommand="SELECT * FROM [orderedproducts] WHERE ([orderid] = @orderid)" UpdateCommand="UPDATE [orderedproducts] SET [orderid] = @orderid, [productname] = @productname, [productimgurl] = @productimgurl, [quantity] = @quantity, [price] = @price WHERE [productid] = @productid">
        <DeleteParameters>
            <asp:Parameter Name="productid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
            <asp:Parameter Name="productid" Type="Int32" />
            <asp:Parameter Name="productname" Type="String" />
            <asp:Parameter Name="productimgurl" Type="String" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="price" Type="Double" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="orderid" QueryStringField="orderid" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
            <asp:Parameter Name="productname" Type="String" />
            <asp:Parameter Name="productimgurl" Type="String" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="productid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br/><br/><br/>
    <center><h2 style="color:deeppink"> View /Delete Ordered Products</h2> </center>
    <br/><br/><br/>
     <center>
    <asp:GridView style="background-color:white;color:maroon" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="productid" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
            <asp:BoundField DataField="productid" HeaderText="productid" ReadOnly="True" SortExpression="productid" />
            <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
            <asp:TemplateField HeaderText="productimgurl" SortExpression="productimgurl">
                <%--<EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("productimgurl") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Image ID="Label1" runat="server" imageurl='<%# Bind("productimgurl") %>' Width="100" Height="100"></asp:Image>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>



        <FooterStyle BackColor="white" ForeColor="maroon" />
        <HeaderStyle BackColor="maroon" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="maroon" HorizontalAlign="Center" />
        <RowStyle BackColor="white" ForeColor="maroon" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />



    </asp:GridView>
         <br/><br/><br/>
        </center>
</asp:Content>




