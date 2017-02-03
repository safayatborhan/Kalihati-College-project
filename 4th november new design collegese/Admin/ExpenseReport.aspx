<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExpenseReport.aspx.cs" Inherits="_4th_november_new_design_collegese.Admin.ExpenseReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div>
    
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="_4th_november_new_design_collegese.Admin.DataSetExpenseReportTableAdapters.RandomExpenseTableTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
    
    </div>
        <ajaxToolkit:Accordion ID="Accordion1" runat="server" Width="878px" AutoSize="None" FadeTransitions="true" TransitionDuration="350" FramesPerSecond="30" Height="588px">
            <Panes>
                <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                    <Header>
                    <div style="background-color: #003366">
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFFF">Expense Report</asp:LinkButton>
                    </div>
                </Header>
                    <Content>
                        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="588px" Width="878px">
                <LocalReport ReportEmbeddedResource="_4th_november_new_design_collegese.ReportExpense.rdlc" ReportPath="ReportExpense.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSetExpense" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
                    </Content>
                </ajaxToolkit:AccordionPane>
            </Panes>
        </ajaxToolkit:Accordion>
    </form>
</body>
</html>
