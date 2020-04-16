<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransferAmountM.aspx.cs" Inherits="ShowAcc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:linen;
        }
        .auto-style1 {
            height: 431px;
        }
        .auto-style2 {
            height: 269px;
            width: 392px;
        }
         a{
            font-size:larger;
            font-display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-style:oblique;
            color:indigo;
            }
         h1{
            font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:Algerian;
           text-align:center;
        }
        td{
            font-display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;

    </style>
</head>
<body style="height: 502px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 style="color:darkcyan">Transfer Amount</h1>
            <hr />
            <table class="auto-style2">
                 <tr>
                    <td>Account Number</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#00ff00"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account number cannot be empty" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Type</td>
                    <td>
                         <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#00ff00">
                            <asp:ListItem>Deposit</asp:ListItem>
                            <asp:ListItem>Withdraw</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Transaction type cannot be empty" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#00ff00" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Amount cannot be empty" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Number</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#00ff00" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Transaction Number cannot be empty" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Date</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#00ff00" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Transaction date cannot be empty" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit" BackColor="#669999" Font-Bold="true" Font-Italic="true" Font-Size="Large"/></td>
                </tr>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" Font-Bold="true" ForeColor="DarkBlue"/>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label1" runat="server" BackColor="#0099ff" Font-Bold="true" Font-Italic="true" ></asp:Label>
            
        </div>
        <br />
            | <a href="SearchAccount.aspx">Check Balance</a> |
            <br />
            <br />
        
    </form>
</body>
</html>
