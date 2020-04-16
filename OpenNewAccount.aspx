<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OpenNewAccount.aspx.cs" Inherits="OpenNewAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:mistyrose;
        }
        .auto-style1 {
            height: 456px;
        }
        .auto-style2 {
            height: 426px;
            width: 482px;
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
            color:darkblue;
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
<body style="height: 548px">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 >Open a New Account</h1>
            <hr /><hr />
            <table class="auto-style2">
                <tr>
                    <td>Account Number</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#999999"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Account Number cannot be Empty" ControlToValidate="TextBox1" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator></td>
                  </tr>
                <tr>
                    <td>Account Holder Name</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#999999" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be Empty" ControlToValidate="TextBox2" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Account Type</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" BackColor="#999999">
                        <asp:ListItem>Saving</asp:ListItem>
                        <asp:ListItem>Current</asp:ListItem>
                        <asp:ListItem>Fixed</asp:ListItem>
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Account Type cannot be Empty" ControlToValidate="DropDownList1" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td>Balance</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#999999"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Balance cannot be Empty" ControlToValidate="TextBox3" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Open Date</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" BackColor="#999999" TextMode="Date"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Date cannot be Empty" ControlToValidate="TextBox5" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Security Question</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#999999">
                            <asp:ListItem>Which is your Fav Colour?</asp:ListItem>
                            <asp:ListItem>Which is your Fav City?</asp:ListItem>
                            <asp:ListItem>Which is your NickName?</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Security Question cannot be Empty" ControlToValidate="DropDownList2" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" BackColor="#999999"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Answer cannot be Empty" ControlToValidate="TextBox6" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#999999"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Mobile Number cannot be Empty" ControlToValidate="TextBox6" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit" Font-Bold="true" Font-Italic="true" Font-Size="Large" BackColor="#993333"/></td>
                </tr>
                <tr>
               <td> <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" Font-Bold="true" Font-Size="Large" ForeColor="#000099"/></td>
            </tr>

            </table>
            
        </div>
        <br /><br /><br /><br />
         | <a href="Default.aspx">Login Here!</a>  |
    </form>
 </body>
</html>
