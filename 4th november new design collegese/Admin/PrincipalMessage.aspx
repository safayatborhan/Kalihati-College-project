<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="PrincipalMessage.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table cellspacing="3" style="width: 66%">
        <tr>
            <td style="width: 118px; height: 22px; background-color: #FFFFFF"></td>
            <td style="height: 22px; background-color: #FFFFFF; width: 396px;">
    <asp:Label ID="Label3" runat="server" style="font-weight: 700; color: #006666; background-color: #FFFFFF;" Text="Add Principal Message "></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 21px; width: 118px">
<asp:Label ID="Label1" runat="server" Text="Add Message " style="font-weight: 700"></asp:Label>
            </td>
            <td style="height: 21px; width: 396px;">
                <br />
<asp:TextBox ID="TextBox1" runat="server" Width="378px" TextMode="MultiLine" Height="272px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 118px; height: 45px;"></td>
            <td style="width: 396px; height: 45px;">
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Message" BackColor="#669999" ForeColor="White" Height="42px" Width="124px" Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td style="width: 118px; height: 27px;"></td>
            <td style="height: 27px; width: 396px">
<asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
