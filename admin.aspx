<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="schoolManagement.admin" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         h1 {text-align: center;}
.button {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #04AA6D;
}

.button1:hover {
  background-color: #04AA6D;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

</style>
</head>
<body style="background-color:LightGray;">
   <form id="form2" runat="server">
    <div>
    <h1 style="background-color:SlateBlue;">School Management System</h1>
    </div>
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
        
        <%--<table align="center">--%>
       <asp:Button  class="button button2" runat="server" id="btnstd" Text="Student Management" OnClick="btnStd_Click" />
            <%--<button  runat="server" id="btnstd" onclick="btnStd_Click">Student Management</button>--%>
       <asp:Button  class="button button2" runat="server" id="btnTeacher" Text="Teacher Management" OnClick="btnTeacher_Click" />
<%--<button class="button button2">Teacher Management</button>--%>
        <%--</table>--%>
    </form>
</body>
</html>
