<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="schoolManagement.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:powderblue;">
    <canvas id="myCanvas">
Your browser does not support the canvas tag.
</canvas>

<script>
const c = document.getElementById("myCanvas");
const ctx = c.getContext("2d");
    ctx.fillStyle = "red";
    ctx.fillRect(20, 20, 75, 50);

    //Turn transparency on
    ctx.globalAlpha = 0.2;
    ctx.fillStyle = "blue"; 
    ctx.fillRect(50, 50, 75, 50); 
    ctx.fillStyle = "green"; 
    ctx.fillRect(80, 80, 75, 50);
</script>
    <form id="form1" runat="server">
    <div>
        <style>
            h1 {text-align: center;}

        </style>
    <table align="center">
        <h1>Welcome</h1>
        <tr>
            <td>username</td>
            <td>
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>password</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Select User Type</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Admin</asp:ListItem>
                    <%--<asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>--%>
                </asp:DropDownList></td>
        </tr>
         <tr>
            <td></td>
            <td>
               <asp:Button runat="server" id="btnLogin" Text="Log In" OnClick="btnLogin_Click" />

            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
