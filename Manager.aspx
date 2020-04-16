<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 123px;
        }
        body{
            background-color:floralwhite;
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
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 style="color:darkblue" ><marquee>Manager's Home Page</h1></marquee>
            <hr /><hr />
            <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="X-Large" ForeColor="#ff6699"></asp:Label>
            <br /><br />
            | <a href="OpenNewAccount.aspx">Open New Account</a>  |
            <br />
            | <a href="CloseAccount.aspx">Close An Account</a>   |
            <br />
            | <a href="TransferAmountM.aspx">Transfer Amount</a> |
            <br />
            | <a href="SearchAccount.aspx">Search An Account</a> | 
            <br />
            | <a  href="TransactionReport.aspx">Daily Transaction Report</a> |
            <br />
            | <a href="CustomerLogins.aspx">Customer Login's(Activate/Deactivate)</a>  |
            <br />
            | <a  href="Logout.aspx">LogOut</a>  |
    </form>
</body>
</html>
