<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:cornsilk;
            text-align:center;
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
           color:crimson;
        }
      
        .auto-style1 {
            height: 442px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 ><marquee>Customer's Home Page</marquee></h1>
            <hr /><hr />
            <asp:Label ID="Label1" runat="server"  Font-Bold="true" Font-Italic="true" Font-Size="X-Large" ForeColor="#0000ff"></asp:Label>
            <br />
            <br />
            <br />
            |  <a href="AccountStatement.aspx">Account Statement</a> |
            <br /><br />
            |  <a href="TransferAmountCus.aspx">Transfer Amount</a>  |
            <br /><br />
            |  <a href="PayElectricBill.aspx">Pay Electric Bill</a>  |
            <br /><br />
            |  <a href="Recharge.aspx">Recharge</a>  |
            <br /><br />
            |  <a href="ChangePassword.aspx">Change Password</a>  |
            <br /><br />
            | <a href="Logout.aspx">LogOut</a> |
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
