<%@ Page Title="" Language="C#" MasterPageFile="~/ContentMaster.Master" AutoEventWireup="true" CodeBehind="ReportingWithAccordion.aspx.cs" Inherits="_4th_november_new_design_collegese.WebForm32" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="_4th_november_new_design_collegese.Admin.DataSetIncomeReportTableAdapters.IncomeTableTableAdapter" InsertMethod="Insert">
            <InsertParameters>
                <asp:Parameter Name="Purpose" Type="String" />
                <asp:Parameter Name="Amount" Type="String" />
                <asp:Parameter Name="Month1" Type="String" />
                <asp:Parameter Name="Datee" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server"></asp:ObjectDataSource>
    </p>
    <ajaxToolkit:Accordion ID="Accordion1" runat="server" Width="878px" AutoSize="None" FadeTransitions="true" TransitionDuration="350" FramesPerSecond="30" Height="588px">
        <Panes>
            <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                <Header>
                    <div style="background-color: #003366">
                        <asp:LinkButton ID="LinkButtonIncome" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFFF">Income Report</asp:LinkButton>
                    </div>
                </Header>
                <Content>
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server">
                        <LocalReport ReportEmbeddedResource="_4th_november_new_design_collegese.ReportIncomeExpense.rdlc" ReportPath="ReportIncomeExpense.rdlc">
                            <DataSources>
                                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSetIncomeReport" />
                            </DataSources>
                        </LocalReport>
                    </rsweb:ReportViewer>
                </Content>
            </ajaxToolkit:AccordionPane>
        </Panes>
    </ajaxToolkit:Accordion>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
