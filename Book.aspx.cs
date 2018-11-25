using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book : System.Web.UI.Page
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
        Response.Redirect("AddBook.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteBook.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateBook.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowBook.aspx");
    }
}