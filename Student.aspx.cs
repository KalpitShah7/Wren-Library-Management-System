using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["USER_ID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = "Welcome " + Session["USER_ID"];
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Issue.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReturnBook.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddStudent.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateStudent.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteStudent.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowStudent.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentAccount.aspx");
    }
}