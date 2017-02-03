<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="AllNotice.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllEmployees" TypeName="free_textbox_asp.net.EmployeeDataAccessLayercs" UpdateMethod="UpdateEmployee" DeleteMethod="DeleteEmployee">
        <DeleteParameters>
            <asp:Parameter Name="image" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="179px">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" Height="40px" Width="139px" />
    &nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete All" Height="42px" Width="134px" />
    <asp:Label ID="Label4" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="90px" DataKeyNames="Image">
        <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" OnClientClick="return confirm('Are you sure to delete?');" runat="server" CausesValidation="false" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
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
                        <asp:Image ID="TextBox2" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="100" Width="100" />
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

        <EditRowStyle Height="5px" />
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />

    </asp:GridView>
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowCustomPaging="True" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("sName") %>'></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="image" SortExpression="image">
                <ItemTemplate >
                        <%--<asp:Label ID="Label2" runat="server" Text='<%# Bind("image") %>'></asp:Label>--%>
                        <asp:Image ID="TextBox2" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="100" Width="100" />
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="description" SortExpression="description">
                <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                    </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />

</asp:Content>
