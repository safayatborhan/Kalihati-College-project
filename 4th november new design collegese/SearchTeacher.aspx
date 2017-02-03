<%@ Page Title="" Language="C#" MasterPageFile="~/UserContent.Master" AutoEventWireup="true" CodeBehind="SearchTeacher.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width: 100%">
        <tr>
            <td class="auto-style32" style="width: 232px; height: 36px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Century Schoolbook" Font-Size="X-Large" Text="ইনডেক্স নম্বর :"></asp:Label>
            </td>
            <td class="auto-style34">
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="250px" OnTextChanged="Button1_Click"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style35" style="width: 232px"></td>
            <td class="auto-style36">
                <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" BorderStyle="Groove" ForeColor="Black" Text="Submit" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style32" style="width: 232px; height: 600px;">
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
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Bind("TeacherName") %>' Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black"></asp:Label>
                        
                        <br />
                        <br />
                        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="পিতার নামঃ"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label21" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text='<%# Bind("FatherName") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="মাতার নামঃ"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label25" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text='<%# Bind("MotherName") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="স্থায়ী ঠিকানাঃ"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label26" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text='<%# Bind("PermanentAddress") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="সন্তানঃ"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label27" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text='<%# Bind("Child") %>'></asp:Label>
                        <br />
                        
                        <br />
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="পদবীঃ"></asp:Label>
                        &nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# Bind("Designation") %>' Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black"></asp:Label>
                        
                        &nbsp;<br /> <br />
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="বিষয়/বিভাগঃ"></asp:Label>
                        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Bind("Department") %>' Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black"></asp:Label>
                        
                        &nbsp;<br /> <br />
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="রক্তের গ্রুপঃ"></asp:Label>
                        &nbsp;&nbsp; <asp:Label ID="Label9" runat="server" Text='<%# Bind("Blood") %>' Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black"></asp:Label>
                    
                        <br />
                    
                        <br />
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="মোবাইলঃ"></asp:Label>
                        
                        &nbsp;
                        <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text='<%# Bind("MobileNo") %>'></asp:Label>
                        <br />
                        <br />
                        <%--<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="ইনডেক্স নাম্বারঃ"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text='<%# Bind("MPODate") %>'></asp:Label>
                        <br />--%>
                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="এমপিও ভুক্তির তারিখঃ"></asp:Label>
                        &nbsp;<asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text='<%# Bind("MPODate") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="শিক্ষাগত যোগ্যতাঃ"></asp:Label>
                        &nbsp;<asp:Label ID="Label17" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text='<%# Bind("Qualification") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text="অভিজ্ঞতাঃ"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Names="Ebrima" Font-Size="Large" ForeColor="Black" Text='<%# Bind("Experience") %>'></asp:Label>
                    
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
