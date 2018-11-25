<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateBook.aspx.cs" Inherits="UpdateBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

       <li ><a href='Home.aspx'><span>Home</span></a></li>
    <li><a href='Student.aspx'><span>Student</span></a></li>
    <li class='active'><a href='Book.aspx'><span>Book</span></a></li>
	<li><a href='AboutUs.aspx'><span>About Us</span></a></li>
    <li><a href='logout.aspx'><span>Logout</span></a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        <br /><br /><br /><br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label6" runat="server" Text="Update Book " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="30pt" ForeColor="#FF0D50" Font-Underline="True"></asp:Label>
    </p>
    <br />
    <br />
    <br />
        <asp:Label ID="Label7" runat="server" Text="Book ID :" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="250px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Accno" DataValueField="Accno">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT [Accno] FROM [BookDetails]"></asp:SqlDataSource>
   
   
        &nbsp;
   
   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="15pt" ForeColor="#FF0D50"></asp:RequiredFieldValidator>
   
   
        <br />
    <br />
    <br /><br />
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Author   : " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="250px"></asp:TextBox>
   
   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
   
   
        <asp:Label ID="Label2" runat="server" Text="Name   : " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="250px"></asp:TextBox>
    &nbsp;</p>
    <p>
        &nbsp;</p><br />
    <p>
        <asp:Label ID="Label3" runat="server" Text="Publication   : " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="250px"></asp:TextBox>
    
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    
        <asp:Label ID="Label4" runat="server" Text="Edition   : " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="250px"></asp:TextBox>
    &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#FF0D50" BorderColor="White" Font-Names="Maiandra GD" Font-Size="20pt" ForeColor="White" Height="52px" Text="UPDATE" Width="253px" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#FF0D50" BorderColor="White" Font-Names="Maiandra GD" Font-Size="20pt" ForeColor="White" Height="52px" Text="EDIT" Width="253px" OnClick="Button2_Click" />
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>

