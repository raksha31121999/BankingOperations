<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cashier.aspx.cs" Inherits="Cashier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 123px;
        }
        body {
            background-color:antiquewhite;
            
            text-align:center;
        }
        a{
           font-size:x-large;
            font-display:block;
            color:darkmagenta;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-style:italic;
        }
         h1{
            font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:Algerian;
        }
       
    </style>
</head>
<body style="height: 461px">
    <form id="form1" runat="server">
        <div class="auto-style1" >
            <h1 style="color:crimson" ><marquee>Cashier's Home Page</marquee></h1>
            <hr /><hr />
            <asp:Label ID="Label1" runat="server" ForeColor="#00cc00" Font-Italic="true" Font-Bold="true" Font-Size="XX-Large" ></asp:Label>
            <br /><br />
            <br />
            |     <a href="SearchAccount.aspx">Search Account</a>      |
            <br /><br />
            | <a href="TransferAmountC.aspx">Transfer Amount</a>      |
            <br /><br />
            | <a href="TransactionReport.aspx">Daily Transaction's Report</a> |
            <br /> <br />
            |      <a href="Logout.aspx">LogOut</a> |
             </div>
    </form>
</body>
</html>
