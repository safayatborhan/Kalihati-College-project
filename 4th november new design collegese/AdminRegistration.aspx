<%@ Page Title="" Language="C#" MasterPageFile="~/UserContent.Master" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="height: 37px; width: 310px"></td>
            <td style="width: 285px; height: 37px"></td>
            <td style="height: 37px"></td>
        </tr>
        <tr>
            <td style="width: 310px; height: 37px"></td>
            <td style="width: 285px; height: 37px"></td>
            <td style="height: 37px"></td>
        </tr>
        <tr>
            <td class="date-section" style="width: 310px; font-family: Aharoni; color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USERNAME :</td>
            <td style="width: 285px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="date-section" style="width: 310px; font-family: Aharoni; color: #000000; height: 38px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PASSWORD :</td>
            <td style="width: 285px; height: 38px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 38px">&nbsp;</td>
        </tr>
        <tr>
            <td class="date-section" style="width: 310px">&nbsp;</td>
            <td style="width: 285px">
                <asp:Button ID="Button1" runat="server" BorderStyle="Dotted" Font-Bold="True" OnClick="Button1_Click" Text="Register" Font-Size="Larger" />
            </td>
            <td>
                &nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#003366"></asp:Label></td>
        </tr>
        <tr>
            <td class="date-section" style="width: 310px">&nbsp;</td>
            <td style="width: 285px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="date-section" style="width: 310px; height: 24px"></td>
            <td style="width: 285px; height: 24px"></td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td class="date-section" style="width: 310px; height: 69px"></td>
            <td style="width: 285px; height: 69px"></td>
            <td style="height: 69px"></td>
        </tr>
    </table>
</asp:Content>
