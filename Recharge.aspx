<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recharge.aspx.cs" Inherits="Recharge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        body{
            background-color:blanchedalmond;
        }
        h1{
           font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:Algerian;
           text-align:center;
        }
        
            .auto-style1 {
                width: 247px;
            }
            .auto-style2 {
                width: 200px;
            }
            td{
                font-display: block;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color:crimson;
            }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Recharge </h1>
            <hr /><hr />
            <table >
                 <tr>
                     <td class="auto-style1" >Operator's Account Number</td>
                     <td class="auto-style2">
                          <asp:TextBox ID="TextBox1" runat="server" BackColor="#cc66ff" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Operator's Account Number cannot be empty" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                     </td>
                 </tr>
                <tr>
                    <td class="auto-style1" >Select Operator</td>
                    <td class="auto-style2"><asp:DropDownList ID="DropDownList1" runat="server" BackColor="#cc66ff">
                        <asp:ListItem>Vodafone</asp:ListItem>
                        <asp:ListItem>Airtel</asp:ListItem>
                        <asp:ListItem>Reliance JIO</asp:ListItem>
                        <asp:ListItem>Dish TV</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Operator cannot be empty" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                 </tr>
                <tr>
                    <td class="auto-style1" >Amount</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#cc66ff" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Amount cannot be empty" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >Mobile Number</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#cc66ff" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Mobile number cannot be empty" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >Transaction Type</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#cc66ff">
                        <asp:ListItem>Deposit</asp:ListItem>
                        
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Transaction type cannot be empty" ControlToValidate="DropDownList2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >Transaction Number</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#cc66ff" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Transaction number cannot be empty" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >Transaction Date</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#cc66ff" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Transaction date cannot be empty" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" >
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit" BackColor="#ccff33" Font-Size="Large" />               
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="true" Font-Size="Large" DisplayMode="BulletList" ForeColor="DarkBlue" Height="92px" Width="208px"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" ForeColor="DarkRed" Font-Bold="true" Font-Italic="true" Font-Size="Larger"></asp:Label> 
    </form>
</body>
</html>
