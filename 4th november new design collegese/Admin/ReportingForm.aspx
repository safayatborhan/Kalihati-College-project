<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportingForm.aspx.cs" Inherits="_4th_november_new_design_collegese.Admin.WebForm2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="_4th_november_new_design_collegese.Admin.DataSetIncomeReportTableAdapters.IncomeTableTableAdapter">

        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="_4th_november_new_design_collegese.Admin.DataSetExpenseReportTableAdapters.RandomExpenseTableTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
        
        <ajaxToolkit:Accordion ID="Accordion1" runat="server" Width="878px" AutoSize="None" FadeTransitions="true" TransitionDuration="350" FramesPerSecond="30" Height="588px">
            <Panes>
                <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                    <Header>
                    <div style="background-color: #003366">
                        <asp:LinkButton ID="LinkButtonIncome" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFFF">Income Report</asp:LinkButton>
                    </div>
                </Header>
                    <Content>
                        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="588px" Width="878px">
                    <LocalReport ReportEmbeddedResource="_4th_november_new_design_collegese.ReportIncomeExpense.rdlc" ReportPath="ReportIncomeExpense.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSetIncomeReport" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                    </Content>
                </ajaxToolkit:AccordionPane>
                <%--<ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
                    <Header>
                    <div style="background-color: #003366">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFFF">Income Report</asp:LinkButton>
                    </div>
                </Header>
                    <Content>
                        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
                <LocalReport ReportEmbeddedResource="_4th_november_new_design_collegese.ReportExpense.rdlc" ReportPath="ReportExpense.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSetExpense" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
                    </Content>
                </ajaxToolkit:AccordionPane>--%>
            </Panes>
        </ajaxToolkit:Accordion>

        <div class="IncomeReport">
                <%--<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="473px" Width="601px">
                    <LocalReport ReportEmbeddedResource="_4th_november_new_design_collegese.ReportIncomeExpense.rdlc" ReportPath="ReportIncomeExpense.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSetIncomeReport" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>--%>
                <br />
            </div>
        <div class="ExpenseReport">
            <%--<rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
                <LocalReport ReportEmbeddedResource="_4th_november_new_design_collegese.ReportExpense.rdlc" ReportPath="ReportExpense.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSetExpense" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>--%>
                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="GetData" TypeName="DataSetExpenseReportTableAdapters.RandomExpenseTableTableAdapter"></asp:ObjectDataSource>
            </div>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="DataSetIncomeReportTableAdapters.IncomeTableTableAdapter"></asp:ObjectDataSource>
        
    </form>
</body>
</html>
