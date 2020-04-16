<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       body{
           background-color:lightcoral;
       }  
       h1{
            font-style:italic;
           font-size:xx-large;
           font-display:block;
           font-family:Algerian;
           text-align:center;
        }
         a{
            font-size:x-large;
            font-display:block;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            font-style:oblique;
            color:indigo;
            }
    </style>
</head>
<body style="height: 436px">
    <form id="form1" runat="server">
        <div>
            <h1>User Logged Out Successfully</h1>
            <hr />
            <hr />
            <br /><br />
            | <a href="Default.aspx">Login Here!</a> |
        </div>
    </form>
</body>
</html>
