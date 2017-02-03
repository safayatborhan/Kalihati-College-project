<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="TeachersInformation.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Both">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="image">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return confirm('Are you sure to delete?');" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
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
                    <asp:Image ID="TextBox20" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="100" Width="100" />
                </ItemTemplate>
            </asp:TemplateField>
            
            <%--editing--%>
            <asp:TemplateField HeaderText="FatherName" SortExpression="fatherName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox30" runat="server" Text='<%# Bind("fatherName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label33" runat="server" Text='<%# Bind("fatherName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MotherName" SortExpression="motherName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox40" runat="server" Text='<%# Bind("motherName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label43" runat="server" Text='<%# Bind("motherName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PermanentAddress" SortExpression="permanentAddress">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox50" runat="server" Text='<%# Bind("permanentAddress") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label53" runat="server" Text='<%# Bind("permanentAddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Child" SortExpression="child">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox60" runat="server" Text='<%# Bind("child") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label63" runat="server" Text='<%# Bind("child") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            

            <asp:TemplateField HeaderText="designation" SortExpression="designation">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("designation") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("designation") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="department" SortExpression="department">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("department") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("department") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="blood" SortExpression="blood">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("blood") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("blood") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="mobile" SortExpression="mobile">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("mobile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="index" SortExpression="index">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("index") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("index") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="mpo" SortExpression="mpo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("mpo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("mpo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="qualification" SortExpression="qualification">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("qualification") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="experience" SortExpression="experience">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("experience") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("experience") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Panel>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteStudent" SelectMethod="GetAllTeacher" TypeName="_4th_november_new_design_collegese.ShowTeachersInformationLayer" UpdateMethod="UpdateStudent">
    <DeleteParameters>
        <asp:Parameter Name="image" Type="String" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="image" Type="String" />
        <asp:Parameter Name="fatherName" Type="String" />
        <asp:Parameter Name="motherName" Type="String" />
        <asp:Parameter Name="permanentAddress" Type="String" />
        <asp:Parameter Name="child" Type="String" />
        <asp:Parameter Name="designation" Type="String" />
        <asp:Parameter Name="department" Type="String" />
        <asp:Parameter Name="blood" Type="String" />
        <asp:Parameter Name="mobile" Type="String" />
        <asp:Parameter Name="index" Type="String" />
        
        <asp:Parameter Name="mpo" Type="String" />
        <asp:Parameter Name="qualification" Type="String" />
        <asp:Parameter Name="experience" Type="String" />
    </UpdateParameters>
</asp:ObjectDataSource>
    
</asp:Content>
