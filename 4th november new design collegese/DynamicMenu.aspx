<%@ Page Title="" Language="C#" MasterPageFile="~/UserContent.Master" AutoEventWireup="true" CodeBehind="DynamicMenu.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="name" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="image" SortExpression="image">
                <EditItemTemplate>
                    <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>--%>
                    <asp:Image ID="TextBox2" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="50" Width="50" />
                </EditItemTemplate>
                <ItemTemplate>
                    <%--<asp:Label ID="Label2" runat="server" Text='<%# Bind("image") %>'></asp:Label>--%>
                    <asp:Image ID="TextBox12" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="100" Width="100" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="description" SortExpression="description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllInformation" TypeName="_4th_november_new_design_collegese.ShowFromCategoryLayer"></asp:ObjectDataSource>
</asp:Content>
