<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransferAmountC.aspx.cs" Inherits="TransferAmountC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:cornsilk;
        }
         a{
            font-size:large;
            font-display:block;
            color:darkmagenta;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
        h1{
            font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:Algerian;
           text-align:center;
        }
       td{
           font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
           font-size:large;
           color:deeppink;
       }
        .auto-style1 {
            height: 315px;
        }
    </style>
</head>
<body style="height: 551px">
    <form id="form1" runat="server">
        <div>
            <h1 style="color:darkblue">Transfer Amount</h1>
            <hr />
            <table class="auto-style1">
                 <tr>
                    <td>Account Number</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#ccff66"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account Number cannot be empty" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#ccff66">
                            <asp:ListItem>Deposit</asp:ListItem>
                            <asp:ListItem>Withdraw</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Transaction Type cannot be empty" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#ccff66" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Amount cannot be empty" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Amount must be between 100 and 20000" ControlToValidate="TextBox3" Type="Double" MinimumValue="100" MaximumValue="20000" ForeColor="#ff0000">Amount Must be less than or equal to 20000</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Number</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#ccff66" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Transaction Number cannot be empty" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Date</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#ccff66" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Transaction Date cannot be empty" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit" BackColor="#9933ff" Font-Bold="true" Font-Size="Large"/></td>
                </tr>
                <tr>
                    <td> <td> <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" Font-Bold="true" Font-Size="Large" ForeColor="#000099"/></td></td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="#0099cc" Font-Bold="true" Font-Italic="true" Font-Size="X-Large"></asp:Label>
            
        </div>
        <br />
            |  <a href="SearchAccount.aspx">Check Balance</a> |
        </form>
</body>
</html>
