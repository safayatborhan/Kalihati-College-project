<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="TeacherAttendance.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm35" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CategoryConnectionString %>" ProviderName="<%$ ConnectionStrings:CategoryConnectionString.ProviderName %>" SelectCommand="SELECT [TeacherName] FROM [TeacherManagement]"></asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="Please select date first" Font-Bold="True" Font-Size="Large" ForeColor="#003366"></asp:Label>
                                <asp:Calendar ID="PrettyCalendar111" runat="server">
                                        <TodayDayStyle ForeColor="Red" BackColor="Aqua"></TodayDayStyle>
                                        <DayStyle Font-Bold="False"
                                            HorizontalAlign="Left"
                                            Height="10px"
                                            BorderWidth="1px"
                                            BorderStyle="Solid"
                                            BorderColor="Blue"
                                            Width="10px"
                                            VerticalAlign="Top"
                                            BackColor="WhiteSmoke"></DayStyle>

                                    </asp:Calendar>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="TeacherName" SortExpression="TeacherName">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TeacherName") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("TeacherName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click1" BorderStyle="Outset" ForeColor="#003366" />
                                <br />
                                <br />                                
    <asp:Button ID="Button2" runat="server" Text="Search" BorderStyle="Outset" ForeColor="#003366" OnClick="Button2_Click" />
                                
    <br />
    <asp:Label ID="Label4" runat="server" Text="Teachers name : " Font-Bold="True" Font-Size="Large" ForeColor="#003366"></asp:Label>
    <asp:ListBox ID="ListBox1" runat="server" Width="400px" Font-Bold="True" Font-Size="Larger"></asp:ListBox>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                
            </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>
