<%@ Page Title="" Language="C#" MasterPageFile="~/UserContent.Master" AutoEventWireup="true" CodeBehind="DynamicMenu1.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="ad-style">
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 779px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 24px; width: 271px"></td>
            <td style="height: 24px; width: 779px"></td>
        </tr>
        <tr>
            <td style="width: 271px">&nbsp;</td>
            <td style="width: 779px">
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" Width="714px" CssClass="auto-style5" Height="100%" BorderStyle="Dotted">
                            <EditItemStyle BorderStyle="Dotted" />
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("sName") %>' Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:Image ID="image" runat="server" Height="150" ImageUrl='<%# Eval ("Image") %>' Width="150" />
                                <br />
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Description") %>' Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                        </asp:DataList>
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#79B5A5" BorderStyle="Dotted" Font-Bold="True" OnClick="Button1_Click" Text="Previous" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#79B5A5" BorderStyle="Dotted" Font-Bold="True" OnClick="Button2_Click" Text="Next" Width="57px" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
