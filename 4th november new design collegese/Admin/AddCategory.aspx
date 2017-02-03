<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table style="width: 70%">
             <tr>
                 <td style="width: 143px; height: 18px;"></td>
                 <td style="width: 226px; height: 18px;"></td>
                 <td style="height: 18px; width: 160px;"></td>
             </tr>
             <tr>
                 <td class="chzn-rtl" style="width: 143px; height: 29px"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add MenuName : </strong></td>
                 <td style="height: 29px; width: 226px">
                   
                     <asp:TextBox ID="TextBox1" runat="server" Height="64px" OnTextChanged="TextBox1_TextChanged" Width="248px" Font-Bold="True" Font-Size="Larger"></asp:TextBox>
                     <br />
                 </td>
                 <td style="height: 29px; width: 160px;">
                     <asp:Button ID="Button1" runat="server" BackColor="#666666" ForeColor="White" Height="34px" Text="Save" Width="104px" OnClick="Button1_Click" />
                 </td>
             </tr>
             <tr>
                 <td style="width: 143px; height: 18px"></td>
                 <td style="height: 18px; width: 226px">&nbsp;</td>
                 <td style="height: 18px; width: 160px;">&nbsp;</td>
             </tr>
             <tr>
                 <td style="width: 143px; height: 18px"></td>
                 <td style="height: 18px; width: 226px">
                     <asp:Label ID="Label1" runat="server"></asp:Label>
                 </td>
                 <td style="height: 18px; width: 160px;"></td>
             </tr>
             <tr>
                 <td style="width: 143px" class="date-section">&nbsp;</td>
                 <td style="width: 226px">&nbsp;</td>
                 <td style="width: 160px">&nbsp;</td>
             </tr>
         </table>
    </p>
    <p>
    </p>
</asp:Content>
