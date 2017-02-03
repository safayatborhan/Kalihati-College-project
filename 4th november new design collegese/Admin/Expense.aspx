<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="Expense.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm31" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <%--<asp:Label ID="LabelGUID" runat="server" ForeColor="#663300" Text="Label"></asp:Label>--%>
    <p>
        <%--<asp:Label ID="LabelGUID0" runat="server" ForeColor="#663300" Text="Label"></asp:Label>--%>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteExpense" InsertMethod="InsertExpense" SelectMethod="GetAllExpense" TypeName="_4th_november_new_design_collegese.Admin.RandomExpenseInsertUpdateDelete" UpdateMethod="UpdateExpense">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Purpose" Type="String" />
                <asp:Parameter Name="Amount" Type="String" />
                <asp:Parameter Name="Month" Type="String" />
                <asp:Parameter Name="Datee" Type="String" />
                
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Purpose" Type="String" />
                <asp:Parameter Name="Amount" Type="String" />
                <asp:Parameter Name="Month" Type="String" />
                <asp:Parameter Name="Datee" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <ajaxToolkit:Accordion ID="Accordion1" runat="server" Width="850px" Height="1000px" AutoSize="None" FadeTransitions="true" TransitionDuration="350" FramesPerSecond="30">
                    <Panes>
                        <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                            <Header>
                                <div style="background-color: #003366">
                                    <asp:LinkButton ID="LinkButtonExpense" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFFF">Expense and Purpose</asp:LinkButton>
                                 </div>
                            </Header>
                            <Content>
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="ID" ShowFooter="True">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID" SortExpression="ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:LinkButton ID="LinkButtonExpenseInsertIntoTable" runat="server" OnClick="LinkButtonExpenseInsertIntoTable_Click">Insert</asp:LinkButton>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Purpose" SortExpression="Purpose">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Purpose") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Purpose") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBoxPurposeInsert11" runat="server" Width="200px"></asp:TextBox>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Amount" SortExpression="Amount">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Amount") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Amount") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="TextBoxAmountInsert11" runat="server" Width="100px"></asp:TextBox>
                                </FooterTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Month" SortExpression="Month">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox26777" runat="server" Text='<%# Bind("Month") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label28797" runat="server" Text='<%# Bind("Month") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:DropDownList ID="DropDownList34775" runat="server" Width="100px">
                                        <asp:ListItem>January</asp:ListItem>
                                        <asp:ListItem>February</asp:ListItem>
                                        <asp:ListItem>March</asp:ListItem>
                                        <asp:ListItem>April</asp:ListItem>
                                        <asp:ListItem>May</asp:ListItem>
                                        <asp:ListItem>June</asp:ListItem>
                                        <asp:ListItem>July</asp:ListItem>
                                        <asp:ListItem>August</asp:ListItem>
                                        <asp:ListItem>September</asp:ListItem>
                                        <asp:ListItem>October</asp:ListItem>
                                        <asp:ListItem>November</asp:ListItem>
                                        <asp:ListItem>December</asp:ListItem>
                                    </asp:DropDownList>
                                </FooterTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Date" SortExpression="Datee">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Datee") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Datee") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
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
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                            </Content>
                        </ajaxToolkit:AccordionPane>
                    </Panes>
                </ajaxToolkit:Accordion>
            </ContentTemplate>
        </asp:UpdatePanel>
    </p>
    <p>
    </p>
</asp:Content>
