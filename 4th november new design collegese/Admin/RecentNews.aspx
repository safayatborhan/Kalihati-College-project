<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="RecentNews.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table cellspacing="3" style="width: 50%">
        <tr>
            <td style="width: 85px; height: 19px; background-color: #999999;"></td>
            <td style="width: 264px; height: 19px; background-color: #666666;"><span style="color: #FFFFFF"><strong>Notice -1</strong></span>:</td>
            <td style="height: 19px; background-color: #666666; width: 222px;"></td>
        </tr>
        <tr>
            <td style="width: 85px" class="date-section"><strong>Add Notice</strong></td>
            <td style="width: 264px" class="modal-sm">
                <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="313px" Height="62px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 222px">
            <asp:FileUpload ID="FileUpload1" runat="server" Height="23px" style="margin-left: 6px" />
            </td>
        </tr>
        <tr>
            <td style="height: 21px; width: 85px"></td>
            <td style="height: 21px; width: 264px"></td>
            <td style="height: 21px; width: 222px;"></td>
        </tr>
        <tr>
            <td style="width: 85px" class="date-section">&nbsp;</td>
            <td style="width: 264px" class="modal-sm">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Height="36px" Width="89px" BackColor="#666666" ForeColor="White" />
            </td>
            <td style="width: 222px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 85px" class="date-section">&nbsp;</td>
            <td style="width: 264px" class="modal-sm">&nbsp;</td>
            <td style="width: 222px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 85px; height: 20px; background-color: #999999;"></td>
            <td style="width: 264px; height: 20px; color: #FFFFFF; background-color: #666666;"><strong style="background-color: #666666">Notice-2:</strong></td>
            <td style="height: 20px; background-color: #666666; width: 222px;"></td>
        </tr>
        <tr>
            <td style="width: 85px; height: 54px;"><strong>Add Notice</strong></td>
            <td style="width: 264px; height: 54px;">
                <br />
            <asp:TextBox ID="TextBox2" runat="server" Width="309px" TextMode="MultiLine" Height="61px"></asp:TextBox>
            </td>
            <td style="height: 54px; width: 222px;">
            <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 85px" class="date-section">&nbsp;</td>
            <td style="width: 264px" class="modal-sm">&nbsp;</td>
            <td style="width: 222px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 85px" class="date-section">&nbsp;</td>
            <td style="width: 264px" class="modal-sm">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" Height="32px" Width="100px" BackColor="#666666" ForeColor="White" style="margin-bottom: 2px" />
            </td>
            <td style="width: 222px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 85px" class="date-section">&nbsp;</td>
            <td style="width: 264px" class="modal-sm">&nbsp;</td>
            <td style="width: 222px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px; width: 85px; background-color: #999999;"></td>
            <td style="width: 264px; height: 21px; color: #FFFFFF; background-color: #666666;"><strong style="background-color: #666666">Notice-3:</strong></td>
            <td style="height: 21px; background-color: #666666; width: 222px;"></td>
        </tr>
        <tr>
            <td style="width: 85px" class="date-section"><strong>Add Notice</strong></td>
            <td style="width: 264px" class="modal-sm">
                <br />
            <asp:TextBox ID="TextBox3" runat="server" Width="311px" TextMode="MultiLine" Height="59px"></asp:TextBox>
            </td>
            <td style="width: 222px">
            <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 85px" class="date-section">&nbsp;</td>
            <td style="width: 264px" class="modal-sm">&nbsp;</td>
            <td style="width: 222px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 85px; height: 40px;"></td>
            <td style="width: 264px; height: 40px;">
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save" Height="37px" Width="93px" BackColor="#666666" ForeColor="White" />
            </td>
            <td style="width: 222px; height: 40px;"></td>
        </tr>
        <tr>
            <td style="width: 85px" class="date-section">&nbsp;</td>
            <td style="width: 264px" class="modal-sm">&nbsp;</td>
            <td style="width: 222px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
