<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransferAmountCus.aspx.cs" Inherits="TransferAmountCus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:mistyrose;
        }
         h1{
            font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:Algerian;
           text-align:center;
        }
        .auto-style1 {
            height: 316px;
        }
        td{
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-size:large;
            color:purple;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 style="color:darkred">Transfer Amount</h1>
            <hr /><hr />
            <br />
            <table class="auto-style1">
                 <tr>
                    <td>Account Number</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#ffff00"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account Number cannot be empty" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Type</td>
                    <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#ffff00">
                            <asp:ListItem>Deposit</asp:ListItem>
                            <asp:ListItem>Withdraw</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Transaction Type cannot be empty" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#ffff00" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Amount cannot be empty" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Amount must be between 100 and 5000" ControlToValidate="TextBox3" Type="Double" MinimumValue="100" MaximumValue="5000" ForeColor="Red" Font-Bold="true">Amount Must be less than 5000</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Number</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#ffff00" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Transaction Number cannot be empty" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Date</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#ffff00" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Transaction Date cannot be empty" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit" BackColor="DeepPink" Height="31px" Width="102px" Font-Size="Large" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="true" ForeColor="DarkBlue" DisplayMode="BulletList" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="DarkBlue" Font-Bold="true" Font-Size="X-Large" Font-Italic="true" ></asp:Label>
            
        </div>
    </form>
</body>
</html>
