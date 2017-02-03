<%@ Page Title="" Language="C#" MasterPageFile="~/UserContent.Master" AutoEventWireup="true" CodeBehind="SearchRecord.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <table class="ad-style">
        <tr>
            <td style="height: 27px; width: 293px">
    <asp:Label ID="Label2" runat="server" Text="শ্রেনীঃ" Font-Bold="True" Font-Overline="False" ForeColor="#0066CC" Font-Size="Larger" style="font-size: medium"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="150px">
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
    </asp:DropDownList>
                <asp:Button ID="Button4" runat="server" BackColor="#9999FF" Height="28px" Text="Search" Width="84px" OnClick="Button4_Click" />
            </td>
            <td style="height: 27px; width: 312px">
    <asp:Label ID="Label3" runat="server" Text="বিষয়/বিভাগঃ" Font-Bold="True" Font-Overline="False" ForeColor="#0066CC" Font-Size="Larger" style="font-size: medium"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="136px">
        <asp:ListItem>Science</asp:ListItem>
        <asp:ListItem>Arts</asp:ListItem>
        <asp:ListItem>Commerce</asp:ListItem>
        <asp:ListItem>Null</asp:ListItem>
    </asp:DropDownList>
                            <asp:Button ID="Button5" runat="server" BackColor="#9999FF" Text="Search" Width="84px" OnClick="Button5_Click" Height="28px" />
                        </td>
            <td style="width: 396px; height: 27px">
                <asp:Label ID="Label4" runat="server" Text="বর্ষঃ" Font-Bold="True" Font-Overline="False" ForeColor="#0066CC" Font-Size="Larger" style="font-size: medium"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" Height="35px" Width="135px">
        <asp:ListItem>2015</asp:ListItem>
        <asp:ListItem>2016</asp:ListItem>
        <asp:ListItem>2017</asp:ListItem>
        <asp:ListItem>2018</asp:ListItem>
        <asp:ListItem>2019</asp:ListItem>
        <asp:ListItem>2020</asp:ListItem>
    </asp:DropDownList>
                            <asp:Button ID="Button6" runat="server" BackColor="#9999FF" Height="28px" Text="Search" Width="84px" OnClick="Button6_Click" />
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 100%">
        <tr>
            <td style="height: 18px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 29px; height: 18px;"></td>
            
        </tr>
        <tr>
            <td style="width: 29px">&nbsp;</td>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="height: 523px;">&nbsp;</td>
                        <td style="height: 523px">
         

                             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" BorderColor="Black" CellPadding="3" BackColor="White" BorderStyle="None" BorderWidth="1px" Width="654px">
        <Columns>
           
            <%--<asp:BoundField DataField="rollNumber" HeaderText="RollNumber" SortExpression="rollNumber" ReadOnly="true" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="result" HeaderText="Result" SortExpression="result" />--%>

            <asp:TemplateField HeaderText="image" SortExpression="image">
                    <EditItemTemplate>
                        <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>--%>
                        <asp:Image ID="TextBox10" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="50" Width="50" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%--<asp:Label ID="Label2" runat="server" Text='<%# Bind("image") %>'></asp:Label>--%>
                        <asp:Image ID="TextBox12" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="100" Width="100" />
                    </ItemTemplate>
                </asp:TemplateField>

            <asp:TemplateField HeaderText="rollNumber" SortExpression="rollNumber">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("rollNumber") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Bind("rollNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>    

                <asp:TemplateField HeaderText="name" SortExpression="name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="result" SortExpression="result">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("result") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Bind("result") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" BorderColor="#CC6600" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllStudent" TypeName="_4th_november_new_design_collegese.ShowStudentDatabaseLayer" DeleteMethod="DeleteStudent" UpdateMethod="UpdateStudent">
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
    <br />
    <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="653px" AllowPaging="True">
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
                             <br />

                        </td>
                    </tr>
                    <tr>
                        <td style="height: 18px;"></td>
                        <td style="height: 18px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 18px;"></td>
                        <td style="height: 18px">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>
