<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="schoolManagement.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Management</title>
</head>
<body style="background-color:yellow;">
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
    <style>
            h1 {text-align: center;}

        </style>
    <form id="form1" runat="server">
        <table align="center">
    <div>
    <h1 style="color:whitesmoke;">Teacher List List</h1>
    </div>
             <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
             <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox></td>
        </tr>
             <tr>
            <td>Contact</td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox></td>
        </tr>
             <tr>
            <td>Class</td>
            <td>
                <asp:TextBox ID="txtclass" runat="server"></asp:TextBox></td>
        </tr>
             <tr>
            <td>Division</td>
            <td>
                <asp:TextBox ID="txtdiv" runat="server"></asp:TextBox></td>
        </tr>
            <tr>
            <td></td>
            <td>
               <asp:Button runat="server" id="btnsubmited" Text="Submit" OnClick="btnsubmited_Click" Width="61px" />

            </td>
        </tr>
            </table>
    
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
    </form>
</body>
</html>
