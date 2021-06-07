<%@ Page Title="" Language="C#" MasterPageFile="adminMaster.master" AutoEventWireup="true" CodeFile="viewdeletefeedback.aspx.cs" Inherits="viewupdatedeletefeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/><br/><br/>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:dbchocolatesConnectionString %>" 
        DeleteCommand="DELETE FROM [Feedback] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Feedback] ([name], [phoneno], [emailid], [imageurl], [Feedback]) VALUES (@name, @phoneno, @emailid, @imageurl, @Feedback)" 
        SelectCommand="SELECT * FROM [Feedback]" 
        UpdateCommand="UPDATE [Feedback] SET [name] = @name, [phoneno] = @phoneno, [emailid] = @emailid, [imageurl] = @imageurl, [Feedback] = @Feedback WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phoneno" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="imageurl" Type="String" />
            <asp:Parameter Name="Feedback" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phoneno" Type="String" />
            <asp:Parameter Name="emailid" Type="String" />
            <asp:Parameter Name="imageurl" Type="String" />
            <asp:Parameter Name="Feedback" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

<center><h2 style="color:maroon"> View / Delete Feedback </h2>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="name" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="phoneno" SortExpression="phoneno">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("phoneno") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("phoneno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="emailid" SortExpression="emailid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("emailid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("emailid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="imageurl" SortExpression="imageurl">
                <EditItemTemplate>
                    <asp:image ID="TextBox4" runat="server" imageurl='<%# Bind("imageurl") %>' style="border-radius:50%;border-color:maroon;border:2px maroon solid;" height="100" width="100"/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:image ID="Label5" runat="server" imageurl='<%# Bind("imageurl") %>' style="border-radius:50%;border-color:maroon;border:2px maroon solid;" height="100" width="100"/>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Feedback" SortExpression="Feedback">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Feedback") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Feedback") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" 
                ShowSelectButton="True" />
            
        </Columns>
        <FooterStyle BackColor="maroon" ForeColor="white" />
        <HeaderStyle BackColor="maroon" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</center>
</asp:Content>

