using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "No of times website visited=" + Application["sitevisitcounter"].ToString();
        Label3.Text = "No of users logon on the site=" + Application["onlineusercounter"].ToString();
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
}
 