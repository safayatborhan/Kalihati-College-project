<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="GalleryAdmin.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="ad-style">
            <tr>
                <td class="date-section" style="height: 22px; width: 216px"></td>
                <td style="height: 22px; width: 306px"></td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td class="date-section" style="width: 216px">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td style="width: 306px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" BorderStyle="Double" Font-Bold="True" ForeColor="#003366" OnClick="Button1_Click" Text="Upload" Width="85px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="date-section" style="width: 216px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td style="width: 306px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC3300" Text="Click on the image to delete"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="date-section" style="width: 216px">&nbsp;</td>
                <td style="width: 306px">
                    <asp:Panel ID="Panel1" runat="server" BorderStyle="Dashed" ForeColor="#000099" Width="425px">
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
    <p>
    </p>
</asp:Content>
