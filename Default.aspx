<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
           color:darkblue;
        }
        td {
            font-display: block;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
         a{
            font-size:larger;
            font-display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-style:oblique;
            color:deeppink;
            }
        .auto-style5 {
            height: 636px;
        }
       
        .auto-style7 {
            width: 455px;
            height: 325px;
        }
       
    </style>
  
</head>
<body style="height: 408px">
    <form id="form1" runat="server">
        <div class="auto-style5">   
    <h1>User's Login Form</h1>
            <hr /><hr />
            <br />
            <table class="auto-style7" >
                <tr>
                    <td>UserID</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#993399"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserID cannot be Empty" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                        <asp:Button ID="Button2" runat="server" Text="Check" OnClick="Check" OnClientClick="Check" BackColor="#3366ff" ForeColor="Purple" Font-Bold="true" />
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Italic="true" Font-Size="Large" ForeColor="#0000ff"></asp:Label>  
                 </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td class="auto-style2">
                       <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="#993399"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password cannot be Empty" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>       
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="UserID Cannot be your Password" ForeColor="#ff0000" Font-Bold="true" Font-Size="Large" ControlToValidate="TextBox2" ControlToCompare="TextBox1" Type="String" Operator="NotEqual">Invalid Password</asp:CompareValidator>  
                   </td>
                </tr>
                 <tr>
                    <td>User's Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#993399"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="UserName cannot be Empty" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Usertype</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#993399">
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Cashier</asp:ListItem>
                            <asp:ListItem>Customer</asp:ListItem>
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="DropDownList cannot be Empty" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit" Height="28px" Width="111px" BackColor="#ff0066" Font-Bold="true" Font-Size="Large" /></td>
                </tr>
                <tr>
               <td> <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="BulletList" Font-Bold="true" Font-Size="Large" ForeColor="#000099" Width="237px"/></td>
            </tr>
           </table>
            |  <a style="color:darkblue" href="OpenNewAccount.aspx">Not Logged In? Register Here!</a> |
        </div>
    </form>
</body>
</html>
