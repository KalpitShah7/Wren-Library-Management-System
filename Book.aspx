<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <li><a href='Home.aspx'><span>Home</span></a></li>
    <li><a href='Student.aspx'><span>Student</span></a></li>
    <li  class='active'><a href='Book.aspx'><span>Book</span></a></li>
	<li><a href='AboutUs.aspx'><span>About Us</span></a></li>
    <li><a href='logout.aspx'><span>Logout</span></a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="15pt" ForeColor="#FF0D50" Text="Label"></asp:Label>
    <br /><br />
      <center> <img src="h.jpg"  alt="" /></center>
    <br />
    <br />
    <br />

    <asp:Button ID="Button1" runat="server" BackColor="#FF0D50" BorderColor="White" BorderWidth="2px" Font-Bold="True" Font-Names="Maiandra GD"  Font-Size="XX-Large" ForeColor="White" Height="56px" Text="Add Book" Width="246px" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#FF0D50" BorderColor="White" BorderWidth="2px" Font-Bold="True" Font-Names="Maiandra GD"  Font-Size="XX-Large" ForeColor="White" Height="56px" Text="Delete Book" Width="246px" OnClick="Button2_Click" />
    &nbsp; &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" BackColor="#FF0D50" BorderColor="White" BorderWidth="2px" Font-Bold="True" Font-Names="Maiandra GD"  Font-Size="XX-Large" ForeColor="White" Height="56px" Text="Update Book" Width="246px" OnClick="Button3_Click" />
    &nbsp;&nbsp;&nbsp;

    <asp:Button ID="Button4" runat="server" BackColor="#FF0D50" BorderColor="White" BorderWidth="2px" Font-Bold="True" Font-Names="Maiandra GD"  Font-Size="XX-Large" ForeColor="White" Height="56px" Text="Show Book" Width="246px" OnClick="Button4_Click" />
    <br /><br />

</asp:Content>

