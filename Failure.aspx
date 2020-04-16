<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Failure.aspx.cs" Inherits="Failure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:antiquewhite;
            text-align:center;
        }
        h1{
            font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:'Arial Rounded MT';
           text-align:center;
           color:darkred;
        }
       
         a{
            font-size:larger;
            font-display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-style:oblique;
            color:deeppink;
            }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>User's Login Failed</h1>
            <hr />
            <hr />
            <br />
             <asp:Label ID="Label1" runat="server" Text="Invalid UserID" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Underline="True" Font-Overline="True" ForeColor="Red"></asp:Label> 
            <br /><br /><br />
            | <a href="Default.aspx">LogIn Again</a> |
        </div>
    </form>
</body>
</html>
