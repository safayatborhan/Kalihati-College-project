<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="AdmissionInfo.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" OnClientClick="return confirm('Are you sure to delete?');" runat="server" OnClick="Button1_Click" Text="Delete all" />
<br />
<div style="overflow: scroll; height: 470px; width:764px;">

    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="ad-style">
        <tr>
            <td style="width: 67px">&nbsp;</td>
            <td class="modal-sm" style="width: 410px">
                &nbsp;
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AllowPaging="True" Width="50px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <EditRowStyle BorderWidth="5px" HorizontalAlign="Center" Width="50px" />
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
            </td>
        </tr>
        <tr>
            <td style="width: 67px">&nbsp;</td>
            <td class="modal-sm" style="width: 410px">&nbsp;</td>
        </tr>
    </table>
&nbsp;
</p>



    </div>
</asp:Content>
