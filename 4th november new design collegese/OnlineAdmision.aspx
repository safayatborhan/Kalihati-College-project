<%@ Page Title="" Language="C#" MasterPageFile="~/UserContent.Master" AutoEventWireup="true" CodeBehind="OnlineAdmision.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table cellspacing="4" style="width: 100%; font-weight: bold;">
        <tr>
            <td style="width: 194px">&nbsp;</td>
            <td style="width: 376px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px; height: 23px;"></td>
            <td style="width: 376px; height: 23px;"><strong><span style="color: #000099; background-color: #FFFFFF">&nbsp;Online Student Admission Form&nbsp;<br />
                <br />
                </span></strong></td>
            <td style="height: 23px">
                <br />
            </td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 194px; text-align: center; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Name :</td>
            <td style="width: 376px; ">
                <asp:TextBox ID="TextBoxSN" runat="server" Height="35px" Width="335px"></asp:TextBox><br />
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 194px; height: 22px; text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FatherName :</td>
            <td style="height: 22px; width: 376px">
                <asp:TextBox ID="TextBoxFN" runat="server" Height="35px" Width="335px"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 194px; height: 3px; text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date of Birth :</td>
            <td style="height: 3px; width: 376px">
                <asp:TextBox ID="TextBoxDOP" runat="server" Height="35px" Width="335px"></asp:TextBox><br />
            </td>
            <td style="height: 3px">
                <br />
            </td>
            <td style="height: 3px"></td>
        </tr>
        <tr>
            <td style="width: 194px; height: 55px; text-align: center;">Sex</td>
            <td style="height: 55px; width: 376px">
                <asp:DropDownList ID="DropDownListSex" runat="server" Height="35px" Width="137px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td style="height: 55px"></td>
            <td style="height: 55px"></td>
        </tr>
        <tr>
            <td style="width: 194px; height: 22px; text-align: center;">Religion</td>
            <td style="height: 22px; width: 376px">
                <br />
                <asp:TextBox ID="TextBoxRlg" runat="server" Height="35px" Width="335px"></asp:TextBox>
            </td>
            <td style="height: 22px">&nbsp;</td>
            <td style="height: 22px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px; height: 22px; text-align: center;">Email:</td>
            <td style="height: 22px; width: 376px">
                <br />
                <asp:TextBox ID="TextBoxEmail" runat="server" Height="35px" Width="335px"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 194px; height: 22px; text-align: center;">ContactNo</td>
            <td style="width: 376px; height: 22px">
                <br />
                <asp:TextBox ID="txtCN" runat="server" Height="35px" Width="335px"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 194px; text-align: center;">SSC Result</td>
            <td style="width: 376px">
                <br />
                <asp:TextBox ID="TextBoxSSCRslt" runat="server" Height="35px" Width="335px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px; height: 22px; text-align: center;">Group/Subject</td>
            <td style="height: 22px; width: 376px">
                <asp:DropDownList ID="DropDownListGroup" runat="server" Height="35px" Width="154px">
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Art</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 194px; text-align: center;">ParmanentAdress</td>
            <td style="width: 376px">
                <br />
                <asp:TextBox ID="TextBoxPadd" runat="server" Height="59px" Width="336px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px; height: 22px; text-align: center;">HomeDistrict</td>
            <td style="height: 22px; width: 376px">
                <asp:TextBox ID="TextBoxHD" runat="server" Height="65px" Width="334px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 194px; height: 21px"></td>
            <td style="height: 21px; width: 376px">
                <asp:Button ID="btnSubmit" runat="server" Height="55px" Text="Submit" Width="116px" OnClick="Button1_Click" BorderStyle="Inset" ForeColor="#000099" />
            </td>
            <td style="height: 21px">
                <asp:Button ID="Button2" runat="server" Height="55px" Text="Reset" Width="116px" OnClick="Button2_Click" BorderStyle="Inset" ForeColor="#000099" />
            </td>
            <td style="height: 21px"></td>
        </tr>
        <tr>
            <td style="width: 194px">&nbsp;</td>
            <td style="width: 376px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px">&nbsp;</td>
            <td style="width: 376px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px">&nbsp;</td>
            <td style="width: 376px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px">&nbsp;</td>
            <td style="width: 376px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px">&nbsp;</td>
            <td style="width: 376px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px">&nbsp;</td>
            <td style="width: 376px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 194px">&nbsp;</td>
            <td style="width: 376px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
