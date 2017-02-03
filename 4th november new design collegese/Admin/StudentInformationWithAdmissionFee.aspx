<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="StudentInformationWithAdmissionFee.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm33" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />
    <table class="ad-style">
        <tr>
            <td style="height: 27px; width: 293px">
                &nbsp;</td>
            <td style="height: 27px; width: 312px">
    <asp:Label ID="Label3" runat="server" Text="Student Information" Font-Bold="True" Font-Overline="False" ForeColor="#0066CC" Font-Size="Larger" style="font-size: medium"></asp:Label>
                        </td>
            <td style="width: 396px; height: 27px">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    
    <p>
        
        <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Width="850px">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Image" SortExpression="image">
                    <ItemTemplate>
                        <asp:Image ID="TextBox12" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="100" Width="100" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Class" SortExpression="Class">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Class") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Roll" SortExpression="Roll">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Roll") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FatherName" SortExpression="FatherName">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("FatherName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MotherName" SortExpression="MotherName">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MotherName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Result" SortExpression="Result">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Result") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Amount" SortExpression="Amount">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Amount") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Month1" SortExpression="Month1">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Month1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date1" SortExpression="Date1">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Date1") %>'></asp:Label>
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
        </asp:Panel>

        
    </p>
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllEmployees" TypeName="free_textbox_asp.net.EmployeeDataAccessLayercs"></asp:ObjectDataSource>
    </p>
    <p>
    </p>


</asp:Content>
