<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" EnableSessionState="True" EnableViewState="True" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
  <title>Wren Library Management System</title>
  
    <style>
        body {
  font-size: 62.5%;
  width: 100%;
  height: 100%;
  position: absolute;
  font-family: Raleway;
  background: url(11.jpg);
  background-size: cover;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
}
body .menu {
  position: absolute;
  width: 100%;
  background: inherit;
}
body .menu .mainmenu {
  background: url(https://newevolutiondesigns.com/images/freebies/city-wallpaper-18.jpg) no-repeat fixed;
  background-size: cover;
  background-position: 50%;
}
form {
  margin: 0 auto;
  position: fixed;
  top: 30%;
  left: 50%;
 
  -webkit-transform: translate3d(-50%, 0, 0);
  transform: translate3d(-50%, 0, 0);
  width: 550px;
  height : 300px;
  padding: 30px;
  overflow: hidden;
  background-color:white;
  border: 1px solid rgba(255, 255, 255, 0.5);

  -moz-border-radius: 12px;
  -webkit-border-radius: 12px;
  border-radius: 12px;
}

}

    </style>
</head>
<body>
  
    <form id="form1" runat="server">
        <br /><br />
        <asp:Label ID="Label1" runat="server" Font-Names="Maiandra GD" Font-Size="35pt" ForeColor="#FF0D50" Text="Username   :  "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCCCC" BorderColor="#FF0D50" BorderStyle="Solid" Font-Names="Maiandra GD" ForeColor="Black" Height="30px" Width="241px"></asp:TextBox>
        <h3>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username is Mandatory" Font-Names="Maiandra GD" Font-Size="15pt" ForeColor="#FF0D50"></asp:RequiredFieldValidator> </h3>
        <br />
        &nbsp;<asp:Label ID="Label2" runat="server" Font-Names="Maiandra GD" Font-Size="35pt" ForeColor="#FF0D50" Text=" Password       : "></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFCCCC" BorderColor="#FF0D50" BorderStyle="Solid" Font-Names="Maiandra GD" ForeColor="Black" Height="30px" Width="241px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <h3>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Mandatory" ControlToValidate="TextBox2" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="15pt" style="color: #FF0D50; text-align: center"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="15pt" ForeColor="#FF0D50"></asp:Label>
        </h3>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#FF0D50" BorderColor="White" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="20pt" ForeColor="White" Height="43px" Text="Login" Width="160px" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

    </form>



  </body>
</html>
