<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_4th_november_new_design_collegese.Admin.WebForm1" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="_4th_november_new_design_collegese.Admin.DataSetIncomeTableAdapters.IncomeTableTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="Purpose" Type="String" />
                <asp:Parameter Name="Amount" Type="String" />
                <asp:Parameter Name="Month1" Type="String" />
                <asp:Parameter Name="Datee" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportEmbeddedResource="_4th_november_new_design_collegese.Admin.ReportIncome.rdlc" ReportPath="ReportIncome.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSetIncome" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="DataSetIncomeTableAdapters.IncomeTableTableAdapter"></asp:ObjectDataSource>
    </form>
</body>
</html>
