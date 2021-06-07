<%@ Page Title="" Language="C#" MasterPageFile="adminMaster.master" AutoEventWireup="true" CodeFile="viewdeleteorders.aspx.cs" Inherits="viewupdatedeleteorders" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbchocolatesConnectionString %>" DeleteCommand="DELETE FROM [tblorder] WHERE [orderid] = @orderid" InsertCommand="INSERT INTO [tblorder] ([orderid], [orderdate], [customeremailid], [totalamount]) VALUES (@orderid, @orderdate, @customeremailid, @totalamount)" SelectCommand="SELECT * FROM [tblorder]" UpdateCommand="UPDATE [tblorder] SET [orderdate] = @orderdate, [customeremailid] = @customeremailid, [totalamount] = @totalamount WHERE [orderid] = @orderid">
        <DeleteParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
            <asp:Parameter Name="orderdate" Type="String" />
            <asp:Parameter Name="customeremailid" Type="String" />
            <asp:Parameter Name="totalamount" Type="Single" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="orderdate" Type="String" />
            <asp:Parameter Name="customeremailid" Type="String" />
            <asp:Parameter Name="totalamount" Type="Single" />
            <asp:Parameter Name="orderid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br><br><br>
<center><h2 style="color:maroon"> <b>View /Delete Orders</b></h2>
                <br><br>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="orderid" DataSourceID="SqlDataSource1">
        <Columns>
            
            <asp:TemplateField HeaderText="orderid" SortExpression="orderid">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("orderid") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <a href="<%# String.Format("viewdeleteorderproducts.aspx?orderid={0}",Eval("orderid")) %>" style="color:maroon">View Products </a>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderid") %>'></asp:Label>
                        
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="orderdate" HeaderText="orderdate" SortExpression="orderdate" />
            <asp:BoundField DataField="customeremailid" HeaderText="customeremailid" SortExpression="customeremailid" />
            <asp:BoundField DataField="totalamount" HeaderText="totalamount" SortExpression="totalamount" />
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="maroon" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="white" ForeColor="maroon" />
        <SelectedRowStyle BackColor="purple" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    </center>

        <br><br><br>
</asp:Content>

