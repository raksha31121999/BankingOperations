<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchAccount.aspx.cs" Inherits="SearchAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:aliceblue;
           
        }
        h1{
            font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:Algerian;
           text-align:center;
        }
        td {
            font-display: block;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }

        .auto-style1 {
            height: 207px;
            width: 386px;
        }
        td{
            color:brown;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
        }
    </style>
</head>
<body style="height: 675px">
    <form id="form1" runat="server">
        <div>
            <h1 style="color:red">Search An Account</h1>
            <hr /><hr />
            <table class="auto-style1">
                <tr>
                    <td >Account Number</td>
                    <td><asp:TextBox ID="TextBox1" runat="server" BackColor="#66ffcc"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account Number cannot be Empty" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="color:brown">Account Name</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" BackColor="#66ffcc"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name cannot be Empty" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit" BackColor="#ff00ff" Font-Bold="true" Font-Italic="true" Font-Size="Large"/></td>
                </tr>
                <tr>
                    <td>  <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" Font-Bold="true" Font-Size="Large" ForeColor="#000099" Height="78px" Width="192px"/></td>
                </tr>
             </table>
            <br />
            <br />
 <asp:Label ID="Label1" runat="server" BackColor="#3399ff" Font-Bold="true" Font-Italic="true" Font-Size="X-Large"></asp:Label>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
