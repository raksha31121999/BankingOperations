<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CloseAccount.aspx.cs" Inherits="CloseAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 60px;
        }
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
        td{
            font-display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
         a{
            font-size:larger;
            font-display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-style:oblique;
            color:indigo;
            }
        .auto-style3 {
            height: 465px;
        }
        .auto-style4 {
            width: 246px;
        }
        .auto-style5 {
            height: 307px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <h1 style="color:crimson">Close Your Account</h1>
            <hr /><hr />
            <table class="auto-style5">
                <tr>
                    <td>UserID</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#ff6699"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Userid cannot be empty" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#ff6699"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Cannot be Empty" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>UserType</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#ff6699"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Usertype Cannot be Empty" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Security Question</td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#ff6699">
                            <asp:ListItem>Which is your Fav Colour?</asp:ListItem>
                            <asp:ListItem>Which is your Fav City?</asp:ListItem>
                            <asp:ListItem>Which is your NickName?</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="SecQues Cannot be Empty" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#ff6699"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Answer Cannot be Empty" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Close" BackColor="#ff9933" CssClass="auto-style2" Width="85px" OnClick="Submit" Font-Bold="true" Font-Italic="true" Font-Size="Large" />
                    </td>                    
                </tr>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="true" ForeColor="DarkBlue" DisplayMode="BulletList" />
                    </td>
                </tr>
            </table>
            <br /><br />
            <br />
            | <a href="Default.aspx">Home Page</a> |
        </div>
        <p>
            &nbsp;</p>
    </form>
    </body>
</html>
