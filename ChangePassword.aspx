<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

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
        tr{
            font-size:larger;
            font-display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            color:darkgreen;
        }
        .auto-style1 {
            width: 435px;
            height: 295px;
        }
        a{
            font-display:block;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            color:darkblue;
            font-size:x-large;
        }
    </style>
</head>
<body style="height: 516px">
    <form id="form1" runat="server">
        <div>
            <h1 style="color:dodgerblue">Change Password</h1>
            <hr /><hr />
            <table class="auto-style1">
                <tr>
                    <td>User ID</td> 
                    <td> <asp:TextBox ID="TextBox1" runat="server" BackColor="#cc00cc"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserID cannot be Empty" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>Current Password</td> 
                    <td> <asp:TextBox ID="TextBox2" runat="server" BackColor="#cc00cc"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Current Password cannot be Empty" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>New Password</td> 
                    <td> <asp:TextBox ID="TextBox3" runat="server" BackColor="#cc00cc"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="New Password cannot be Empty" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>Security Question</td> 
                    <td> <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#cc00cc">
                        <asp:ListItem>Which is your Fav Colour?</asp:ListItem>
                        <asp:ListItem>Which is your Fav City?</asp:ListItem>
                        <asp:ListItem>Which is your NickName?</asp:ListItem>
                         </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Security Question cannot be Empty" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>Answer</td> 
                    <td> <asp:TextBox ID="TextBox4" runat="server" BackColor="#cc00cc"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Answer cannot be Empty" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#808080" Font-Bold="true" Height="34px" Width="102px" OnClick="Submit" Font-Size="Large"/></td>
                    </tr>
                <tr>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="true" Font-Size="Large" ForeColor="DarkBlue" DisplayMode="BulletList" Height="77px"/>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Italic="true" Font-Size="X-Large" ForeColor="#800000"></asp:Label>
        </p>
        
    </form>
</body>
</html>
