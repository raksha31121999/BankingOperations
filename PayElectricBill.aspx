<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PayElectricBill.aspx.cs" Inherits="PayElectricBill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 295px;
            width: 403px;
        }
        body{
            background-color:lavender;
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
        }
        
    </style>
</head>
<body style="height: 532px">
    <form id="form1" runat="server">
        <div>
            <h1 style="color:darkslategrey">Pay Electric Bill</h1>
            <hr /><hr />
            <table class="auto-style1">
                 <tr>
                     <td>Account Number</td>
                     <td>
                          <asp:TextBox ID="TextBox1" runat="server" BackColor="#669999" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account Number cannot be empty" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                     </td>
                 </tr>
                <tr>
                    <td>Supplier</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" BackColor="#669999">
                        <asp:ListItem>MSEDCL</asp:ListItem>
                        
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Supplier cannot be empty" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                 </tr>
                <tr>
                    <td>Amount</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#669999" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Amount cannot be empty" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#669999">
                        <asp:ListItem>Deposit</asp:ListItem>
                        
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Transaction type cannot be empty" ControlToValidate="DropDownList2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Number</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#669999" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Transaction number cannot be empty" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Transaction Date</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#669999" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Transaction date cannot be empty" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit" BackColor="#0066ff" Font-Bold="true" Font-Italic="true" Font-Size="Large"/></td>
                </tr>
               <tr>
                   <td>     <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="true" Font-Size="Large" ForeColor="DarkBlue" DisplayMode="BulletList" Width="224px" />
</td>
               </tr>
             </table>
           
        </div>
        <p>
            &nbsp;</p>
            <asp:Label ID="Label1" runat="server" ForeColor="DarkBlue" Font-Bold="true" Font-Italic="true" Font-Size="Larger" ></asp:Label>
            
    </form>
</body>
</html>
