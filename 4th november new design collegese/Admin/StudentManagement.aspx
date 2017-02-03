<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="StudentManagement.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Andalus" Font-Size="Large" Font-Underline="True" ForeColor="#006666" Text="Studdent Data  ADD HERE"></asp:Label>
    <br />

    <table style="width: 58%; margin-left: 10px; background-color: #FFFFFF; height: 919px;">
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">Roll Number:</strong></td>
            <td class="modal-sm" style="width: 275px">
                <asp:TextBox ID="rollTextbox" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style30">
                <br class="auto-style32" />
                <br class="auto-style32" />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong><span class="auto-style26">Name :</span></strong></td>
            <td class="modal-sm" style="width: 275px">
                <asp:TextBox ID="nameTextbox" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style30">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" class="auto-style32"><strong><span class="auto-style26">Student Image : </span></strong></td>
            <td class="modal-sm" style="width: 275px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style30">
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">Father&#39;s name:</strong></td>
            <td class="modal-sm" style="width: 275px">
                <asp:TextBox ID="fatherNameTextbox" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style30">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">Mother&#39;s name:</strong></td>
            <td class="modal-sm" style="width: 275px">
            
                <asp:TextBox ID="motherNameTextbox" runat="server" Width="300px" Height="35px"></asp:TextBox>
            </td>
            <td class="auto-style36" style="font-size: large; line-height: normal; font-family: Aharoni; color: #000000;">
            
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">&nbsp;PreviousResult:</strong></td>
            <td class="modal-sm" style="width: 275px">
                <asp:TextBox ID="resultTextbox" runat="server" Width="300px" Height="25px"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style36">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">&nbsp;AttendanceYear:</strong></td>
            <td class="modal-sm" style="width: 275px">
                <br />
                <asp:DropDownList ID="yearDropdown" runat="server" Height="35px" Width="143px">
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
            <td class="auto-style30">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong>Class :</strong></td>
            <td class="modal-sm" style="width: 275px">
            
                <asp:DropDownList ID="classDropdown" runat="server" Height="35px" Width="142px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <br />
               
            </td>
            <td class="auto-style30">
            
                <br />
                <br />
                <br />
               
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong><span class="auto-style33">Department</span></strong><span class="auto-style34"> :</span></td>
            <td class="modal-sm" style="width: 275px">
                <br />
                <asp:DropDownList ID="departmentDropdown" runat="server" Height="35px" Width="144px">
                    <asp:ListItem>Null</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Arts</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
            <td class="auto-style29">
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style32"><strong class="auto-style31">Section :</strong></td>
            <td class="modal-sm" style="width: 275px">
                <asp:DropDownList ID="SectionDropDownList" runat="server" Height="35px" Width="95px">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                    <asp:ListItem>E</asp:ListItem>
                    <asp:ListItem>F</asp:ListItem>
                    <asp:ListItem>G</asp:ListItem>
                    <asp:ListItem>H</asp:ListItem>
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>J</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="auto-style29">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" rowspan="1" class="auto-style9"></td>
            <td class="modal-sm" style="width: 275px"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Height="54px" Width="124px" BackColor="#333399" ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style30">&nbsp;</td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" class="auto-style21">&nbsp;</td>
            <td class="modal-sm" style="width: 275px">
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show Total Student Database" Width="193px" BackColor="#6600CC" ForeColor="White" Height="38px" />
                <br />
                <br />
            </td>
            <td class="auto-style29">
                &nbsp;</td>
        </tr>
        <tr>
            <td aria-expanded="undefined" aria-live="off" aria-orientation="horizontal" class="auto-style21" style="height: 24px"></td>
            <td class="modal-sm" style="width: 275px; height: 24px">
                </td>
            <td class="auto-style29" style="height: 24px">
                </td>
        </tr>
    </table>
</asp:Content>
