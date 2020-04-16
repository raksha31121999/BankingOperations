<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerLogins.aspx.cs" Inherits="CustomerLogins" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         body {
            background-color:blanchedalmond;
        }
        h1{
            font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:Algerian;
           text-align:center;
        }
        
        .auto-style2 {
            width: 298px;
        }
        .auto-style3 {
            height: 85px;
        }
       
        .auto-style4 {
            height: 494px;
        }
        .auto-style5 {
            height: 339px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style4">
        <div style="text-align:center">
            <h1 style="color:darkorchid">Customer Login's</h1>
            <hr />
             <table class="auto-style5">
                  <tr>
                    <td>User ID</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#6699ff"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Empty UserID Not Allowed" ControlToValidate="TextBox2" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator></td>
                </tr>
              
                  <tr>
                    <td>User's Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#6699ff"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Empty Name Not Allowed" ControlToValidate="TextBox2" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator></td>
                </tr>
                  <tr>
                    <td>User's Status</td>
                    <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#6699ff">
                            <asp:ListItem>Active</asp:ListItem>
                            <asp:ListItem>Deactive</asp:ListItem>
                        </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Empty Status Not Allowed" ControlToValidate="DropDownList2" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator></td>
                </tr>

                  <tr>
                    <td>Security Question</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#6699ff">
                            <asp:ListItem>Which is your Fav Colour?</asp:ListItem>
                            <asp:ListItem>Which is your Fav City?</asp:ListItem>
                            <asp:ListItem>What is your NickName?</asp:ListItem>
                        </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Empty Question Not Allowed" ControlToValidate="DropDownList1" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator>
                    </td>
                  </tr>
                 
                  <tr>
                    <td>Answer</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" BackColor="#6699ff"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Empty Answer Not Allowed" ControlToValidate="TextBox4" BackColor="WhiteSmoke">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#cc6699" Height="38px" OnClick="Submit" Width="94px" /></td>
                </tr>
                 <tr>
                     <td>
                         <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="true" ForeColor="DarkBlue" DisplayMode="BulletList"/>
                     </td>
                 </tr>
                </table>
          </div>
            <asp:Label ID="Label1" runat="server" BackColor="Yellow" Font-Bold="true" Font-Size="Larger" Font-Italic="true"></asp:Label>

  <br /><br />

        </form>
</body>
</html>
