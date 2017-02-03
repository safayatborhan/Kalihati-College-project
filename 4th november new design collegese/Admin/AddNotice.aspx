<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="AddNotice.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" style="width: 66%; height: 572px;">
            <tr>
                <td style="width: 187px; text-align: center; height: 76px;">
                    <strong>
                    &nbsp;<span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category</span>:&nbsp; </strong>
                </td>
                <td style="width: 281px; height: 76px;">
                    <br />
                 
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="280px">
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
                <td style="height: 76px"></td>
            </tr>
            <tr>
                <td style="width: 187px; height: 18px; text-align: center;" class="chzn-rtl">
                    <strong style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name :</strong></td>
                <td style="height: 18px; width: 281px">
                 
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="281px"></asp:TextBox>
                    <br />
                </td>
                <td style="height: 18px"></td>
            </tr>
            <tr>
                <td style="width: 187px; text-align: center;" </td>
                    <strong style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add image :</strong><td style="width: 281px; ">
                    
                 
                    
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="236px" />
                    <br />
                  
                    <br />
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 187px; height: 19px; text-align: center;" class="chzn-rtl"><strong><span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Description </span>: </strong></td>
                <td style="width: 281px; height: 19px;">
                    
                    
                       
                    
                    <asp:TextBox ID="TextBox2" runat="server" Height="213px" TextMode="MultiLine" Width="324px"></asp:TextBox>

                    
                       
                    
                </td>
                <td style="height: 19px"></td>
            </tr>
            <tr>
                <td style="width: 187px" class="chzn-rtl"><strong>&nbsp;</strong></td>
                <td style="width: 281px">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 187px; height: 18px;"></td>
                <td style="width: 281px; height: 18px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td style="height: 18px"></td>
            </tr>
            <tr>
                <td style="width: 187px; height: 18px;"></td>
                <td style="width: 281px; height: 18px;">
                    &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#99FFCC" Height="52px" Text="Save" Width="130px" OnClick="Button1_Click" Font-Italic="True" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td style="height: 18px"></td>
            </tr>
            <tr>
                <td style="width: 187px; height: 18px;"></td>
                <td style="width: 281px; height: 18px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>

                </td>
                <td style="height: 18px"></td>
            </tr>
            <tr>
                <td style="width: 187px; height: 18px;"></td>
                <td style="width: 281px; height: 18px;"></td>
                <td style="height: 18px"></td>
            </tr>
            <tr>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 281px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
