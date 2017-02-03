<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="StudentDatabase.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="ad-style">
        <tr>
            <td class="date-section" style="width: 198px">&nbsp;</td>
            <td style="width: 274px">
                <asp:Label ID="Label5" runat="server" BorderStyle="Double" Font-Bold="True" Font-Names="Batang" ForeColor="#0099FF" Text="Student Record Directory"></asp:Label>
            </td>
            <td style="width: 146px">
                <asp:Button ID="Button5" runat="server" OnClientClick="return confirm('Are you sure to delete?');" BorderStyle="Dashed" Font-Bold="True" Font-Size="Medium" ForeColor="#003399" OnClick="Button5_Click" Text="Delete All" />
            </td>
        </tr>
        <tr>
            <td style="height: 24px; width: 198px"></td>
            <td style="height: 24px; width: 274px;"></td>
            <td style="width: 146px; height: 24px"></td>
        </tr>
        <tr>
            <td style="height: 24px; width: 198px">
                <asp:Label ID="Label1" runat="server" Text="Class" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="#006600"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="117px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>Degree</asp:ListItem>
                    <asp:ListItem>Hons</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Search" BorderStyle="Dashed" Font-Bold="True" Font-Size="Medium" ForeColor="#003399" OnClick="Button1_Click1" />
            </td>
            <td style="height: 24px; width: 274px;">
                <asp:Label ID="Label2" runat="server" Text="Department" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="#006600"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="117px">
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Arts</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                    <asp:ListItem>None</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" Text="Search" BorderStyle="Dashed" Font-Bold="True" Font-Size="Medium" ForeColor="#003399" OnClick="Button2_Click1" />
            </td>
            <td style="width: 146px; height: 24px;">
                <asp:Label ID="Label3" runat="server" Text="Year" Font-Bold="True" Font-Italic="True" Font-Size="Larger" ForeColor="#006600"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="117px">
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button3" runat="server" Text="Search" BorderStyle="Dashed" Font-Bold="True" Font-Size="Medium" ForeColor="#003399" OnClick="Button3_Click1" />
            </td>
        </tr>
        <tr>
            <td class="date-section" style="width: 198px">&nbsp;</td>
            <td style="width: 274px">&nbsp;</td>
            <td style="width: 146px">&nbsp;</td>
        </tr>
        <tr>
            <td class="date-section" style="width: 198px">&nbsp;</td>
            <td style="width: 274px">&nbsp;</td>
            <td style="width: 146px">&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="image" CellPadding="4" ForeColor="#333333" GridLines="None" Width="464px">
        <AlternatingRowStyle BackColor="White" />
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
            <asp:TemplateField HeaderText="Image" SortExpression="image">
                <EditItemTemplate>
                    <%--<asp:TextBox ID="TextBox1" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="50" Width="50"></asp:TextBox>--%>
                    <asp:Image ID="TextBox1" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="50" Width="50" />
                </EditItemTemplate>
                <ItemTemplate>
                    <%--<asp:Label ID="Label1" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="100" Width="100"></asp:Label>--%>
                    <asp:Image ID="TextBox12" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="100" Width="100" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RollNumber" SortExpression="rollNumber">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("rollNumber") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("rollNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Result" SortExpression="result">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("result") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("result") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteStudent" SelectMethod="GetAllStudent" TypeName="_4th_november_new_design_collegese.ShowStudentDatabaseLayer" UpdateMethod="UpdateStudent">
        <DeleteParameters>
            <asp:Parameter Name="image" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="rollNumber" Type="String" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="result" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <br />

    </asp:Content>
