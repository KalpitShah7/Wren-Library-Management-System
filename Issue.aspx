<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Issue.aspx.cs" Inherits="Issue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
        <li>
            <br />
        </li>
       <li ><a href='Home.aspx'><span>Home</span></a></li>
    <li class='active'><a href='Student.aspx'><span>Student</span></a></li>
     <li><a href='Book.aspx'><span>Book</span></a></li>
	<li><a href='AboutUs.aspx'><span>About Us</span></a></li>
    <li><a href='logout.aspx'><span>Logout</span></a></li>
</asp:Content>
        
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

         <p>
        <br /><br /><br /><br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label7" runat="server" Text="Issue Book " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="30pt" ForeColor="#FF0D50" Font-Underline="True"></asp:Label>
    </p>
    <br /><br /><br />
   

&nbsp; <asp:Label ID="Label5" runat="server" Text="Date Of Issue  :  " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="250px"></asp:TextBox>
         <br />
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="Calendar1_SelectionChanged">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Date Of Return  :  " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="250px"></asp:TextBox>
    <br />
    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="Calendar2_SelectionChanged">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    <br />
    <br />
&nbsp; <asp:Label ID="Label1" runat="server" Text="Name  : " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="250px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
        </asp:DropDownList>
         <br />
         <br />
         <asp:Label ID="Label8" runat="server" Text="Student ID :" Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
    &nbsp;&nbsp; <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="250px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Regno" DataValueField="Regno">
        </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT [Regno] FROM [Student]"></asp:SqlDataSource>
         <br />
         <br />
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT [Name] FROM [BookDetails]"></asp:SqlDataSource>
         &nbsp;<asp:Label ID="Label2" runat="server" Text="Course  : " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="250px"></asp:TextBox>
    <br />
    <br />
&nbsp; <asp:Label ID="Label3" runat="server" Text="Author  : " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="250px"></asp:TextBox>
    &nbsp;&nbsp;
&nbsp;<br />
         <br />
&nbsp;<asp:Label ID="Label4" runat="server" Text="Edition  : " Font-Bold="True" Font-Names="Maiandra GD" Font-Size="18pt" ForeColor="#FF0D50"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="250px"></asp:TextBox>
         <br />
         <br />
       <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
           <AlternatingRowStyle BackColor="White" />
           <EditRowStyle BackColor="#2461BF" />
           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#EFF3FB" />
           <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
           <SortedAscendingCellStyle BackColor="#F5F7FB" />
           <SortedAscendingHeaderStyle BackColor="#6D95E1" />
           <SortedDescendingCellStyle BackColor="#E9EBEF" />
           <SortedDescendingHeaderStyle BackColor="#4870BE" />
       </asp:GridView>
         <br />
         <br />
         &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#FF0D50" BorderColor="White" Font-Names="Maiandra GD" Font-Size="20pt" ForeColor="White" Height="52px" Text="Submit" Width="253px" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#FF0D50" BorderColor="White" Font-Names="Maiandra GD" Font-Size="20pt" ForeColor="White" Height="52px" Text="Get Details" Width="253px" OnClick="Button2_Click" />
    &nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" BackColor="#FF0D50" BorderColor="White" Font-Names="Maiandra GD" Font-Size="20pt" ForeColor="White" Height="52px" Text="Show Issued Books" Width="253px" OnClick="Button3_Click" />
    <br />

</asp:Content>

