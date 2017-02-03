<%@ Page Title="" Language="C#" MasterPageFile="~/UserContent.Master" AutoEventWireup="true" CodeBehind="SearchStudent.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
   <br />
        <br />
        <table style="width: 100%">
        <tr>
            <td class="auto-style32" style="width: 232px; height: 36px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Century Schoolbook" Font-Size="X-Large" Text="এখানে রোল দিন :"></asp:Label>
            </td>
            <td class="auto-style34">
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="250px" OnTextChanged="Button1_Click"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" BorderStyle="Groove" ForeColor="Black" Text="Submit" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 232px; height: 200px;">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style36" style="height: 300px">
                <asp:DataList ID="DataList1" runat="server" BorderStyle="Dotted">
                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    <ItemTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <asp:Image ID="Image1" runat="server" Height="179px" ImageUrl='<%# Eval ("Image") %>' Width="266px" />
                        
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="নামঃ"></asp:Label>
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Bind("sName") %>' Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black"></asp:Label>
                        
                        <br />
                        
                        <br />
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="পিতার নামঃ"></asp:Label>
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Bind("FatherName") %>' Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black"></asp:Label>
                        
                        &nbsp;<br /> <br />
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="মাতার নামঃ"></asp:Label>
                        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Bind("MotherName") %>' Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black"></asp:Label>
                        
                        &nbsp;<br /> <br />
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="পূর্ববর্তী রেজাল্টঃ"></asp:Label>
                        &nbsp;&nbsp; <asp:Label ID="Label9" runat="server" Text='<%# Bind("Result") %>' Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black"></asp:Label>
                    
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
