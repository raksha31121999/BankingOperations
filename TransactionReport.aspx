<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransactionReport.aspx.cs" Inherits="TransactionReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
             body{
            background-color:linen;
        }
        h1{
            font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:Algerian;
           text-align:center;
        }
         a{
            font-size:larger;
            font-display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-style:oblique;
            color:indigo;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color:coral">Daily Transaction's Report</h1>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Transno" DataSourceID="SqlDataSource1" GridLines="None">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Transno" HeaderText="Transno" ReadOnly="True" SortExpression="Transno" />
                    <asp:BoundField DataField="Transdate" HeaderText="Transdate" SortExpression="Transdate" />
                    <asp:BoundField DataField="Accno" HeaderText="Accno" SortExpression="Accno" />
                    <asp:BoundField DataField="Transtype" HeaderText="Transtype" SortExpression="Transtype" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bankingdbConnectionString %>" DeleteCommand="DELETE FROM [acctransact] WHERE [Transno] = @Transno" InsertCommand="INSERT INTO [acctransact] ([Transno], [Transdate], [Accno], [Transtype], [Amount]) VALUES (@Transno, @Transdate, @Accno, @Transtype, @Amount)" SelectCommand="SELECT * FROM [acctransact]" UpdateCommand="UPDATE [acctransact] SET [Transdate] = @Transdate, [Accno] = @Accno, [Transtype] = @Transtype, [Amount] = @Amount WHERE [Transno] = @Transno">
                <DeleteParameters>
                    <asp:Parameter Name="Transno" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Transno" Type="Int32" />
                    <asp:Parameter Name="Transdate" Type="String" />
                    <asp:Parameter Name="Accno" Type="Int32" />
                    <asp:Parameter Name="Transtype" Type="String" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Transdate" Type="String" />
                    <asp:Parameter Name="Accno" Type="Int32" />
                    <asp:Parameter Name="Transtype" Type="String" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                    <asp:Parameter Name="Transno" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            | <a style="color:darkblue" href="Manager.aspx">Home Page</a> |
            <br />
            <br />
        </div>
    </form>
</body>
</html>
